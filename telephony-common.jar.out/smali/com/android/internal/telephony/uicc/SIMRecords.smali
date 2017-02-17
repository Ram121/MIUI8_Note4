.class public Lcom/android/internal/telephony/uicc/SIMRecords;
.super Lcom/android/internal/telephony/uicc/IccRecords;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/SIMRecords$2;,
        Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;,
        Lcom/android/internal/telephony/uicc/SIMRecords$EfUsimLiLoaded;,
        Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;,
        Lcom/android/internal/telephony/uicc/SIMRecords$EfOcsglLoaded;,
        Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;,
        Lcom/android/internal/telephony/uicc/SIMRecords$O2Paystate;
    }
.end annotation


# static fields
.field private static final ACTION_EF_LOCK_UPDATED:Ljava/lang/String; = "android.intent.action.ACTION_EF_LOCK_UPDATED"

.field private static final BITMASK_EF_LOCK:I = 0x1

.field private static final BYTE_EF_LOCK_REMOTE:I = 0x1

.field private static final BYTE_EF_LOCK_REMOTE_OFFSET:I = 0x2

.field private static final BYTE_EF_LOCK_USER:I = 0x2

.field private static final BYTE_EF_LOCK_USER_OFFSET:I = 0x4

.field static final CFF_DATA_MASK:I = 0xf0

.field static final CFF_DATA_RESET:I = 0xf

.field static final CFF_DATA_SHIFT:I = 0x4

.field static final CFF_LINE1_MASK:I = 0xf

.field static final CFF_LINE1_RESET:I = 0xf0

.field static final CFF_UNCONDITIONAL_ACTIVE:I = 0xa

.field static final CFF_UNCONDITIONAL_DEACTIVE:I = 0x5

.field private static final CFIS_ADN_CAPABILITY_ID_OFFSET:I = 0xe

.field private static final CFIS_ADN_EXTENSION_ID_OFFSET:I = 0xf

.field private static final CFIS_BCD_NUMBER_LENGTH_OFFSET:I = 0x2

.field private static final CFIS_TON_NPI_OFFSET:I = 0x3

.field private static final CPHS_SST_MBN_ENABLED:I = 0x30

.field private static final CPHS_SST_MBN_MASK:I = 0x30

.field private static final CRASH_RIL:Z = false

.field protected static final DBG:Z = true

.field private static final EVENT_APP_LOCKED:I = 0x23

.field private static final EVENT_APP_NETWORK_LOCKED:I = 0x25

.field private static final EVENT_GET_ACC_DONE:I = 0x20c

.field protected static final EVENT_GET_AD_DONE:I = 0x9

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CFF_DONE:I = 0x18

.field private static final EVENT_GET_CFIS_DONE:I = 0x20

.field private static final EVENT_GET_CPHS_MAILBOX_DONE:I = 0xb

.field private static final EVENT_GET_CSP_CPHS_DONE:I = 0x21

.field private static final EVENT_GET_EF_FPLMN_DONE:I = 0x209

.field private static final EVENT_GET_EPSLOCI_DONE:I = 0x20b

.field private static final EVENT_GET_GID1_DONE:I = 0x22

.field private static final EVENT_GET_GID2_DONE:I = 0x24

.field private static final EVENT_GET_ICCID_DONE:I = 0x4

.field private static final EVENT_GET_ICCID_WHEN_LOCKED_DONE:I = 0x1f8

.field private static final EVENT_GET_IMODER_DONE:I = 0x205

.field private static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_IMSI_M_DONE:I = 0x1fa

.field private static final EVENT_GET_IMSI_RETRY:I = 0x320

.field private static final EVENT_GET_INFO_CPHS_DONE:I = 0x1a

.field private static final EVENT_GET_IRM_DONE:I = 0x1fb

.field private static final EVENT_GET_MASTERIMSI_DONE:I = 0x1fc

.field private static final EVENT_GET_MBDN_DONE:I = 0x6

.field private static final EVENT_GET_MBI_DONE:I = 0x5

.field protected static final EVENT_GET_MSISDN_DONE:I = 0xa

.field private static final EVENT_GET_MWIS_DONE:I = 0x7

.field private static final EVENT_GET_OPL_DONE:I = 0x1f6

.field private static final EVENT_GET_PERSO_DONE:I = 0x1f9

.field private static final EVENT_GET_PNN_DONE:I = 0xf

.field private static final EVENT_GET_PSISMSC_DONE:I = 0x207

.field private static final EVENT_GET_ROAMING_DONE:I = 0x200

.field private static final EVENT_GET_SMSP_DONE:I = 0x20a

.field private static final EVENT_GET_SMSS_DONE:I = 0x208

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SPDI_DONE:I = 0xd

.field private static final EVENT_GET_SPN_CPHS_DONE:I = 0x1f4

.field private static final EVENT_GET_SPN_DONE:I = 0xc

.field private static final EVENT_GET_SPN_SHORT_CPHS_DONE:I = 0x1f5

.field private static final EVENT_GET_SPONIMSI1_DONE:I = 0x1fd

.field private static final EVENT_GET_SPONIMSI2_DONE:I = 0x1fe

.field private static final EVENT_GET_SPONIMSI3_DONE:I = 0x1ff

.field protected static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_GET_UICCVER_DONE:I = 0x201

.field private static final EVENT_GET_UICC_DONE:I = 0x204

.field private static final EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE:I = 0x8

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_PB_INIT_COMPLETE:I = 0x202

.field private static final EVENT_REFRESH_EF_LOCK_DONE:I = 0x206

.field private static final EVENT_SET_CPHS_MAILBOX_DONE:I = 0x19

.field private static final EVENT_SET_CSP_DONE:I = 0x1f7

.field private static final EVENT_SET_MBDN_DONE:I = 0x14

.field private static final EVENT_SIM_PB_READY:I = 0x203

.field private static final EVENT_SIM_REFRESH:I = 0x1f

.field private static final EVENT_SMS_ON_SIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field private static final ICCID2_PATH:Ljava/lang/String; = "/data/misc/radio/cicd2"

.field private static final ICCID_PATH:Ljava/lang/String; = "/data/misc/radio/cicd"

.field public static INIT_AUTOPRECONFIG:I = 0x0

.field public static KEEP_CURRENT_CONFIG:I = 0x0

.field static final KEY_GID1:Ljava/lang/String; = "key_gid1"

.field public static final KEY_ICCID:Ljava/lang/String; = "key_iccid"

.field static final KEY_PAYSTATE:Ljava/lang/String; = "key_paystate"

.field protected static final LOG_TAG:Ljava/lang/String; = "SIMRecords"

.field private static final MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

.field private static final PATH_IMODER:Ljava/lang/String; = "/data/misc/radio/imoder"

.field private static final PATH_UICC:Ljava/lang/String; = "/data/misc/radio/uicc"

.field private static PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String; = null

.field static final PROPERTY_SIM_ROAMING:Ljava/lang/String; = "gsm.sim.roaming"

.field static final PROPERTY_UICC_VERSION:Ljava/lang/String; = "gsm.sim.version"

.field private static final RESP_EF_LOCK_REFRESHED:I = 0x3

.field static final SHIP_BUILD:Z

.field static final TAG_FULL_NETWORK_NAME:I = 0x43

.field static final TAG_SHORT_NETWORK_NAME:I = 0x45

.field static final TAG_SPDI:I = 0xa3

.field static final TAG_SPDI_PLMN_LIST:I = 0x80

.field private static final WR_IMODER:I = 0x2

.field private static final WR_UICC:I = 0x1

.field private static mConfigNetworkTypeCapability:Ljava/lang/String; = null

.field public static final propNameChangedICC:Ljava/lang/String; = "ril.isIccChanged"


# instance fields
.field private final ACTION_SIM_ICCID_CHANGED:Ljava/lang/String;

.field private final ACTION_SIM_REFRESH_INIT:Ljava/lang/String;

.field private final DEPRECATED_ACTION_SIM_ICCID_CHANGED:Ljava/lang/String;

.field IsOnsExist:Z

.field NV_cfflag_video:Z

.field NV_cfflag_voice:Z

.field OPL_INDEX:[I

.field OPL_LAC1:[I

.field OPL_LAC2:[I

.field OPL_MCCMNC:[Ljava/lang/String;

.field OPL_count:I

.field PNN_Value:[Ljava/lang/String;

.field private countryISO:Ljava/lang/String;

.field efIMODER:[B

.field efUICC:[B

.field isAvailableCFIS:Z

.field isAvailableCHV1:Z

.field public isAvailableFDN:Z

.field isAvailableMBDN:Z

.field isAvailableMSISDN:Z

.field isAvailableMWIS:Z

.field isAvailableO2PERSO:Z

.field public isAvailableOCSGL:Z

.field public isAvailableOCSGLList:Z

.field public isAvailableSMS:Z

.field public isAvailableSMSP:Z

.field isAvailableSPN:Z

.field isEnabledCSP:Z

.field isRefreshedBySTK:Z

.field mAutoPreconfigService:Landroid/os/Messenger;

.field private mAutoPreconfigServiceConnection:Landroid/content/ServiceConnection;

.field private mCallForwardingStatus:I

.field private mCphsInfo:[B

.field mCspPlmnEnabled:Z

.field private mEFLockRemote:I

.field private mEFLockUser:I

.field mEfCPHS_MWI:[B

.field mEfCff:[B

.field mEfCfis:[B

.field mEfLi:[B

.field mEfMWIS:[B

.field mEfPl:[B

.field private mEonsEnabled:Z

.field mEonsName:Ljava/lang/String;

.field private mEpsloci:[B

.field private mGbaRecordsRequested:Z

.field mHasIsim:Z

.field mImsiRequest:Z

.field mIncreaseTPMR:Z

.field private mIsAPBound:Z

.field mIsEnabledOPL:Z

.field private mIsNeedToReadIccIdOnNwLocked:Z

.field mIsOPLExist:Z

.field private mIsOneSkuSupport:Z

.field private mIsPrevSimStateNwLocked:Z

.field mOldICCID:Ljava/lang/String;

.field mPnnHomeName:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryCountGetImsi:I

.field private mSktImsiM:Ljava/lang/String;

.field private mSktIrm:Ljava/lang/String;

.field mSpdiNetworks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSpnDisplayCondition:I

.field mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

.field private mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

.field private mSponImsi:[Ljava/lang/String;

.field mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

.field private mValidityPeriod:I

.field mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

.field private perso:[B

.field private selectedNwkName:Ljava/lang/String;

.field spnDisplayRuleOverride:I

.field spnOverride:Ljava/lang/String;

.field spn_cphs:Ljava/lang/String;

.field videocallForwardingEnabled:I

.field voicecallForwardingEnabled:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 119
    sput v3, Lcom/android/internal/telephony/uicc/SIMRecords;->INIT_AUTOPRECONFIG:I

    .line 120
    sput v4, Lcom/android/internal/telephony/uicc/SIMRecords;->KEEP_CURRENT_CONFIG:I

    .line 128
    const-string v0, "true"

    const-string v1, "ro.product_ship"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/uicc/SIMRecords;->SHIP_BUILD:Z

    .line 436
    const/16 v0, 0x83

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "302370"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "302720"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "310260"

    aput-object v2, v0, v1

    const-string v1, "405025"

    aput-object v1, v0, v3

    const-string v1, "405026"

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const-string v2, "405027"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "405028"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "405029"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "405030"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "405031"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "405032"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "405033"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "405034"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "405035"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "405036"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "405037"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "405038"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "405039"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "405040"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "405041"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "405042"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "405043"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "405044"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "405045"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "405046"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "405047"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "405750"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "405751"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "405752"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "405753"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "405754"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "405755"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "405756"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "405799"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "405800"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "405801"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "405802"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "405803"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "405804"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "405805"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "405806"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "405807"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "405808"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "405809"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "405810"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "405811"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "405812"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "405813"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "405814"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "405815"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "405816"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "405817"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "405818"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "405819"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "405820"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "405821"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "405822"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "405823"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "405824"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "405825"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "405826"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "405827"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "405828"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "405829"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "405830"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "405831"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "405832"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "405833"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "405834"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "405835"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "405836"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "405837"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "405838"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "405839"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "405840"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "405841"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "405842"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "405843"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "405844"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "405845"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "405846"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "405847"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "405848"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "405849"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "405850"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "405851"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "405852"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "405853"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "405875"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "405876"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "405877"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "405878"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "405879"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "405880"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "405881"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "405882"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "405883"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "405884"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "405885"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "405886"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "405908"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "405909"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "405910"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "405911"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "405912"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "405913"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "405914"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "405915"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "405916"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "405917"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "405918"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "405919"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "405920"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "405921"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "405922"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "405923"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "405924"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "405925"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "405926"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "405927"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "405928"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "405929"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "405930"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "405931"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "405932"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "502142"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "502143"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "502145"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "502146"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "502147"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "502148"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .line 456
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mConfigNetworkTypeCapability:Ljava/lang/String;

    .line 466
    const-string v0, "ro.cdma.home.operator.numeric"

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 9
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 499
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 118
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAutoPreconfigService:Landroid/os/Messenger;

    .line 131
    iput v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEFLockRemote:I

    .line 132
    iput v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEFLockUser:I

    .line 142
    const-string v5, "persist.eons.enabled"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEonsEnabled:Z

    .line 156
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIncreaseTPMR:Z

    .line 160
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_voice:Z

    .line 161
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_video:Z

    .line 162
    iput v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    .line 163
    iput v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    .line 164
    iput v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mValidityPeriod:I

    .line 171
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsOPLExist:Z

    .line 174
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->IsOnsExist:Z

    .line 176
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEonsName:Ljava/lang/String;

    .line 181
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGbaRecordsRequested:Z

    .line 187
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsiRequest:Z

    .line 188
    new-instance v5, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;

    invoke-direct {v5, p0, v8}, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$1;)V

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 192
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsPrevSimStateNwLocked:Z

    .line 212
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->perso:[B

    .line 213
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableO2PERSO:Z

    .line 229
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    .line 231
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEpsloci:[B

    .line 233
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    .line 235
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    .line 236
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    .line 237
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    .line 238
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    .line 240
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfLi:[B

    .line 241
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPl:[B

    .line 253
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->efUICC:[B

    .line 254
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->efIMODER:[B

    .line 259
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    .line 261
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnHomeName:Ljava/lang/String;

    .line 283
    const-string v5, "com.samsung.action.SIM_ICCID_CHANGED"

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->ACTION_SIM_ICCID_CHANGED:Ljava/lang/String;

    .line 284
    const-string v5, "com.samsung.action.SIM_REFRESH_INIT"

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->ACTION_SIM_REFRESH_INIT:Ljava/lang/String;

    .line 285
    const-string v5, "com.android.action.SIM_ICCID_CHANGED"

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->DEPRECATED_ACTION_SIM_ICCID_CHANGED:Ljava/lang/String;

    .line 287
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOldICCID:Ljava/lang/String;

    .line 289
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMS:Z

    .line 292
    iput-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->spnOverride:Ljava/lang/String;

    .line 293
    iput v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->spnDisplayRuleOverride:I

    .line 295
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsEnabledOPL:Z

    .line 296
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableFDN:Z

    .line 297
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableCHV1:Z

    .line 298
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSPN:Z

    .line 299
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMSISDN:Z

    .line 300
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMBDN:Z

    .line 301
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isEnabledCSP:Z

    .line 302
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMWIS:Z

    .line 303
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableCFIS:Z

    .line 304
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMSP:Z

    .line 305
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isRefreshedBySTK:Z

    .line 307
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableOCSGL:Z

    .line 308
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableOCSGLList:Z

    .line 312
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mHasIsim:Z

    .line 475
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsAPBound:Z

    .line 479
    iput v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRetryCountGetImsi:I

    .line 489
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsNeedToReadIccIdOnNwLocked:Z

    .line 493
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsOneSkuSupport:Z

    .line 4455
    new-instance v5, Lcom/android/internal/telephony/uicc/SIMRecords$1;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/uicc/SIMRecords$1;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAutoPreconfigServiceConnection:Landroid/content/ServiceConnection;

    .line 501
    new-instance v5, Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 503
    new-instance v5, Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-direct {v5}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    .line 504
    new-instance v5, Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-direct {v5}, Lcom/android/internal/telephony/uicc/SpnOverride;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    .line 506
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    .line 509
    iput v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 511
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x15

    invoke-interface {v5, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 512
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x1f

    invoke-interface {v5, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 514
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x202

    invoke-interface {v5, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnPbInitComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 517
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x203

    invoke-interface {v5, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnSimPbReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 521
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 522
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-le v5, v3, :cond_7

    .line 523
    const-string v5, "CTC"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 524
    const-string v5, "com.samsung.intent.action.setCardDataInit"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 525
    const-string v5, "com.samsung.intent.action.slot1GetGsmImsi"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 543
    :cond_0
    :goto_0
    const-string v5, "android.intent.action.CSC_UPDATE_NETWORK_DONE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 544
    const-string v5, "android.intent.action.CSC_UPDATE_VOICEMAIL_DONE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 546
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 550
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->resetRecords()V

    .line 551
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v5, p0, v3, v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 552
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v6, 0x23

    invoke-virtual {v5, p0, v6, v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 553
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIMRecords X ctor this="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 555
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_MultiIMSI"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_DisableRoamingMultiIMSI"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 559
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSponImsi:[Ljava/lang/String;

    .line 564
    :cond_1
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v2

    .line 566
    .local v2, "phoneRestrictionPolicy":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    if-eqz v2, :cond_2

    .line 567
    invoke-virtual {v2, v8}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsNeedToReadIccIdOnNwLocked:Z

    .line 570
    :cond_2
    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsNeedToReadIccIdOnNwLocked:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_LoadIccIdOnLock"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    or-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsNeedToReadIccIdOnNwLocked:Z

    .line 573
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_ConfigOneSkuVariant"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, "oneSkuVariant":Ljava/lang/String;
    if-eqz v1, :cond_9

    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsOneSkuSupport:Z

    .line 576
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsNeedToReadIccIdOnNwLocked:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsOneSkuSupport:Z

    if-eqz v3, :cond_4

    .line 577
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v4, 0x25

    invoke-virtual {v3, p0, v4, v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 582
    :cond_4
    return-void

    .line 531
    .end local v1    # "oneSkuVariant":Ljava/lang/String;
    .end local v2    # "phoneRestrictionPolicy":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 534
    :cond_6
    const-string v5, "com.samsung.intent.action.setCardDataInit"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 536
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 539
    :cond_8
    const-string v5, "com.samsung.intent.action.setCardDataInit"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v1    # "oneSkuVariant":Ljava/lang/String;
    .restart local v2    # "phoneRestrictionPolicy":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    :cond_9
    move v3, v4

    .line 574
    goto :goto_1
.end method

.method private IsNANetwork(Ljava/lang/String;)Z
    .locals 3
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 5270
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5271
    .local v0, "networkMcc":Ljava/lang/String;
    const-string v1, "31[0-6]|302"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/SIMRecords;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/SIMRecords;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceMailByNetworkName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/SIMRecords;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/SIMRecords;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->selectedNwkName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/uicc/SIMRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/SIMRecords;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->selectedNwkName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/uicc/SIMRecords;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/SIMRecords;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsAPBound:Z

    return p1
.end method

.method private checkCFISavailable([B)V
    .locals 6
    .param p1, "table"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1912
    const-string v1, "Enter checkCFIS"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1915
    :try_start_0
    const-string v1, "1"

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1917
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSSTActive(CFIS) : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v5, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->CFIS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1919
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSSTAvaiable(CFIS) : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v5, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->CFIS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1921
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->CFIS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->CFIS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableCFIS:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1940
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailableCFIS is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableCFIS:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1941
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v3, "KOR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1942
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableCFIS:Z

    if-eqz v1, :cond_5

    .line 1945
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x6fcb

    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1946
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1952
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v3

    .line 1921
    goto :goto_0

    .line 1924
    :cond_3
    :try_start_1
    const-string v1, "2"

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1926
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1927
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->CFI_STATUS:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableCFIS:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1934
    :catch_0
    move-exception v0

    .line 1935
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "ArrayIndexOutOfBoundsException"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1936
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableCFIS:Z

    goto :goto_2

    .line 1931
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    :try_start_2
    const-string v1, "ICCType is Unknown"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1948
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6f13

    const/16 v3, 0x18

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1949
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto :goto_2
.end method

.method private checkCHV1available([B)V
    .locals 5
    .param p1, "table"    # [B

    .prologue
    const/4 v2, 0x1

    .line 1585
    const-string v1, "Enter  checkCHV1available"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1588
    :try_start_0
    const-string v1, "1"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1592
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTActive(CHV1) : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->CHV1_DISABLE:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTAvaiable(CHV1) : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->CHV1_DISABLE:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1595
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->CHV1_DISABLE:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->CHV1_DISABLE:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableCHV1:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1614
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableCHV1 is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableCHV1:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1616
    :goto_2
    return-void

    .line 1595
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1599
    :cond_2
    :try_start_1
    const-string v1, "2"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1601
    const-string v1, "3G - CHV1 available"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1602
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableCHV1:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1608
    :catch_0
    move-exception v0

    .line 1609
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "Exception"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1610
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableCHV1:Z

    goto :goto_2

    .line 1605
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    :try_start_2
    const-string v1, "ICCType is Unknown"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method private checkEONSavailable([B)V
    .locals 6
    .param p1, "table"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1452
    const-string v3, "Enter checkEONS"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1455
    :try_start_0
    const-string v3, "1"

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1460
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v3, :cond_0

    .line 1461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSSTActive(PNN) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v5, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->PNN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSSTAvaiable(PNN) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v5, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->PNN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1463
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->PNN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->PNN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsEnabledPNN:Z

    .line 1466
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSSTActive(OPL) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v5, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->OPL:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSSTAvaiable(OPL) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v5, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->OPL:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1468
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->OPL:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->OPL:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsEnabledOPL:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1489
    :cond_0
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsEnabledPNN is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsEnabledPNN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsEnabledOPL is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsEnabledOPL:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1491
    :goto_3
    return-void

    :cond_1
    move v3, v2

    .line 1463
    goto/16 :goto_0

    :cond_2
    move v1, v2

    .line 1468
    goto :goto_1

    .line 1471
    :cond_3
    :try_start_1
    const-string v1, "2"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1473
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1474
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->PLMN_NETWORK_NAME:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsEnabledPNN:Z

    .line 1475
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->OPERATOR_PLMN_LIST:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsEnabledOPL:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1482
    :catch_0
    move-exception v0

    .line 1483
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "Exception"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1484
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsEnabledPNN:Z

    .line 1485
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsEnabledOPL:Z

    goto :goto_3

    .line 1479
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    :try_start_2
    const-string v1, "ICCType is Unknown"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method private checkFDNavailable([B)V
    .locals 5
    .param p1, "table"    # [B

    .prologue
    const/4 v2, 0x0

    .line 1494
    const-string v1, "Enter  checkFDNavailable"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1497
    :try_start_0
    const-string v1, "1"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1499
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTActive(FDN) : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->FDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTAvaiable(FDN) : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->FDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1502
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->FDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->FDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableFDN:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1521
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableFDN is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableFDN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1522
    :goto_2
    return-void

    :cond_1
    move v1, v2

    .line 1502
    goto :goto_0

    .line 1505
    :cond_2
    :try_start_1
    const-string v1, "2"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1507
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1508
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->FDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableFDN:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1515
    :catch_0
    move-exception v0

    .line 1516
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "Exception"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1517
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableFDN:Z

    goto :goto_2

    .line 1512
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    :try_start_2
    const-string v1, "ICCType is Unknown"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method private checkMBDNavailable([B)V
    .locals 6
    .param p1, "table"    # [B

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1822
    const-string v1, "Enter  checkMBDNavailable"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1825
    :try_start_0
    const-string v1, "1"

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1827
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSSTActive(MBDN) : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v5, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->MAILBOX_DIALLING_NUMBERS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1829
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSSTAvaiable(MBDN) : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v5, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->MAILBOX_DIALLING_NUMBERS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1831
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->MAILBOX_DIALLING_NUMBERS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->MAILBOX_DIALLING_NUMBERS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMBDN:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1849
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailableMBDN is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMBDN:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1851
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMBDN:Z

    if-ne v1, v2, :cond_4

    .line 1852
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1853
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x6fc9

    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1860
    :goto_2
    return-void

    :cond_1
    move v1, v3

    .line 1831
    goto :goto_0

    .line 1834
    :cond_2
    :try_start_1
    const-string v1, "2"

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1836
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1837
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->MBDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMBDN:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1844
    :catch_0
    move-exception v0

    .line 1845
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "Exception"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1846
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMBDN:Z

    goto :goto_1

    .line 1841
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    :try_start_2
    const-string v1, "ICCType is Unknown"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1855
    :cond_4
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1856
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v3, 0x6f17

    const/16 v4, 0x6f4a

    const/16 v5, 0xb

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v2, v5}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_2
.end method

.method private checkMSISDNavailable([B)V
    .locals 7
    .param p1, "table"    # [B

    .prologue
    const/16 v6, 0x6f40

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1653
    const-string v1, "Enter  checkMSISDNavailable"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1656
    :try_start_0
    const-string v1, "1"

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1660
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSSTActive(MSISDN) : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v5, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->MSISDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSSTAvaiable(MSISDN) : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v5, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->MSISDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1664
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->MSISDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->MSISDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMSISDN:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1683
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMSISDN:Z

    if-ne v1, v2, :cond_1

    .line 1684
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->getExtFromEf(I)I

    move-result v3

    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v6, v3, v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    .line 1686
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1689
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableMSISDN is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMSISDN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1691
    :goto_2
    return-void

    :cond_2
    move v1, v3

    .line 1664
    goto :goto_0

    .line 1667
    :cond_3
    :try_start_1
    const-string v1, "2"

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1669
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1670
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->MSISDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMSISDN:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1677
    :catch_0
    move-exception v0

    .line 1678
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "Exception"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1679
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMSISDN:Z

    goto :goto_2

    .line 1674
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    :try_start_2
    const-string v1, "ICCType is Unknown"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method private checkMWISavailable([B)V
    .locals 6
    .param p1, "table"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1863
    const-string v1, "Enter checkMWIS"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1866
    :try_start_0
    const-string v1, "1"

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1868
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1869
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSSTActive(MWIS) : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v5, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->MWIS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1870
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSSTAvaiable(MWIS) : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v5, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->MWIS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1872
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->MWIS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->MWIS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMWIS:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1891
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailableMWIS is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMWIS:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1892
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v3, "KOR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1893
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMWIS:Z

    if-eqz v1, :cond_5

    .line 1895
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x6fca

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1896
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1909
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v3

    .line 1872
    goto :goto_0

    .line 1875
    :cond_3
    :try_start_1
    const-string v1, "2"

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1877
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1878
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->MWI_STATUS:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMWIS:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1885
    :catch_0
    move-exception v0

    .line 1886
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "ArrayIndexOutOfBoundsException"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1887
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMWIS:Z

    goto :goto_2

    .line 1882
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    :try_start_2
    const-string v1, "ICCType is Unknown"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1902
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6f11

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1905
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto :goto_2
.end method

.method private checkOCSGLAvailable([B)V
    .locals 8
    .param p1, "table"    # [B

    .prologue
    .line 1558
    const/4 v1, 0x0

    .line 1559
    .local v1, "isAvailable86":Z
    const/4 v2, 0x0

    .line 1561
    .local v2, "isAvailable92":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v3, :cond_2

    .line 1562
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->OPERATOR_CSG_LISTS_AND_INDICATIONS:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableOCSGL:Z

    .line 1564
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->ALLOWED_CSG_LISTS_AND_INDICATIONS:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v1

    .line 1566
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->CSG_DISPLAY_CONTROL:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1576
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAvailableOCSGL is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableOCSGL:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1578
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableOCSGL:Z

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    .line 1579
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v4, 0x4f84

    const/16 v5, 0x64

    new-instance v6, Lcom/android/internal/telephony/uicc/SIMRecords$EfOcsglLoaded;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords$EfOcsglLoaded;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$1;)V

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1580
    iget v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1582
    :cond_1
    return-void

    .line 1569
    :cond_2
    :try_start_1
    const-string v3, "UST is Null for checking OCSGL"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1571
    :catch_0
    move-exception v0

    .line 1572
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "Exception"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1573
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableOCSGL:Z

    goto :goto_0
.end method

.method private checkPSISMSCavailable([B)V
    .locals 4
    .param p1, "table"    # [B

    .prologue
    const/4 v2, 0x0

    .line 1798
    const-string v1, "Enter  checkPSISMSCavailable"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1801
    :try_start_0
    const-string v1, "2"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1803
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1804
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->SM_SERVICE_PARAMS:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->SM_OVER_IP:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsAvailablePSISMSC:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1818
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailablePSISMSC is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsAvailablePSISMSC:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1819
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 1804
    goto :goto_0

    .line 1809
    :cond_2
    :try_start_1
    const-string v1, "ICCType is Unknown or 2G"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1812
    :catch_0
    move-exception v0

    .line 1813
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "Exception"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1814
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsAvailablePSISMSC:Z

    goto :goto_1
.end method

.method private checkSDNavailable([B)V
    .locals 5
    .param p1, "table"    # [B

    .prologue
    const/4 v2, 0x0

    .line 1526
    const-string v1, "Enter  checkSDNavailable"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1529
    :try_start_0
    const-string v1, "1"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1531
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTActive(SDN) : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTAvaiable(SDN) : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1534
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsAvailableSDN:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1552
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsAvailableSDN is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsAvailableSDN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1553
    :goto_2
    return-void

    :cond_1
    move v1, v2

    .line 1534
    goto :goto_0

    .line 1537
    :cond_2
    :try_start_1
    const-string v1, "2"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1539
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1540
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->SDN:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsAvailableSDN:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1547
    :catch_0
    move-exception v0

    .line 1548
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "Exception"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1549
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsAvailableSDN:Z

    goto :goto_2

    .line 1544
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    :try_start_2
    const-string v1, "ICCType is Unknown"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method private checkSMSPavailable([B)V
    .locals 5
    .param p1, "table"    # [B

    .prologue
    const/4 v2, 0x0

    .line 1694
    const-string v1, "Enter  checkSMSPavailable"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1698
    :try_start_0
    const-string v1, "1"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1702
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTActive(SMSP) : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SMSP:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTAvaiable(SMSP) : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SMSP:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1705
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SMSP:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SMSP:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMSP:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1724
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableSMSP is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMSP:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1725
    :goto_2
    return-void

    :cond_1
    move v1, v2

    .line 1705
    goto :goto_0

    .line 1708
    :cond_2
    :try_start_1
    const-string v1, "2"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1710
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1711
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->SM_SERVICE_PARAMS:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMSP:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1718
    :catch_0
    move-exception v0

    .line 1719
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "Exception"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1720
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMSP:Z

    goto :goto_2

    .line 1715
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    :try_start_2
    const-string v1, "ICCType is Unknown"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method private checkSMSavailable([B)V
    .locals 8
    .param p1, "table"    # [B

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1728
    const-string v5, "Enter  checkSMSavailable"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1731
    :try_start_0
    const-string v5, "1"

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1733
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-le v5, v3, :cond_2

    const-string v5, "CTC"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 1736
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "table[SST_SMS_BYTE]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    aget-byte v5, p1, v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1737
    const-string v3, "gsm.sim.gsmoperator.numeric"

    const-string v5, ""

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1738
    .local v2, "operatorSIM":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1739
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1741
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkSMSavailable : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1742
    const/4 v3, 0x0

    aget-byte v3, p1, v3

    const/4 v5, 0x6

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->findTheEnabledServiceInSST(BI)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMS:Z

    .line 1743
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMS:Z

    if-nez v3, :cond_1

    const-string v3, "00101"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1744
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "table[UST_SMS_BYTE]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x1

    aget-byte v5, p1, v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1745
    const/4 v3, 0x1

    aget-byte v3, p1, v3

    const/4 v5, 0x1

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->findTheEnabledServiceInUST(BI)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMS:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1794
    .end local v2    # "operatorSIM":Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAvailableSMS is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMS:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1795
    :goto_1
    return-void

    .line 1750
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v5, :cond_1

    .line 1751
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSSTActive(SMS) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v7, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SMS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1752
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSSTAvaiable(SMS) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v7, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SMS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1754
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v6, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SMS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v6, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SMS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_2
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMS:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1788
    :catch_0
    move-exception v0

    .line 1789
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "Exception"

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1790
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMS:Z

    goto :goto_1

    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    move v3, v4

    .line 1754
    goto :goto_2

    .line 1758
    :cond_4
    :try_start_2
    const-string v5, "2"

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1760
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v3, :cond_1

    .line 1761
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v5, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->SM_STORAGE:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMS:Z

    goto/16 :goto_0

    .line 1764
    :cond_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-le v5, v3, :cond_9

    const-string v5, "CTC"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "CHC"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1767
    :cond_6
    const-string v5, "4"

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1768
    const-string v5, "ril.IsCSIM"

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    const-string v7, "0"

    invoke-static {v5, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1769
    .local v1, "isCsim":I
    if-ne v1, v3, :cond_7

    .line 1770
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v3, :cond_1

    .line 1771
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v5, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->SM_STORAGE:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMS:Z

    goto/16 :goto_0

    .line 1774
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v5, :cond_1

    .line 1775
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSSTActive(SMS) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v7, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SMS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1776
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSSTAvaiable(SMS) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v7, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SMS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1777
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v6, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SMS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v6, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SMS:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_3
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSMS:Z

    goto/16 :goto_0

    :cond_8
    move v3, v4

    goto :goto_3

    .line 1784
    .end local v1    # "isCsim":I
    :cond_9
    const-string v3, "ICCType is Unknown"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method private checkSPNavailable([B)V
    .locals 5
    .param p1, "table"    # [B

    .prologue
    const/4 v2, 0x0

    .line 1619
    const-string v1, "Enter  checkSPNavailable"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1622
    :try_start_0
    const-string v1, "1"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1626
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTActive(SPN) : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SPN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSSTAvaiable(SPN) : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v4, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SPN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1629
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SPN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTActive(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;->SPN:Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isSSTAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$SimService;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSPN:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1648
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailableSPN is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSPN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1650
    :goto_2
    return-void

    :cond_1
    move v1, v2

    .line 1629
    goto :goto_0

    .line 1632
    :cond_2
    :try_start_1
    const-string v1, "2"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1634
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    if-eqz v1, :cond_0

    .line 1635
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    sget-object v3, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->SPN:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSPN:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1642
    :catch_0
    move-exception v0

    .line 1643
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "Exception"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1644
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSPN:Z

    goto :goto_2

    .line 1639
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    :try_start_2
    const-string v1, "ICCType is Unknown"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method private checkSimChanged()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 3592
    const-string v7, "checkSimChanged enter"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3594
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 3597
    .local v5, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.samsung.action.SIM_ICCID_CHANGED"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3598
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.android.action.SIM_ICCID_CHANGED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3600
    .local v2, "intent2":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOldICCID:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 3601
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    if-le v7, v6, :cond_1

    .line 3602
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key_iccid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOldICCID:Ljava/lang/String;

    .line 3607
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOldICCID:Ljava/lang/String;

    .line 3609
    .local v4, "old":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 3610
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3612
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    if-le v7, v6, :cond_2

    .line 3613
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key_iccid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3616
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3619
    const-string v6, "ril.isIccChanged"

    const-string v7, "1"

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3620
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3621
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3648
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_2
    return-void

    .line 3604
    .end local v4    # "old":Ljava/lang/String;
    :cond_1
    const-string v7, "key_iccid"

    const-string v8, ""

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOldICCID:Ljava/lang/String;

    goto :goto_0

    .line 3615
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v4    # "old":Ljava/lang/String;
    :cond_2
    const-string v6, "key_iccid"

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 3624
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    sget-boolean v7, Lcom/android/internal/telephony/uicc/SIMRecords;->SHIP_BUILD:Z

    if-nez v7, :cond_4

    .line 3625
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "old iccid is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  current is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 3630
    :goto_3
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    move v3, v6

    .line 3632
    .local v3, "isSimChanged":Z
    :goto_4
    if-eqz v3, :cond_7

    .line 3633
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3635
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    if-le v7, v6, :cond_6

    .line 3636
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key_iccid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3639
    :goto_5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3641
    const-string v6, "ril.isIccChanged"

    const-string v7, "1"

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3642
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3643
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 3627
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "isSimChanged":Z
    :cond_4
    const-string v7, "old iccid is ******  current is ******"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    goto :goto_3

    .line 3630
    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    .line 3638
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "isSimChanged":Z
    :cond_6
    const-string v6, "key_iccid"

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_5

    .line 3645
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_7
    const-string v6, "ril.isIccChanged"

    const-string v7, "0"

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private dispatchGsmMessage(Landroid/telephony/SmsMessage;)I
    .locals 1
    .param p1, "message"    # Landroid/telephony/SmsMessage;

    .prologue
    .line 3961
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 3962
    const/4 v0, 0x0

    return v0
.end method

.method private findTheEnabledServiceInSST(BI)Z
    .locals 2
    .param p1, "b"    # B
    .param p2, "position"    # I

    .prologue
    .line 989
    const-string v0, "findTheEnabledServiceInSST"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[findTheEnabledService] Byte before = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[findTheEnabledService] Byte before = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 994
    shr-int v0, p1, p2

    int-to-byte p1, v0

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[findTheEnabledService] Byte After = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[findTheEnabledService] Byte After = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 998
    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 999
    const/4 v0, 0x1

    .line 1001
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findTheEnabledServiceInUST(BI)Z
    .locals 3
    .param p1, "b"    # B
    .param p2, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 1006
    const-string v1, "findTheEnabledServiceInUST"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1007
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[findTheEnabledService] Byte before = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1009
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[findTheEnabledService] Byte before = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1010
    shr-int v1, p1, p2

    int-to-byte p1, v1

    .line 1011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[findTheEnabledService] Byte After = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[findTheEnabledService] Byte After = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 1014
    and-int/lit8 v1, p1, 0x1

    if-ne v1, v0, :cond_0

    .line 1017
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getExtFromEf(I)I
    .locals 3
    .param p1, "ef"    # I

    .prologue
    .line 859
    packed-switch p1, :pswitch_data_0

    .line 869
    const/16 v0, 0x6f4a

    .line 871
    .local v0, "ext":I
    :goto_0
    return v0

    .line 862
    .end local v0    # "ext":I
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v1, v2, :cond_0

    .line 863
    const/16 v0, 0x6f4e

    .restart local v0    # "ext":I
    goto :goto_0

    .line 865
    .end local v0    # "ext":I
    :cond_0
    const/16 v0, 0x6f4a

    .line 867
    .restart local v0    # "ext":I
    goto :goto_0

    .line 859
    :pswitch_data_0
    .packed-switch 0x6f40
        :pswitch_0
    .end packed-switch
.end method

.method private getIccIdfromFile()V
    .locals 8

    .prologue
    .line 930
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    const-string v5, "CTC"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 932
    const-string v5, "getIccIdfromFile"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 933
    const/4 v3, 0x0

    .line 934
    .local v3, "fos":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 936
    .local v1, "dos":Ljava/io/DataInputStream;
    const/4 v2, 0x0

    .line 937
    .local v2, "file":Ljava/io/File;
    const-string v5, "CTC"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 938
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    if-nez v5, :cond_1

    .line 939
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    const-string v5, "/data/misc/radio/cicd"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 946
    .restart local v2    # "file":Ljava/io/File;
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 970
    .end local v1    # "dos":Ljava/io/DataInputStream;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileInputStream;
    :cond_0
    :goto_1
    return-void

    .line 941
    .restart local v1    # "dos":Ljava/io/DataInputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/FileInputStream;
    :cond_1
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    const-string v5, "/data/misc/radio/cicd2"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2    # "file":Ljava/io/File;
    goto :goto_0

    .line 944
    :cond_2
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    const-string v5, "/data/misc/radio/cicd2"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2    # "file":Ljava/io/File;
    goto :goto_0

    .line 950
    :cond_3
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 951
    .end local v3    # "fos":Ljava/io/FileInputStream;
    .local v4, "fos":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    new-array v0, v5, [B

    .line 952
    .local v0, "bytes":[B
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 953
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 958
    if-eqz v1, :cond_4

    .line 959
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 960
    const/4 v1, 0x0

    .line 962
    :cond_4
    if-eqz v4, :cond_8

    .line 963
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 964
    const/4 v3, 0x0

    .end local v4    # "fos":Ljava/io/FileInputStream;
    .restart local v3    # "fos":Ljava/io/FileInputStream;
    goto :goto_1

    .line 954
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v5

    .line 958
    :goto_2
    if-eqz v1, :cond_5

    .line 959
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 960
    const/4 v1, 0x0

    .line 962
    :cond_5
    if-eqz v3, :cond_0

    .line 963
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 964
    const/4 v3, 0x0

    goto :goto_1

    .line 957
    :catchall_0
    move-exception v5

    .line 958
    :goto_3
    if-eqz v1, :cond_6

    .line 959
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 960
    const/4 v1, 0x0

    .line 962
    :cond_6
    if-eqz v3, :cond_7

    .line 963
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 964
    const/4 v3, 0x0

    .line 967
    :cond_7
    :goto_4
    throw v5

    .line 966
    :catch_1
    move-exception v6

    goto :goto_4

    .line 957
    .end local v3    # "fos":Ljava/io/FileInputStream;
    .restart local v4    # "fos":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileInputStream;
    .restart local v3    # "fos":Ljava/io/FileInputStream;
    goto :goto_3

    .line 966
    :catch_2
    move-exception v5

    goto :goto_1

    .line 954
    .end local v3    # "fos":Ljava/io/FileInputStream;
    .restart local v4    # "fos":Ljava/io/FileInputStream;
    :catch_3
    move-exception v5

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileInputStream;
    .restart local v3    # "fos":Ljava/io/FileInputStream;
    goto :goto_2

    .line 966
    .end local v3    # "fos":Ljava/io/FileInputStream;
    .restart local v0    # "bytes":[B
    .restart local v4    # "fos":Ljava/io/FileInputStream;
    :catch_4
    move-exception v5

    goto :goto_1

    :cond_8
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileInputStream;
    .restart local v3    # "fos":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private getSpnForCurrentLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "spnOverrideString"    # Ljava/lang/String;

    .prologue
    .line 5441
    if-nez p1, :cond_0

    .line 5442
    const/4 v10, 0x0

    .line 5469
    :goto_0
    return-object v10

    .line 5448
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 5449
    .local v2, "curLoc":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 5450
    .local v5, "l":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 5452
    .local v1, "c":Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 5453
    .local v9, "spnOverrides":[Ljava/lang/String;
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_4

    aget-object v8, v0, v4

    .line 5454
    .local v8, "so":Ljava/lang/String;
    const-string v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 5456
    .local v7, "s":[Ljava/lang/String;
    array-length v10, v7

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 5458
    const/4 v10, 0x0

    aget-object v10, v7, v10

    goto :goto_0

    .line 5461
    :cond_1
    const/4 v10, 0x0

    aget-object v10, v7, v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 5462
    .local v3, "entryLoc":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v3, v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 5463
    array-length v10, v3

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    const/4 v10, 0x1

    aget-object v10, v3, v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 5464
    :cond_2
    const/4 v10, 0x1

    aget-object v10, v7, v10

    goto :goto_0

    .line 5453
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5469
    .end local v3    # "entryLoc":[Ljava/lang/String;
    .end local v7    # "s":[Ljava/lang/String;
    .end local v8    # "so":Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private getSpnFsm(ZLandroid/os/AsyncResult;)V
    .locals 8
    .param p1, "start"    # Z
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/16 v7, 0xc

    const/4 v6, 0x6

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 4898
    if-eqz p1, :cond_2

    .line 4901
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-ne v2, v3, :cond_1

    .line 4907
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 5053
    :goto_0
    return-void

    .line 4910
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 4914
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$2;->$SwitchMap$com$android$internal$telephony$uicc$SIMRecords$GetSpnFsmState:[I

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 5051
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto :goto_0

    .line 4916
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 4918
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x6f46

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4920
    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4922
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto :goto_0

    .line 4925
    :pswitch_1
    if-eqz p2, :cond_a

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_a

    .line 4926
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 4927
    .local v1, "data":[B
    aget-byte v2, v1, v5

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    .line 4928
    const/4 v2, 0x1

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 4932
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_OperatorNameRuleForDcm"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4933
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const-string v3, "44010"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4934
    const-string v2, "NTT DOCOMO"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 4941
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load EF_SPN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " spnDisplayCondition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4945
    const-string v2, "51505"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4946
    const-string v2, "SUN"

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    .line 4951
    :cond_4
    const-string v2, "LRA"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {}, Lcom/android/internal/telephony/PhoneBase;->getSubOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 4952
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v6}, Lcom/android/internal/telephony/PhoneBase;->getNtcFeature(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 4953
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 4967
    :cond_5
    :goto_2
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto/16 :goto_0

    .line 4935
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const-string v3, "44020"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4936
    const-string v2, "SoftBank"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    goto :goto_1

    .line 4956
    :cond_7
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4957
    .local v0, "cdmaOperatorNumeric":Ljava/lang/String;
    const-string v2, "000000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "310120"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "316010"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 4958
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operatorNumeric : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4959
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    goto :goto_2

    .line 4962
    :cond_9
    const-string v2, "Do not update PROPERTY_ICC_OPERATOR_ALPHA for CHAMELEON "

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 4969
    .end local v0    # "cdmaOperatorNumeric":Ljava/lang/String;
    .end local v1    # "data":[B
    :cond_a
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x6f14

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4971
    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4973
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 4977
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    goto/16 :goto_0

    .line 4981
    :pswitch_2
    if-eqz p2, :cond_f

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_f

    .line 4982
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 4983
    .restart local v1    # "data":[B
    array-length v2, v1

    invoke-static {v1, v5, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 4986
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_OperatorNameRuleForDcm"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4987
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const-string v3, "44010"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4988
    const-string v2, "NTT DOCOMO"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 4993
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load EF_SPN_CPHS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4994
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v6}, Lcom/android/internal/telephony/PhoneBase;->getNtcFeature(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 4995
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 5008
    :goto_3
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto/16 :goto_0

    .line 4998
    :cond_c
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4999
    .restart local v0    # "cdmaOperatorNumeric":Ljava/lang/String;
    const-string v2, "000000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "310120"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "316010"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 5000
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operatorNumeric : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5001
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    goto :goto_3

    .line 5004
    :cond_e
    const-string v2, "Do not update PROPERTY_ICC_OPERATOR_ALPHA for CHAMELEON "

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 5010
    .end local v0    # "cdmaOperatorNumeric":Ljava/lang/String;
    .end local v1    # "data":[B
    :cond_f
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x6f18

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 5012
    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 5014
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto/16 :goto_0

    .line 5018
    :pswitch_3
    if-eqz p2, :cond_14

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_14

    .line 5019
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 5020
    .restart local v1    # "data":[B
    array-length v2, v1

    invoke-static {v1, v5, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 5023
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_OperatorNameRuleForDcm"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 5024
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const-string v3, "44010"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 5025
    const-string v2, "NTT DOCOMO"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 5030
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5031
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v6}, Lcom/android/internal/telephony/PhoneBase;->getNtcFeature(I)Z

    move-result v2

    if-nez v2, :cond_11

    .line 5032
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 5048
    .end local v1    # "data":[B
    :goto_4
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto/16 :goto_0

    .line 5035
    .restart local v1    # "data":[B
    :cond_11
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5036
    .restart local v0    # "cdmaOperatorNumeric":Ljava/lang/String;
    const-string v2, "000000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "310120"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "316010"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 5037
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operatorNumeric : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5038
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    goto :goto_4

    .line 5041
    :cond_13
    const-string v2, "Do not update PROPERTY_ICC_OPERATOR_ALPHA for CHAMELEON "

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 5045
    .end local v0    # "cdmaOperatorNumeric":Ljava/lang/String;
    .end local v1    # "data":[B
    :cond_14
    const-string v2, "No SPN loaded in either CHPS or 3GPP"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 4914
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleEfCspData([B)V
    .locals 6
    .param p1, "data"    # [B

    .prologue
    const/4 v5, 0x1

    .line 5200
    array-length v3, p1

    div-int/lit8 v1, v3, 0x2

    .line 5202
    .local v1, "usedCspGroups":I
    const/16 v2, -0x40

    .line 5204
    .local v2, "valueAddedServicesGroup":B
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    .line 5205
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 5206
    mul-int/lit8 v3, v0, 0x2

    aget-byte v3, p1, v3

    if-ne v3, v2, :cond_1

    .line 5207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CSP] found ValueAddedServicesGroup, value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5208
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_0

    .line 5212
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    .line 5225
    :goto_1
    return-void

    .line 5214
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    .line 5217
    const-string v3, "[CSP] Set Automatic Network Selection"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5218
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_1

    .line 5205
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5224
    :cond_2
    const-string v3, "[CSP] Value Added Service Group (0xC0), not found!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleFileUpdate(I)V
    .locals 6
    .param p1, "efid"    # I

    .prologue
    const/16 v4, 0x6f40

    const/4 v5, 0x1

    .line 3674
    sparse-switch p1, :sswitch_data_0

    .line 3748
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onSimPhonebookRefresh()V

    .line 3749
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    .line 3754
    :cond_0
    :goto_0
    return-void

    .line 3676
    :sswitch_0
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3677
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v2, 0x6fc7

    const/16 v3, 0x6fc8

    iget v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 3681
    :sswitch_1
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3682
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v2, 0x6f17

    const/16 v3, 0x6f4a

    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 3686
    :sswitch_2
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3687
    const-string v1, "[CSP] SIM Refresh for EF_CSP_CPHS"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3688
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6f15

    const/16 v3, 0x21

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0

    .line 3692
    :sswitch_3
    const-string v1, "SIM Refresh called for EF_FDN"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3693
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryFdn()V

    goto :goto_0

    .line 3696
    :sswitch_4
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3697
    const-string v1, "SIM Refresh called for EF_MSISDN"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3698
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->getExtFromEf(I)I

    move-result v2

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v4, v2, v5, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 3703
    :sswitch_5
    const-string v1, "SIM Refresh called for EF_CFIS or EF_CFF_CPHS"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3704
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loadCallForwardingRecords()V

    goto/16 :goto_0

    .line 3709
    :sswitch_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3712
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3713
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x2ff0

    const/16 v3, 0x206

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 3717
    :sswitch_7
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6f42

    const/16 v3, 0x20a

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3718
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3719
    const-string v1, "loading EF_SMSP on refresh"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3721
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.SIM_REFRESH_INIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3722
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3727
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isRefreshedBySTK:Z

    goto/16 :goto_0

    .line 3733
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_8
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3734
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6f7b    # 3.9992E-41f

    const/16 v3, 0x209

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 3738
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onSimPhonebookRefresh()V

    goto/16 :goto_0

    .line 3674
    :sswitch_data_0
    .sparse-switch
        0x2ff0 -> :sswitch_6
        0x6f13 -> :sswitch_5
        0x6f15 -> :sswitch_2
        0x6f17 -> :sswitch_1
        0x6f3a -> :sswitch_9
        0x6f3b -> :sswitch_3
        0x6f40 -> :sswitch_4
        0x6f42 -> :sswitch_7
        0x6f7b -> :sswitch_8
        0x6fc7 -> :sswitch_0
        0x6fcb -> :sswitch_5
    .end sparse-switch
.end method

.method private handleFileUpdateExt(I)V
    .locals 5
    .param p1, "efid"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3761
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    .line 3762
    const-string v0, "ril.ICC_TYPE"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    .line 3764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIMRecords:HandleFileUpdateEXT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->logv(Ljava/lang/String;)V

    .line 3766
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2fe2

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3767
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3769
    sparse-switch p1, :sswitch_data_0

    .line 3843
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isRefreshedBySTK:Z

    .line 3846
    :cond_0
    :goto_0
    return-void

    .line 3772
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fc9

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3773
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto :goto_0

    .line 3777
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fad

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3778
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto :goto_0

    .line 3782
    :sswitch_2
    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v1, "KOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3784
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fca

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3785
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto :goto_0

    .line 3792
    :sswitch_3
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    goto :goto_0

    .line 3796
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fcd

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3797
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto :goto_0

    .line 3802
    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fc6

    const/16 v2, 0x1f6

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 3804
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3805
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fc5

    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 3807
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_0

    .line 3811
    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f38

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3812
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_0

    .line 3817
    :sswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f16

    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3818
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_0

    .line 3822
    :sswitch_8
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f15

    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3823
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_0

    .line 3827
    :sswitch_9
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2fe7

    const/16 v2, 0x204

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3828
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_0

    .line 3831
    :sswitch_a
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x4f1c

    const/16 v2, 0x205

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3832
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_0

    .line 3836
    :sswitch_b
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x4f84

    const/16 v2, 0x64

    new-instance v3, Lcom/android/internal/telephony/uicc/SIMRecords$EfOcsglLoaded;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords$EfOcsglLoaded;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$1;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 3837
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_0

    .line 3769
    :sswitch_data_0
    .sparse-switch
        0x2fe7 -> :sswitch_9
        0x4f1c -> :sswitch_a
        0x4f84 -> :sswitch_b
        0x6f14 -> :sswitch_3
        0x6f15 -> :sswitch_8
        0x6f16 -> :sswitch_7
        0x6f18 -> :sswitch_3
        0x6f38 -> :sswitch_6
        0x6f46 -> :sswitch_3
        0x6fad -> :sswitch_1
        0x6fc5 -> :sswitch_5
        0x6fc6 -> :sswitch_5
        0x6fc9 -> :sswitch_0
        0x6fca -> :sswitch_2
        0x6fcd -> :sswitch_4
    .end sparse-switch
.end method

.method private handleOPL(Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "messages"    # Ljava/util/ArrayList;

    .prologue
    const/16 v11, 0xe

    const/16 v10, 0xa

    const/4 v9, 0x6

    const/16 v8, 0x10

    const/4 v7, 0x0

    .line 4108
    const-string v2, "ffffffffffffffff"

    .line 4110
    .local v2, "fdata":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4112
    .local v0, "count":I
    iput v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_count:I

    .line 4114
    new-array v5, v0, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    .line 4115
    new-array v5, v0, [I

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_LAC1:[I

    .line 4116
    new-array v5, v0, [I

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_LAC2:[I

    .line 4117
    new-array v5, v0, [I

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_INDEX:[I

    .line 4119
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 4120
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v1, v5

    check-cast v1, [B

    .line 4121
    .local v1, "data":[B
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 4124
    .local v4, "sdata":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 4125
    const-string v5, "[handleOPL] EF_OPL contains Null"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 4127
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v6, v5, v3

    .line 4128
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_LAC1:[I

    aput v7, v5, v3

    .line 4129
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_LAC2:[I

    aput v7, v5, v3

    .line 4130
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_INDEX:[I

    aput v7, v5, v3

    .line 4146
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleOPL]Load OPL_MCCMNC["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 4147
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleOPL]Load OPL_LAC1["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_LAC1:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 4148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleOPL]Load OPL_LAC2["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_LAC2:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 4149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleOPL]Load OPL_INDEX["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_INDEX:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 4151
    iget v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_count:I

    .line 4153
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsOPLExist:Z

    .line 4119
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 4132
    :cond_0
    const-string v5, "[handleOPL] EF_OPL contains Data(Not Null)"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 4133
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    invoke-virtual {v4, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->MccMncConvert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 4135
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    aget-object v5, v5, v3

    if-eqz v5, :cond_1

    .line 4136
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_LAC1:[I

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v3

    .line 4137
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_LAC2:[I

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v3

    .line 4138
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_INDEX:[I

    invoke-virtual {v4, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v3

    goto/16 :goto_1

    .line 4140
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_LAC1:[I

    aput v7, v5, v3

    .line 4141
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_LAC2:[I

    aput v7, v5, v3

    .line 4142
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_INDEX:[I

    aput v7, v5, v3

    goto/16 :goto_1

    .line 4155
    .end local v1    # "data":[B
    .end local v4    # "sdata":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private handlePNN(Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "messages"    # Ljava/util/ArrayList;

    .prologue
    const/4 v9, 0x0

    .line 4071
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4073
    .local v0, "count":I
    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->PNN_Value:[Ljava/lang/String;

    .line 4075
    const-string v2, "ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"

    .line 4077
    .local v2, "fdata":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 4078
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v1, v6

    check-cast v1, [B

    .line 4080
    .local v1, "data":[B
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 4082
    .local v4, "sdata":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 4083
    new-instance v5, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v6, v1

    invoke-direct {v5, v1, v9, v6}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 4085
    .local v5, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4086
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v6

    const/16 v7, 0x43

    if-ne v6, v7, :cond_0

    .line 4087
    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 4088
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->PNN_Value:[Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v7, v6, v3

    .line 4096
    :cond_0
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handlePnns] Load PNN Value["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->PNN_Value:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 4098
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsPNNExist:Z

    .line 4077
    .end local v5    # "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4090
    .restart local v5    # "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->PNN_Value:[Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v8

    array-length v8, v8

    invoke-static {v7, v9, v8}, Lcom/android/internal/telephony/uicc/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    goto :goto_1

    .line 4101
    .end local v5    # "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_2
    const-string v6, "[handlePNNs] data is Null !!!"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    goto :goto_2

    .line 4105
    .end local v1    # "data":[B
    .end local v4    # "sdata":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private handleSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 2
    .param p1, "refreshResponse"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .prologue
    .line 3921
    if-nez p1, :cond_1

    .line 3922
    const-string v0, "handleSimRefresh received without input"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3954
    :cond_0
    :goto_0
    return-void

    .line 3926
    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3932
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isRefreshedBySTK:Z

    .line 3934
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    packed-switch v0, :pswitch_data_0

    .line 3951
    const-string v0, "handleSimRefresh with unknown operation"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3936
    :pswitch_0
    const-string v0, "handleSimRefresh with SIM_FILE_UPDATED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3937
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleFileUpdate(I)V

    goto :goto_0

    .line 3940
    :pswitch_1
    const-string v0, "handleSimRefresh with SIM_REFRESH_INIT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3942
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onIccRefreshInit()V

    .line 3943
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onSimPhonebookRefresh()V

    goto :goto_0

    .line 3947
    :pswitch_2
    const-string v0, "handleSimRefresh with SIM_REFRESH_RESET"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3934
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleSktEf([B)Ljava/lang/String;
    .locals 14
    .param p1, "data"    # [B

    .prologue
    .line 4023
    const-wide/16 v2, 0x0

    .line 4024
    .local v2, "imsi_s1":J
    const-wide/16 v4, 0x0

    .line 4028
    .local v4, "imsi_s2":J
    const/16 v7, 0xa

    new-array v6, v7, [C

    fill-array-data v6, :array_0

    .line 4030
    .local v6, "mintab":[C
    const/4 v7, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    const/4 v10, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v7, v10

    int-to-long v4, v7

    .line 4031
    const/4 v7, 0x5

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    const/4 v10, 0x4

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    const/4 v11, 0x3

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    or-int/2addr v7, v10

    int-to-long v2, v7

    .line 4033
    const-wide/16 v10, 0x0

    cmp-long v7, v2, v10

    if-nez v7, :cond_0

    .line 4034
    const-string v0, "0000000"

    .line 4052
    .local v0, "Min1":Ljava/lang/String;
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Min1: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4054
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4055
    .local v1, "Min2":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v10, 0x64

    div-long v10, v4, v10

    long-to-int v10, v10

    aget-char v10, v6, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4056
    const-wide/16 v10, 0x64

    rem-long/2addr v4, v10

    .line 4057
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v10, 0xa

    div-long v10, v4, v10

    long-to-int v10, v10

    aget-char v10, v6, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4058
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v10, 0xa

    rem-long v10, v4, v10

    long-to-int v10, v10

    aget-char v10, v6, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4060
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Min2: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4062
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v10, 0x30

    if-eq v7, v10, :cond_2

    .line 4063
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4065
    :goto_1
    return-object v7

    .line 4036
    .end local v0    # "Min1":Ljava/lang/String;
    .end local v1    # "Min2":Ljava/lang/String;
    :cond_0
    const/16 v7, 0xe

    ushr-long v8, v2, v7

    .line 4037
    .local v8, "temp":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v10, 0x64

    div-long v10, v8, v10

    long-to-int v10, v10

    aget-char v10, v6, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4038
    .restart local v0    # "Min1":Ljava/lang/String;
    const-wide/16 v10, 0x64

    rem-long/2addr v8, v10

    .line 4039
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v10, 0xa

    div-long v10, v8, v10

    long-to-int v10, v10

    aget-char v10, v6, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4040
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v10, 0xa

    rem-long v10, v8, v10

    long-to-int v10, v10

    aget-char v10, v6, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4041
    const-wide/16 v10, 0x3fff

    and-long/2addr v2, v10

    .line 4043
    const/16 v7, 0xa

    ushr-long v10, v2, v7

    const-wide/16 v12, 0xf

    and-long v8, v10, v12

    .line 4044
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v10, 0xa

    cmp-long v10, v8, v10

    if-nez v10, :cond_1

    const-wide/16 v8, 0x0

    .end local v8    # "temp":J
    :cond_1
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4045
    const-wide/16 v10, 0x3ff

    and-long v8, v2, v10

    .line 4046
    .restart local v8    # "temp":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v10, 0x64

    div-long v10, v8, v10

    long-to-int v10, v10

    aget-char v10, v6, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4047
    const-wide/16 v10, 0x64

    rem-long/2addr v8, v10

    .line 4048
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v10, 0xa

    div-long v10, v8, v10

    long-to-int v10, v10

    aget-char v10, v6, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4049
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v10, 0xa

    rem-long v10, v8, v10

    long-to-int v10, v10

    aget-char v10, v6, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 4065
    .end local v8    # "temp":J
    .restart local v1    # "Min2":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 4028
    nop

    :array_0
    .array-data 2
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
    .end array-data
.end method

.method private handleSms([B)V
    .locals 7
    .param p1, "ba"    # [B

    .prologue
    const/4 v6, 0x0

    .line 3966
    aget-byte v3, p1, v6

    if-eqz v3, :cond_0

    .line 3967
    const-string v3, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3971
    :cond_0
    aget-byte v3, p1, v6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 3972
    array-length v1, p1

    .line 3976
    .local v1, "n":I
    add-int/lit8 v3, v1, -0x1

    new-array v2, v3, [B

    .line 3977
    .local v2, "pdu":[B
    const/4 v3, 0x1

    add-int/lit8 v4, v1, -0x1

    invoke-static {p1, v3, v2, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 3978
    const-string v3, "3gpp"

    invoke-static {v2, v3}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 3980
    .local v0, "message":Landroid/telephony/SmsMessage;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->dispatchGsmMessage(Landroid/telephony/SmsMessage;)I

    .line 3982
    .end local v0    # "message":Landroid/telephony/SmsMessage;
    .end local v1    # "n":I
    .end local v2    # "pdu":[B
    :cond_1
    return-void
.end method

.method private handleSmses(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3986
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3988
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 3989
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 3991
    .local v0, "ba":[B
    aget-byte v6, v0, v9

    if-eqz v6, :cond_0

    .line 3992
    const-string v6, "ENF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "status "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3997
    :cond_0
    aget-byte v6, v0, v9

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 3998
    array-length v4, v0

    .line 4002
    .local v4, "n":I
    add-int/lit8 v6, v4, -0x1

    new-array v5, v6, [B

    .line 4003
    .local v5, "pdu":[B
    add-int/lit8 v6, v4, -0x1

    invoke-static {v0, v10, v5, v9, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 4004
    const-string v6, "3gpp"

    invoke-static {v5, v6}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v3

    .line 4006
    .local v3, "message":Landroid/telephony/SmsMessage;
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->dispatchGsmMessage(Landroid/telephony/SmsMessage;)I

    .line 4011
    aput-byte v10, v0, v9

    .line 3988
    .end local v3    # "message":Landroid/telephony/SmsMessage;
    .end local v4    # "n":I
    .end local v5    # "pdu":[B
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4019
    .end local v0    # "ba":[B
    :cond_2
    return-void
.end method

.method private isCphsMailboxEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5103
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    if-nez v2, :cond_0

    .line 5104
    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private isMatchingHplmn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "network"    # Ljava/lang/String;
    .param p2, "sim"    # Ljava/lang/String;

    .prologue
    .line 5302
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isMatchingHplmn(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isMatchingHplmn(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "network"    # Ljava/lang/String;
    .param p2, "sim"    # Ljava/lang/String;
    .param p3, "wild"    # Z

    .prologue
    const/4 v4, 0x5

    const/4 v5, 0x1

    .line 5276
    move-object v1, p1

    .line 5277
    .local v1, "networkPlmn":Ljava/lang/String;
    move-object v2, p2

    .line 5279
    .local v2, "simPlmn":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 5280
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->IsNANetwork(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v5, :cond_1

    .line 5281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5287
    :cond_0
    :goto_0
    if-ne p3, v5, :cond_2

    .line 5293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[dD]"

    const-string v5, "."

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5295
    .local v0, "expr":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    .line 5297
    .end local v0    # "expr":Ljava/lang/String;
    :goto_1
    return v3

    .line 5283
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 5297
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1
.end method

.method private isNeedToShareWithSensor(Ljava/lang/String;)Z
    .locals 2
    .param p1, "operator"    # Ljava/lang/String;

    .prologue
    .line 4159
    if-eqz p1, :cond_1

    .line 4160
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "311480"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "20404"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2044"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4162
    :cond_0
    const/4 v0, 0x1

    .line 4166
    :goto_0
    return v0

    .line 4165
    :cond_1
    const-string v0, "Non VZW SIM"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4166
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOnMatchingPlmn(Ljava/lang/String;)Z
    .locals 5
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4851
    if-nez p1, :cond_1

    .line 4864
    :cond_0
    :goto_0
    return v2

    .line 4853
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 4854
    goto :goto_0

    .line 4857
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 4858
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4859
    .local v1, "spdiNet":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 4860
    goto :goto_0
.end method

.method private loadCallForwardingRecords()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4619
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    .line 4620
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fcb

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 4621
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4622
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f13

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4623
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4624
    return-void
.end method

.method private loadEfLiAndEfPl()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x64

    .line 4606
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_0

    .line 4607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    .line 4608
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f05

    new-instance v2, Lcom/android/internal/telephony/uicc/SIMRecords$EfUsimLiLoaded;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords$EfUsimLiLoaded;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$1;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4610
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4612
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2f05

    new-instance v2, Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$1;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4614
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4616
    :cond_0
    return-void
.end method

.method private notifyCallForwardIndication()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1958
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v2

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v2, v5, :cond_2

    .line 1959
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[NAM] SIM Ready - cf icon voice value: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_voice:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1960
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[NAM] SIM Ready - cf icon video value: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_video:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1962
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_voice:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    .line 1964
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_video:Z

    if-eqz v2, :cond_0

    move v4, v3

    :cond_0
    iput v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    .line 1966
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1982
    :goto_1
    return-void

    :cond_1
    move v2, v4

    .line 1962
    goto :goto_0

    .line 1969
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NAM] Not SIM Ready - cf icon voice value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_voice:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1970
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NAM] Not SIM Ready - cf icon video value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_video:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1972
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_voice:Z

    .line 1973
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_video:Z

    .line 1974
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1975
    .local v1, "sp2":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1976
    .local v0, "editor2":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cf_iconkey_voice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_voice:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1977
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cf_iconkey_video"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_video:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1978
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cf_imsikey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1979
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1
.end method

.method private notifyEFLockStatus(II)V
    .locals 4
    .param p1, "restype"    # I
    .param p2, "resapdu"    # I

    .prologue
    .line 3901
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3918
    :goto_0
    return-void

    .line 3904
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_EF_LOCK_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3906
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "responseType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3907
    const-string v1, "responseApdu"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3908
    const-string v1, "efLockUser"

    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEFLockUser:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3909
    const-string v1, "efLockRemote"

    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEFLockRemote:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3911
    const-string v1, "SIMRecords"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIMRecords: notify   [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3912
    const-string v1, "SIMRecords"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIMRecords: APDU res [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3913
    const-string v1, "SIMRecords"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIMRecords: UserLock [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEFLockUser:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3914
    const-string v1, "SIMRecords"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIMRecords: RemoteLock [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEFLockRemote:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3917
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private onLocked()V
    .locals 3

    .prologue
    .line 4584
    const-string v0, " fetch EF_LI, EF_PL and EF_ICCID in lock state"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4585
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loadEfLiAndEfPl()V

    .line 4587
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2fe2

    const/16 v2, 0x1f8

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4589
    return-void
.end method

.method private onNWLocked()V
    .locals 1

    .prologue
    .line 4594
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsOneSkuSupport:Z

    if-eqz v0, :cond_0

    .line 4595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsPrevSimStateNwLocked:Z

    .line 4599
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsNeedToReadIccIdOnNwLocked:Z

    if-eqz v0, :cond_1

    .line 4600
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onLocked()V

    .line 4602
    :cond_1
    return-void
.end method

.method private parseEfSpdi([B)V
    .locals 11
    .param p1, "data"    # [B

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 5062
    new-instance v5, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v7, p1

    invoke-direct {v5, p1, v9, v7}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 5064
    .local v5, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    const/4 v3, 0x0

    .line 5066
    .local v3, "plmnEntries":[B
    :goto_0
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5068
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v7

    const/16 v8, 0xa3

    if-ne v7, v8, :cond_0

    .line 5069
    new-instance v6, Lcom/android/internal/telephony/gsm/SimTlv;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v8

    array-length v8, v8

    invoke-direct {v6, v7, v9, v8}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .end local v5    # "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    .local v6, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    move-object v5, v6

    .line 5072
    .end local v6    # "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    .restart local v5    # "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_0
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v7

    const/16 v8, 0x80

    if-ne v7, v8, :cond_3

    .line 5073
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v3

    .line 5078
    :cond_1
    if-nez v3, :cond_4

    .line 5097
    :cond_2
    return-void

    .line 5066
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_0

    .line 5082
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v3

    div-int/lit8 v8, v8, 0x3

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    .line 5084
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    add-int/lit8 v7, v1, 0x2

    array-length v8, v3

    if-ge v7, v8, :cond_2

    .line 5086
    new-array v4, v10, [B

    .line 5087
    .local v4, "singlePlmn":[B
    invoke-static {v3, v1, v4, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 5088
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 5089
    .local v0, "encodedPLMN":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->MccMncConvert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5092
    .local v2, "plmnCode":Ljava/lang/String;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x5

    if-lt v7, v8, :cond_5

    .line 5093
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EF_SPDI network: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5094
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5084
    :cond_5
    add-int/lit8 v1, v1, 0x3

    goto :goto_1
.end method

.method private saveFelicaEFs(I)V
    .locals 11
    .param p1, "prop"    # I

    .prologue
    .line 3851
    const/4 v5, 0x0

    .line 3852
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 3854
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v7, 0x0

    .line 3855
    .local v7, "path":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3857
    .local v0, "data":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 3871
    :goto_0
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3872
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3873
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .local v2, "dos":Ljava/io/DataOutputStream;
    :try_start_2
    const-string v8, "SIMRecords"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveEFToFile : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3874
    if-eqz v0, :cond_0

    .line 3875
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 3877
    :cond_0
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 3878
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 3879
    const/4 v1, 0x0

    .line 3880
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    const/4 v5, 0x0

    .line 3882
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "chmod 665 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3888
    :goto_1
    if-eqz v1, :cond_1

    .line 3889
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 3890
    :cond_1
    if-eqz v5, :cond_2

    .line 3891
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 3895
    :cond_2
    :goto_2
    return-void

    .line 3859
    :pswitch_0
    const-string v7, "/data/misc/radio/uicc"

    .line 3860
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->efUICC:[B

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 3861
    goto :goto_0

    .line 3863
    :pswitch_1
    const-string v7, "/data/misc/radio/imoder"

    .line 3864
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->efIMODER:[B

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 3865
    goto :goto_0

    .line 3883
    :catch_0
    move-exception v3

    .line 3884
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    const-string v8, "SIMRecords"

    const-string v9, "saveEFToFile : Error in processed file - "

    invoke-static {v8, v9, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3892
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 3893
    .local v4, "ex":Ljava/io/IOException;
    const-string v8, "SIMRecords"

    const-string v9, "saveEFToFile : close fail!!!"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3883
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v3

    move-object v1, v2

    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 3857
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setSpnFromConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "carrier"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;

    .prologue
    .line 4528
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4529
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 4530
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 4533
    :cond_0
    return-void
.end method

.method private setSysfsForSensor()V
    .locals 7

    .prologue
    .line 4170
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/sensors/grip_sensor/sim_type"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4171
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 4174
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4175
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    if-nez v1, :cond_2

    .line 4176
    :try_start_1
    const-string v4, "sysfs - sensor/sim_type => null"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4189
    :cond_0
    :goto_0
    if-eqz v3, :cond_5

    .line 4191
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v2, v3

    .line 4197
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 4177
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 4178
    const-string v4, "There\'s no sysfs - sensor/sim_type"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 4184
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 4185
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sysfs for sensor new File error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4189
    if-eqz v2, :cond_1

    .line 4191
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 4192
    :catch_1
    move-exception v0

    .line 4193
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException caught while closing fileOutputStream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 4180
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :cond_3
    if-eqz v3, :cond_0

    .line 4181
    const/16 v4, 0x31

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 4186
    :catch_2
    move-exception v0

    move-object v2, v3

    .line 4187
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initSelloutSms createNewFile error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4189
    if-eqz v2, :cond_1

    .line 4191
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 4192
    :catch_3
    move-exception v0

    .line 4193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException caught while closing fileOutputStream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 4192
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    .line 4193
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException caught while closing fileOutputStream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    move-object v2, v3

    .line 4194
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 4189
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v2, :cond_4

    .line 4191
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 4194
    :cond_4
    :goto_5
    throw v4

    .line 4192
    :catch_5
    move-exception v0

    .line 4193
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException caught while closing fileOutputStream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 4189
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 4186
    :catch_6
    move-exception v0

    goto :goto_3

    .line 4184
    :catch_7
    move-exception v0

    goto/16 :goto_2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :cond_5
    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method

.method private setVoiceCallForwardingFlagFromSimRecords()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4226
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->validEfCfis([B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4229
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    .line 4231
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    :goto_1
    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    .line 4233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_CFIS: voicecallForwardingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_CFIS: videocallForwardingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4258
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 4229
    goto :goto_0

    :cond_1
    move v1, v2

    .line 4231
    goto :goto_1

    .line 4235
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    if-eqz v0, :cond_6

    .line 4237
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_3
    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    .line 4241
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    array-length v0, v0

    if-le v0, v1, :cond_5

    .line 4242
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_4

    :goto_4
    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    .line 4248
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_CFF: voicecallForwardingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_CFF: videocallForwardingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move v0, v2

    .line 4237
    goto :goto_3

    :cond_4
    move v1, v2

    .line 4242
    goto :goto_4

    .line 4246
    :cond_5
    iput v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    goto :goto_5

    .line 4252
    :cond_6
    iput v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    .line 4253
    iput v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    .line 4254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_CFIS and EF_CFF not valid. voicecallForwardingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_CFIS and EF_CFF not valid. videocallForwardingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private setVoiceMailByCountry(Ljava/lang/String;)V
    .locals 1
    .param p1, "spn"    # Ljava/lang/String;

    .prologue
    .line 4538
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4539
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsVoiceMailFixed:Z

    .line 4540
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 4541
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    .line 4543
    :cond_0
    return-void
.end method

.method private setVoiceMailByNetworkName(Ljava/lang/String;)V
    .locals 2
    .param p1, "nwkName"    # Ljava/lang/String;

    .prologue
    .line 4548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceMailByNetworkName: NetworkName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4550
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    if-nez v0, :cond_1

    .line 4574
    :cond_0
    :goto_0
    return-void

    .line 4554
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->containsNetworkName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4555
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->getVoiceMailNumberByNetworkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 4556
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->getVoiceMailTagByNetworkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    .line 4558
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4559
    const-string v0, "DTM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "KPP"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "KPN"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "XFA"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "XFM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "XFC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "XFE"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "XFV"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VDS"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4568
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsVoiceMailFixed:Z

    .line 4572
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceMailByNetworkName: isVoiceMailFixed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsVoiceMailFixed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private validEfCfis([B)Z
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 1160
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public IncreaseSMSS()V
    .locals 3

    .prologue
    .line 5643
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIncreaseTPMR:Z

    .line 5644
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f43

    const/16 v2, 0x208

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 5645
    return-void
.end method

.method InitAutopreconfig()V
    .locals 12

    .prologue
    .line 4472
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AutoPreconfig : got mccmnc "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 4474
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 4475
    .local v6, "preferences":Landroid/content/SharedPreferences;
    const-string v2, ""

    .line 4477
    .local v2, "gid1":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 4478
    const-string v3, "key_gid1"

    .line 4479
    .local v3, "key_gid":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v10

    if-eqz v10, :cond_0

    .line 4480
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "key"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_gid1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4481
    :cond_0
    const-string v10, ""

    invoke-interface {v6, v3, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4482
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AutoPreconfig : got gid1 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 4485
    .end local v3    # "key_gid":Ljava/lang/String;
    :cond_1
    const-string v7, ""

    .line 4486
    .local v7, "spCode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v9, v10, 0x1

    .line 4487
    .local v9, "startIdx":I
    add-int/lit8 v0, v9, 0x2

    .line 4488
    .local v0, "endIdx":I
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v10, v0, :cond_3

    .line 4489
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-static {v10, v9, v0}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v7

    .line 4493
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AutoPreconfig : got spcode "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 4495
    const-string v8, ""

    .line 4496
    .local v8, "spName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 4497
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    .line 4499
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AutoPreconfig : got spname "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 4501
    :try_start_0
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 4503
    .local v4, "msg":Landroid/os/Message;
    iget-boolean v10, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsPrevSimStateNwLocked:Z

    if-eqz v10, :cond_4

    .line 4504
    const-string v10, "AutoPreconfig : keep current CSC"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 4505
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsPrevSimStateNwLocked:Z

    .line 4506
    sget v10, Lcom/android/internal/telephony/uicc/SIMRecords;->KEEP_CURRENT_CONFIG:I

    iput v10, v4, Landroid/os/Message;->what:I

    .line 4507
    const/4 v10, 0x0

    iput-object v10, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4508
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAutoPreconfigService:Landroid/os/Messenger;

    invoke-virtual {v10, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4524
    .end local v4    # "msg":Landroid/os/Message;
    :goto_1
    return-void

    .line 4491
    .end local v8    # "spName":Ljava/lang/String;
    :cond_3
    const-string v10, "AutoPreconfig : spcode is empty, Due to wrong IMSI length"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 4510
    .restart local v4    # "msg":Landroid/os/Message;
    .restart local v8    # "spName":Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 4511
    .local v5, "preconfigParamIntent":Landroid/content/Intent;
    const-string v10, "com.sec.android.AutoPreconfig"

    const-string v11, "com.sec.android.AutoPreconfig.AutoPreconfigService"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4512
    const-string v10, "MCCMNC"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4513
    const-string v10, "GID1"

    invoke-virtual {v5, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4514
    const-string v10, "SPCODE"

    invoke-virtual {v5, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4515
    const-string v10, "SPNAME"

    invoke-virtual {v5, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4517
    sget v10, Lcom/android/internal/telephony/uicc/SIMRecords;->INIT_AUTOPRECONFIG:I

    iput v10, v4, Landroid/os/Message;->what:I

    .line 4518
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4519
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAutoPreconfigService:Landroid/os/Messenger;

    invoke-virtual {v10, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 4521
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "preconfigParamIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 4522
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mAutoPreconfigService RemoteException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public chekcMWISavailable()Z
    .locals 1

    .prologue
    .line 5258
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    if-nez v0, :cond_0

    .line 5259
    const-string v0, "[voicemail]chekcMWISavailable is false"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5260
    const/4 v0, 0x0

    .line 5263
    :goto_0
    return v0

    .line 5262
    :cond_0
    const-string v0, "[voicemail]chekcMWISavailable is true"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5263
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispose()V
    .locals 5

    .prologue
    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disposing SIMRecords this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 668
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 669
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsOnSim(Landroid/os/Handler;)V

    .line 670
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 671
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForLocked(Landroid/os/Handler;)V

    .line 673
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnPbInitComplete(Landroid/os/Handler;)V

    .line 676
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSimPbReady(Landroid/os/Handler;)V

    .line 678
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 679
    const-string v1, "CTC"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 690
    :cond_0
    :goto_0
    const-string v1, "DISABLE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_AutoConfigurationType"

    const-string v4, "DISABLE"

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 692
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsAPBound:Z

    if-eqz v1, :cond_1

    .line 693
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAutoPreconfigServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 694
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsAPBound:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->resetRecords()V

    .line 703
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    .line 704
    return-void

    .line 683
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 686
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 5229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIMRecords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5230
    const-string v0, " extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5231
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVmConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSpnOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCallForwardingStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSpnState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCphsInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCspPlmnEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEfMWIS[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEfCPHS_MWI[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEfCff[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEfCfis[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSpnDisplayCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSpdiNetworks[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPnnHomeName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnHomeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUsimServiceTable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGid1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGid2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEonsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEonsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsOPLExist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsOPLExist:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsEnabledOPL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsEnabledOPL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5253
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 5254
    return-void
.end method

.method protected fetchSimRecords()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4627
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    .line 4630
    const-string v0, "ril.ICC_TYPE"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    .line 4632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchSimRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4634
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 4635
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4637
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRetryCountGetImsi:I

    .line 4640
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2fe2

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4641
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4643
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f38

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4644
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4646
    const-string v0, "SKT"

    const-string v1, "EUR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4647
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x4f22

    const/16 v2, 0x1fa

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4648
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4650
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x4f55

    const/16 v2, 0x1fb

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4651
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4656
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_MultiIMSI"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_DisableRoamingMultiIMSI"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4660
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2f40

    const/16 v2, 0x1fc

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4661
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4663
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2f41

    const/16 v2, 0x1fd

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4664
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4666
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2f42

    const/16 v2, 0x1fe

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4667
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4669
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2f43

    const/16 v2, 0x1ff

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4670
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4672
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2f50

    const/16 v2, 0x200

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4673
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4676
    :cond_1
    const-string v0, "LGT"

    const-string v1, "EUR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4677
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2f30

    const/16 v2, 0x201

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4678
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4682
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f3e

    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4683
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4685
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f42

    const/16 v2, 0x20a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 4686
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4690
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fc9

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 4691
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4693
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fad

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4694
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4696
    const/4 v0, 0x0

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    .line 4698
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fcd

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4699
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4702
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEonsEnabled:Z

    if-eqz v0, :cond_3

    .line 4703
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fc6

    const/16 v2, 0x1f6

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 4704
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4706
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fc5

    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 4707
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4714
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f16

    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4715
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4717
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f15

    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4718
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4720
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4721
    const-string v0, "SIMRecords"

    const-string v1, "RIL_NTT_FELICA fetchsimrecords entered. "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4722
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2fe7

    const/16 v2, 0x204

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4723
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4724
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x4f1c

    const/16 v2, 0x205

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4725
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4726
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2ff0

    const/16 v2, 0x206

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4727
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4735
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_EnableOnsDisplay"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4736
    const-string v0, "Try to read ONS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4737
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f14

    const/16 v2, 0x1f4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4738
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4741
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f3f

    const/16 v2, 0x24

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4742
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4744
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loadEfLiAndEfPl()V

    .line 4766
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fe5

    const/16 v2, 0x207

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 4767
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4770
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f7b    # 3.9992E-41f

    const/16 v2, 0x209

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4771
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4775
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f02

    const/16 v2, 0x1f9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4776
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4780
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fe3

    const/16 v2, 0x20b

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4781
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4784
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f78

    const/16 v2, 0x20c

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 4785
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchSimRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4787
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 708
    const-string v0, "finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 709
    return-void
.end method

.method public getAllEonsNames(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "MCCMNC"    # Ljava/lang/String;
    .param p2, "LAC"    # I

    .prologue
    .line 5325
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getAllEonsNames(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllEonsNames(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 7
    .param p1, "MCCMNC"    # Ljava/lang/String;
    .param p2, "LAC"    # I
    .param p3, "useLAC"    # Z

    .prologue
    const/4 v5, 0x0

    .line 5329
    const/4 v0, 0x0

    .line 5331
    .local v0, "EonsName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 5333
    .local v4, "operatorNumeric":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 5334
    const-string v6, "MCCMNC is null"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5384
    :goto_0
    return-object v5

    .line 5338
    :cond_0
    if-nez v4, :cond_1

    .line 5339
    const-string v6, "SIMOperatorNumeric is null"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5344
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->isMatchingHplmn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 5346
    .local v3, "isHPLMN":Z
    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsPNNExist:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsEnabledPNN:Z

    if-eqz v5, :cond_3

    .line 5347
    if-eqz v3, :cond_6

    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsOPLExist:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsEnabledOPL:Z

    if-nez v5, :cond_6

    .line 5348
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->PNN_Value:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v0, v5, v6

    .line 5365
    :cond_3
    :goto_1
    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->IsOnsExist:Z

    if-eqz v5, :cond_4

    if-nez v0, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->spn_cphs:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 5366
    if-eqz v3, :cond_9

    .line 5367
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->spn_cphs:Ljava/lang/String;

    .line 5373
    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 5374
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-gtz v5, :cond_5

    .line 5375
    const/4 v0, 0x0

    .line 5383
    .end local v3    # "isHPLMN":Z
    :cond_5
    :goto_3
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEonsName:Ljava/lang/String;

    move-object v5, v0

    .line 5384
    goto :goto_0

    .line 5349
    .restart local v3    # "isHPLMN":Z
    :cond_6
    :try_start_1
    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsOPLExist:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsEnabledOPL:Z

    if-eqz v5, :cond_3

    .line 5350
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    iget v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_count:I

    if-ge v2, v5, :cond_3

    .line 5351
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    aget-object v5, v5, v2

    if-eqz v5, :cond_8

    .line 5352
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_MCCMNC:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x1

    invoke-direct {p0, p1, v5, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->isMatchingHplmn(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz p3, :cond_7

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_LAC1:[I

    aget v5, v5, v2

    if-lt p2, v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_LAC2:[I

    aget v5, v5, v2

    if-gt p2, v5, :cond_8

    .line 5354
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_INDEX:[I

    aget v5, v5, v2

    if-eqz v5, :cond_3

    .line 5355
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->PNN_Value:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->OPL_INDEX:[I

    aget v6, v6, v2

    add-int/lit8 v6, v6, -0x1

    aget-object v0, v5, v6
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 5350
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 5369
    .end local v2    # "i":I
    :cond_9
    const/4 v0, 0x0

    goto :goto_2

    .line 5378
    .end local v3    # "isHPLMN":Z
    :catch_0
    move-exception v1

    .line 5379
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v5, "Got exception while searching for EONS name, falling back to null"

    invoke-virtual {p0, v5, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5380
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public getDisplayCondition()I
    .locals 1

    .prologue
    .line 4794
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    return v0
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 3
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 4809
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->spnDisplayRuleOverride:I

    if-lez v1, :cond_1

    .line 4810
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->spnDisplayRuleOverride:I

    .line 4834
    .local v0, "rule":I
    :cond_0
    :goto_0
    return v0

    .line 4811
    .end local v0    # "rule":I
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableSPN:Z

    if-nez v1, :cond_2

    .line 4812
    const-string v1, "[getDisplayRule] SPN service disabled (EF_UST)"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4813
    const/4 v0, 0x2

    .restart local v0    # "rule":I
    goto :goto_0

    .line 4814
    .end local v0    # "rule":I
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 4815
    :cond_3
    const-string v1, "[getDisplayRule] showing plmn only"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4817
    const/4 v0, 0x2

    .restart local v0    # "rule":I
    goto :goto_0

    .line 4818
    .end local v0    # "rule":I
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->isOnMatchingPlmn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4819
    const-string v1, "RWC"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEonsName:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 4820
    const/4 v0, 0x2

    .line 4823
    .restart local v0    # "rule":I
    :goto_1
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 4825
    :cond_5
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 4822
    .end local v0    # "rule":I
    :cond_6
    const/4 v0, 0x1

    .restart local v0    # "rule":I
    goto :goto_1

    .line 4828
    .end local v0    # "rule":I
    :cond_7
    const/4 v0, 0x2

    .line 4829
    .restart local v0    # "rule":I
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const-string v1, "RWC"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEonsName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4831
    :cond_8
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getFakeHomeOn()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 5521
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v2, :cond_1

    .line 5579
    :cond_0
    :goto_0
    return-object v1

    .line 5524
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 5562
    .local v0, "simOper":Ljava/lang/String;
    sget-boolean v2, Lcom/android/internal/telephony/uicc/SIMRecords;->SHIP_BUILD:Z

    if-nez v2, :cond_2

    .line 5563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFakeHomeOn() simOper["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], getIMSI()["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 5567
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v5, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5568
    const-string v1, "getFakeHomeOn() Check only MCC"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 5569
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/SpnOverride;->getFakeHomeOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5565
    :cond_2
    const-string v2, "getFakeHomeOn() simOper[******], getIMSI()[******]"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    goto :goto_1

    .line 5570
    :cond_3
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5571
    const-string v1, "getFakeHomeOn() Check MCC MNC"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 5572
    const-string v1, "LUX"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5573
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 5574
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/SpnOverride;->getFakeHomeOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 5577
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/uicc/SpnOverride;->getFakeHomeOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public getFakeRoamingOn()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 5586
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v1, :cond_0

    .line 5587
    const/4 v1, 0x0

    .line 5603
    :goto_0
    return-object v1

    .line 5590
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 5603
    .local v0, "simOper":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/uicc/SpnOverride;->getFakeRoamingOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getGid1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    return-object v0
.end method

.method public getGid2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 914
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const-string v0, "CTC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 916
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 917
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccIdfromFile()V

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    .line 925
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getO2payState()Lcom/android/internal/telephony/uicc/SIMRecords$O2Paystate;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 5610
    const-string v3, "gsm.sim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5611
    .local v2, "simState":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v1

    .line 5612
    .local v1, "simOper":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$O2Paystate;->NOT_READY:Lcom/android/internal/telephony/uicc/SIMRecords$O2Paystate;

    .line 5614
    .local v0, "result":Lcom/android/internal/telephony/uicc/SIMRecords$O2Paystate;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getO2payState SIMState["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]  MCCMNC["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5615
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "perso "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->perso:[B

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5616
    const-string v3, "23410"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5617
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableO2PERSO:Z

    if-ne v3, v5, :cond_2

    .line 5618
    const-string v3, "isAvailableO2PERSO is true"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5619
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->perso:[B

    if-nez v3, :cond_0

    .line 5620
    const-string v3, "It should not enter here!!!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5636
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The result of getO2payState is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5637
    return-object v0

    .line 5621
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->perso:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_1

    .line 5622
    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$O2Paystate;->O2_PostPay:Lcom/android/internal/telephony/uicc/SIMRecords$O2Paystate;

    goto :goto_0

    .line 5624
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$O2Paystate;->O2_PrePay:Lcom/android/internal/telephony/uicc/SIMRecords$O2Paystate;

    goto :goto_0

    .line 5627
    :cond_2
    const-string v3, "isAvailableO2PERSO is false. Check FDN"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5628
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableFDN:Z

    if-ne v3, v5, :cond_3

    .line 5629
    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$O2Paystate;->O2_PostPay:Lcom/android/internal/telephony/uicc/SIMRecords$O2Paystate;

    goto :goto_0

    .line 5631
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$O2Paystate;->O2_PrePay:Lcom/android/internal/telephony/uicc/SIMRecords$O2Paystate;

    goto :goto_0

    .line 5635
    :cond_4
    const-string v3, "SIM state is not READY or SIM card is not O2 SIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1436
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1437
    const-string v1, "getOperatorNumeric: IMSI == null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1447
    :goto_0
    return-object v0

    .line 1440
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-nez v1, :cond_2

    .line 1441
    :cond_1
    const-string v1, "getSIMOperatorNumeric: bad mncLength"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1447
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPsismsc()[B
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPsismsc:[B

    return-object v0
.end method

.method public getSMSS()V
    .locals 3

    .prologue
    .line 5648
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIncreaseTPMR:Z

    .line 5649
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f43

    const/16 v2, 0x208

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 5650
    return-void
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4840
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->spnOverride:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4841
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->spnOverride:Ljava/lang/String;

    .line 4843
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSktIMSIM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSktImsiM:Ljava/lang/String;

    return-object v0
.end method

.method public getSktIRM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSktIrm:Ljava/lang/String;

    return-object v0
.end method

.method public getSponImsi()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 5167
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSponImsi:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSponImsi:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    return-object v0
.end method

.method public getVideoCallForwardingFlag()I
    .locals 1

    .prologue
    .line 5393
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    return v0
.end method

.method public getVoiceCallForwardingFlag()I
    .locals 1

    .prologue
    .line 1205
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1165
    const/4 v2, 0x0

    .line 1166
    .local v2, "voiceMailWaiting":Z
    const/4 v0, 0x0

    .line 1167
    .local v0, "countVoiceMessages":I
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    if-eqz v5, :cond_3

    .line 1171
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    aget-byte v5, v5, v4

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    move v2, v3

    .line 1173
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " voiceMailWaiting Status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1174
    if-eqz v2, :cond_0

    .line 1175
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    aget-byte v3, v4, v3

    and-int/lit16 v0, v3, 0xff

    .line 1176
    if-nez v0, :cond_0

    .line 1178
    const/4 v0, -0x1

    .line 1182
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " VoiceMessageCount from SIM MWIS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1195
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v2, v4

    .line 1171
    goto :goto_0

    .line 1183
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    if-eqz v3, :cond_1

    .line 1185
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    aget-byte v3, v3, v4

    and-int/lit8 v1, v3, 0xf

    .line 1188
    .local v1, "indicator":I
    const/16 v3, 0xa

    if-ne v1, v3, :cond_5

    .line 1189
    const/4 v0, -0x1

    .line 1193
    :cond_4
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " VoiceMessageCount from SIM CPHS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1190
    :cond_5
    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    .line 1191
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 62
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1993
    const/16 v32, 0x0

    .line 1996
    .local v32, "isRecordLoadResponse":Z
    const/16 v47, -0x1

    .line 1997
    .local v47, "resAPDU":I
    const/16 v48, -0x1

    .line 1999
    .local v48, "resType":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2000
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received message "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " while being destroyed. Ignoring."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 3586
    :cond_0
    :goto_0
    return-void

    .line 2005
    :cond_1
    :try_start_0
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 3575
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccRecords;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3582
    :cond_2
    :goto_1
    if-eqz v32, :cond_0

    .line 3583
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    goto :goto_0

    .line 2007
    :sswitch_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onReady()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3577
    :catch_0
    move-exception v22

    .line 3579
    .local v22, "exc":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v4, "Exception parsing SIM record"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3582
    if-eqz v32, :cond_0

    .line 3583
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    goto :goto_0

    .line 2011
    .end local v22    # "exc":Ljava/lang/RuntimeException;
    :sswitch_1
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onLocked()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 3582
    :catchall_0
    move-exception v4

    if-eqz v32, :cond_3

    .line 3583
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    :cond_3
    throw v4

    .line 2016
    :sswitch_2
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onNWLocked()V

    goto :goto_1

    .line 2022
    :sswitch_3
    const/16 v32, 0x1

    .line 2024
    const-string v4, "EVENT_GET_IMSI_DONE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 2026
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2028
    .local v12, "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_5

    .line 2030
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v20

    .line 2031
    .local v20, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRetryCountGetImsi:I

    const/16 v6, 0x14

    if-ge v4, v6, :cond_4

    .line 2033
    const/16 v4, 0x320

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x1f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2034
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRetryCountGetImsi:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRetryCountGetImsi:I

    .line 2037
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception querying IMSI, Exception:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2041
    .end local v20    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_5
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    .line 2045
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x6

    if-lt v4, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0xf

    if-le v4, v6, :cond_7

    .line 2046
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid IMSI "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 2047
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    .line 2050
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMSI: mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2052
    const-string v4, "IMSI: xxxxxxx"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2055
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x6

    if-lt v4, v6, :cond_9

    .line 2057
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v41

    .line 2058
    .local v41, "mccmncCode":Ljava/lang/String;
    sget-object v13, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .local v13, "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v36, v0

    .local v36, "len$":I
    const/16 v25, 0x0

    .local v25, "i$":I
    :goto_2
    move/from16 v0, v25

    move/from16 v1, v36

    if-ge v0, v1, :cond_9

    aget-object v40, v13, v25

    .line 2059
    .local v40, "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2060
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2061
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMSI: setting1 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2068
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v25    # "i$":I
    .end local v36    # "len$":I
    .end local v40    # "mccmnc":Ljava/lang/String;
    .end local v41    # "mccmncCode":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_a

    .line 2073
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    .line 2074
    .local v39, "mcc":I
    invoke-static/range {v39 .. v39}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2075
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting2 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2082
    .end local v39    # "mcc":I
    :cond_a
    :goto_3
    :try_start_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 2083
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update mccmnc="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2085
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2088
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2092
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 2093
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v55

    .line 2094
    .local v55, "sp":Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cf_imsikey"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, v55

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2096
    .local v11, "CF_Imsi":Ljava/lang/String;
    invoke-interface/range {v55 .. v55}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    .line 2097
    .local v19, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cf_imsikey"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2098
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2100
    if-eqz v11, :cond_12

    .line 2102
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cf_iconkey_voice"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, v55

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_voice:Z

    .line 2105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cf_iconkey_video"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, v55

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_video:Z

    .line 2123
    .end local v11    # "CF_Imsi":Ljava/lang/String;
    .end local v19    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v55    # "sp":Landroid/content/SharedPreferences;
    :cond_c
    :goto_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_2

    .line 2124
    const-string v4, "CTC"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2144
    :cond_d
    const-string v4, "CTC"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2146
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_f

    .line 2148
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    .line 2149
    .restart local v39    # "mcc":I
    invoke-static/range {v39 .. v39}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2155
    .end local v39    # "mcc":I
    :cond_f
    :goto_5
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "zqg test mMncLength: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2156
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v44

    .line 2157
    .local v44, "operator":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "zqg test set phone.getPhoneName() = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2158
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    .line 2159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "zqg test set PROPERTY_ICC_OPERATOR_NUMERIC to"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2160
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v6

    move-object/from16 v0, v44

    invoke-virtual {v4, v6, v0}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 2058
    .end local v44    # "operator":Ljava/lang/String;
    .restart local v13    # "arr$":[Ljava/lang/String;
    .restart local v25    # "i$":I
    .restart local v36    # "len$":I
    .restart local v40    # "mccmnc":Ljava/lang/String;
    .restart local v41    # "mccmncCode":Ljava/lang/String;
    :cond_10
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_2

    .line 2076
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v25    # "i$":I
    .end local v36    # "len$":I
    .end local v40    # "mccmnc":Ljava/lang/String;
    .end local v41    # "mccmncCode":Ljava/lang/String;
    :catch_1
    move-exception v18

    .line 2077
    .local v18, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2078
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Corrupt IMSI! setting3 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2108
    .end local v18    # "e":Ljava/lang/NumberFormatException;
    .restart local v11    # "CF_Imsi":Ljava/lang/String;
    .restart local v19    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v55    # "sp":Landroid/content/SharedPreferences;
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_voice:Z

    .line 2109
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_video:Z

    .line 2110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cf_iconkey_voice"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_voice:Z

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cf_iconkey_video"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_video:Z

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2112
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_4

    .line 2115
    :cond_12
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_voice:Z

    .line 2116
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_video:Z

    .line 2117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cf_iconkey_voice"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_voice:Z

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cf_iconkey_video"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_video:Z

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2119
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_4

    .line 2150
    .end local v11    # "CF_Imsi":Ljava/lang/String;
    .end local v19    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v55    # "sp":Landroid/content/SharedPreferences;
    :catch_2
    move-exception v18

    .line 2151
    .restart local v18    # "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2152
    const-string v4, "Corrupt IMSI!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2173
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "e":Ljava/lang/NumberFormatException;
    :sswitch_4
    const/16 v32, 0x1

    .line 2175
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2176
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 2178
    .local v17, "data":[B
    const/16 v33, 0x0

    .line 2179
    .local v33, "isValidMbdn":Z
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_14

    .line 2181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_MBI: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2184
    const/4 v4, 0x0

    aget-byte v4, v17, v4

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    .line 2187
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    const/16 v6, 0xff

    if-eq v4, v6, :cond_13

    .line 2188
    const-string v4, "Got valid mailbox number for MBDN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2189
    const/16 v33, 0x1

    .line 2202
    :cond_13
    :goto_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2204
    if-eqz v33, :cond_15

    .line 2206
    new-instance v4, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v4, v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v6, 0x6fc7

    const/16 v7, 0x6fc8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    const/4 v9, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 2195
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMBDN:Z

    const/4 v6, 0x1

    if-ne v4, v6, :cond_13

    .line 2196
    const-string v4, "EF MBI doens\'t exist. read EF MBDN with default record ID 1"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2197
    const/16 v33, 0x1

    .line 2198
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    goto :goto_6

    .line 2212
    :cond_15
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMBDN:Z

    .line 2214
    new-instance v4, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v4, v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v6, 0x6f17

    const/16 v7, 0x6f4a

    const/4 v8, 0x1

    const/16 v9, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 2227
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "data":[B
    .end local v33    # "isValidMbdn":Z
    :sswitch_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 2228
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    .line 2229
    const/16 v32, 0x1

    .line 2232
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_DisableEditingVMNumber"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 2233
    const-string v4, "SIMRecords"

    const-string v6, "Voicemail number is fixed"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsVoiceMailFixed:Z

    .line 2238
    :cond_16
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2240
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_18

    .line 2242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid or missing EF"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    const/16 v7, 0xb

    if-ne v4, v7, :cond_17

    const-string v4, "[MAILBOX]"

    :goto_7
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2248
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    const/4 v6, 0x6

    if-ne v4, v6, :cond_2

    .line 2252
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMBDN:Z

    .line 2254
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2255
    new-instance v4, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v4, v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v6, 0x6f17

    const/16 v7, 0x6f4a

    const/4 v8, 0x1

    const/16 v9, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 2242
    :cond_17
    const-string v4, "[MBDN]"

    goto :goto_7

    .line 2262
    :cond_18
    iget-object v5, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 2264
    .local v5, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VM: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    const/16 v7, 0xb

    if-ne v4, v7, :cond_19

    const-string v4, " EF[MAILBOX]"

    :goto_8
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2267
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1a

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    const/4 v6, 0x6

    if-ne v4, v6, :cond_1a

    .line 2272
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMBDN:Z

    .line 2274
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2275
    new-instance v4, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v4, v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v6, 0x6f17

    const/16 v7, 0x6f4a

    const/4 v8, 0x1

    const/16 v9, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 2264
    :cond_19
    const-string v4, " EF[MBDN]"

    goto :goto_8

    .line 2281
    :cond_1a
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 2282
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    goto/16 :goto_1

    .line 2286
    .end local v5    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    const/16 v32, 0x1

    .line 2288
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2290
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1b

    .line 2291
    const-string v4, "Invalid or missing EF[MSISDN]"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2295
    :cond_1b
    iget-object v5, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 2297
    .restart local v5    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    .line 2298
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTag:Ljava/lang/String;

    .line 2300
    const-string v4, "MSISDN: xxxxxxx"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2304
    .end local v5    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    const/16 v32, 0x0

    .line 2305
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2307
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1c

    .line 2308
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdn:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    .line 2309
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdnTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTag:Ljava/lang/String;

    .line 2310
    const-string v4, "Success to update EF[MSISDN]"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2313
    :cond_1c
    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 2314
    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2316
    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 2321
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :sswitch_8
    const/16 v32, 0x1

    .line 2323
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2324
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 2326
    .restart local v17    # "data":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_MWIS : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2328
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1d

    .line 2329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_GET_MWIS_DONE exception = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2332
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v6, 0x6f11

    const/16 v7, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2335
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_1

    .line 2340
    :cond_1d
    const/4 v4, 0x0

    aget-byte v4, v17, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v6, 0xff

    if-ne v4, v6, :cond_1e

    .line 2341
    const-string v4, "SIMRecords: Uninitialized record MWIS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2343
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v6, 0x6f11

    const/16 v7, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2346
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_1

    .line 2351
    :cond_1e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_SupportOrangeCPHS"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 2352
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v6, 0x6f11

    const/16 v7, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2355
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2357
    :cond_1f
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    goto/16 :goto_1

    .line 2363
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "data":[B
    :sswitch_9
    const/16 v32, 0x1

    .line 2365
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2366
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 2368
    .restart local v17    # "data":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CPHS_MWI: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2370
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_20

    .line 2371
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE exception = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2376
    :cond_20
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    goto/16 :goto_1

    .line 2380
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "data":[B
    :sswitch_a
    const/16 v32, 0x1

    .line 2382
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2383
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 2385
    .restart local v17    # "data":[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 2390
    const-string v4, "ro.csc.countryiso_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->countryISO:Ljava/lang/String;

    .line 2391
    const-string v4, "CN"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->countryISO:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 2392
    const/4 v4, 0x0

    move-object/from16 v0, v17

    array-length v6, v0

    move-object/from16 v0, v17

    invoke-static {v0, v4, v6}, Lcom/android/internal/telephony/uicc/IccUtils;->ICCIDbcdToString([BII)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    .line 2404
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccIdReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2408
    sget-boolean v4, Lcom/android/internal/telephony/uicc/SIMRecords;->SHIP_BUILD:Z

    if-nez v4, :cond_28

    .line 2409
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_GET_ICCID_DONE mIccId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2414
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    if-eqz v4, :cond_21

    .line 2415
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkSimChanged()V

    .line 2419
    :cond_21
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_22

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2422
    :cond_22
    const-string v31, "IS_CTC"

    .line 2423
    .local v31, "isCTC":Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    if-ne v4, v6, :cond_23

    .line 2424
    const-string v31, "IS_CTC2"

    .line 2426
    :cond_23
    const-string v4, "3"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    const-string v4, "4"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 2427
    :cond_24
    const/16 v37, 0x0

    .line 2428
    .local v37, "mIccId_mmccii":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x6

    if-le v4, v6, :cond_2

    .line 2429
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    .line 2430
    const-string v4, "898603"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    const-string v4, "898611"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2431
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, v31

    invoke-static {v4, v0, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 2396
    .end local v31    # "isCTC":Ljava/lang/String;
    .end local v37    # "mIccId_mmccii":Ljava/lang/String;
    :cond_26
    move-object/from16 v0, v17

    array-length v4, v0

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->isIccIdHasChar([BI)I

    move-result v4

    const/16 v6, 0xff

    if-ne v4, v6, :cond_27

    .line 2397
    const/4 v4, 0x0

    move-object/from16 v0, v17

    array-length v6, v0

    move-object/from16 v0, v17

    invoke-static {v0, v4, v6}, Lcom/android/internal/telephony/uicc/IccUtils;->ICCIDbcdToString([BII)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    goto/16 :goto_9

    .line 2399
    :cond_27
    const/4 v4, 0x0

    move-object/from16 v0, v17

    array-length v6, v0

    move-object/from16 v0, v17

    invoke-static {v0, v4, v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    goto/16 :goto_9

    .line 2411
    :cond_28
    const-string v4, "EVENT_GET_ICCID_DONE mIccId: ******"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 2435
    .restart local v31    # "isCTC":Ljava/lang/String;
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, v31

    invoke-static {v4, v0, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 2441
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "data":[B
    .end local v31    # "isCTC":Ljava/lang/String;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2442
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 2444
    .restart local v17    # "data":[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 2449
    const-string v4, "ro.csc.countryiso_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->countryISO:Ljava/lang/String;

    .line 2450
    const-string v4, "CN"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->countryISO:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 2451
    const/4 v4, 0x0

    move-object/from16 v0, v17

    array-length v6, v0

    move-object/from16 v0, v17

    invoke-static {v0, v4, v6}, Lcom/android/internal/telephony/uicc/IccUtils;->ICCIDbcdToString([BII)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    .line 2463
    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccIdReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2465
    sget-boolean v4, Lcom/android/internal/telephony/uicc/SIMRecords;->SHIP_BUILD:Z

    if-nez v4, :cond_33

    .line 2466
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_GET_ICCID_WHEN_LOCKED_DONE mIccId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2472
    :goto_c
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v45

    .line 2474
    .local v45, "phoneRestrictionPolicy":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    const/16 v24, 0x0

    .line 2475
    .local v24, "hasSimLockedByAdmin":Z
    if-eqz v45, :cond_2a

    .line 2476
    const/4 v4, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v24

    .line 2478
    :cond_2a
    if-eqz v24, :cond_2b

    .line 2479
    new-instance v29, Landroid/content/Intent;

    const-string v4, "com.android.server.enterprise.ICCID_AVAILABLE"

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2480
    .local v29, "intent2":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2481
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_GET_ICCID_WHEN_LOCKED_DONE, icc = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2506
    .end local v29    # "intent2":Landroid/content/Intent;
    :cond_2b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_ConfigPolicyForSettingLanguageBySIM"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 2507
    .local v35, "languagePolicy":Ljava/lang/String;
    if-eqz v35, :cond_2c

    const-string v4, "UseIccidToGetCountryCode"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 2508
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    if-eqz v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x4

    if-lt v4, v6, :cond_2c

    .line 2509
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    const/4 v6, 0x2

    const/4 v7, 0x4

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 2511
    .local v16, "countryCode":Ljava/lang/String;
    const-string v4, "34"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 2512
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    const-string v6, "es"

    const-string v7, "es"

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2526
    .end local v16    # "countryCode":Ljava/lang/String;
    :cond_2c
    :goto_d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2d

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2529
    :cond_2d
    const-string v31, "IS_CTC"

    .line 2530
    .restart local v31    # "isCTC":Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    if-ne v4, v6, :cond_2e

    .line 2531
    const-string v31, "IS_CTC2"

    .line 2533
    :cond_2e
    const-string v4, "3"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    const-string v4, "4"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 2534
    :cond_2f
    const/16 v37, 0x0

    .line 2535
    .restart local v37    # "mIccId_mmccii":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x6

    if-le v4, v6, :cond_2

    .line 2536
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    .line 2537
    const-string v4, "898603"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    const-string v4, "898611"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2538
    :cond_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, v31

    invoke-static {v4, v0, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 2455
    .end local v24    # "hasSimLockedByAdmin":Z
    .end local v31    # "isCTC":Ljava/lang/String;
    .end local v35    # "languagePolicy":Ljava/lang/String;
    .end local v37    # "mIccId_mmccii":Ljava/lang/String;
    .end local v45    # "phoneRestrictionPolicy":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    :cond_31
    move-object/from16 v0, v17

    array-length v4, v0

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->isIccIdHasChar([BI)I

    move-result v4

    const/16 v6, 0xff

    if-ne v4, v6, :cond_32

    .line 2456
    const/4 v4, 0x0

    move-object/from16 v0, v17

    array-length v6, v0

    move-object/from16 v0, v17

    invoke-static {v0, v4, v6}, Lcom/android/internal/telephony/uicc/IccUtils;->ICCIDbcdToString([BII)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    goto/16 :goto_b

    .line 2458
    :cond_32
    const/4 v4, 0x0

    move-object/from16 v0, v17

    array-length v6, v0

    move-object/from16 v0, v17

    invoke-static {v0, v4, v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    goto/16 :goto_b

    .line 2468
    :cond_33
    const-string v4, "EVENT_GET_ICCID_WHEN_LOCKED_DONE mIccId: ******"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 2513
    .restart local v16    # "countryCode":Ljava/lang/String;
    .restart local v24    # "hasSimLockedByAdmin":Z
    .restart local v35    # "languagePolicy":Ljava/lang/String;
    .restart local v45    # "phoneRestrictionPolicy":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    :cond_34
    const-string v4, "33"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 2514
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    const-string v6, "fr"

    const-string v7, "fr"

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 2515
    :cond_35
    const-string v4, "48"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 2516
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    const-string v6, "pl"

    const-string v7, "pl"

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 2517
    :cond_36
    const-string v4, "40"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 2518
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    const-string v6, "ro"

    const-string v7, "ro"

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 2519
    :cond_37
    const-string v4, "421"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    const/4 v7, 0x2

    const/4 v8, 0x5

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 2520
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    const-string v6, "sk"

    const-string v7, "sk"

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 2542
    .end local v16    # "countryCode":Ljava/lang/String;
    .restart local v31    # "isCTC":Ljava/lang/String;
    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, v31

    invoke-static {v4, v0, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 2549
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "data":[B
    .end local v24    # "hasSimLockedByAdmin":Z
    .end local v31    # "isCTC":Ljava/lang/String;
    .end local v35    # "languagePolicy":Ljava/lang/String;
    .end local v45    # "phoneRestrictionPolicy":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    :sswitch_c
    const/16 v32, 0x1

    .line 2551
    :try_start_9
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2552
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 2554
    .restart local v17    # "data":[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v4, :cond_45

    .line 2581
    :try_start_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_39

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_39

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_3a

    :cond_39
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_3a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x6

    if-lt v4, v6, :cond_3a

    .line 2583
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v41

    .line 2584
    .restart local v41    # "mccmncCode":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mccmncCode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2585
    sget-object v13, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v13    # "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v36, v0

    .restart local v36    # "len$":I
    const/16 v25, 0x0

    .restart local v25    # "i$":I
    :goto_e
    move/from16 v0, v25

    move/from16 v1, v36

    if-ge v0, v1, :cond_3a

    aget-object v40, v13, v25

    .line 2586
    .restart local v40    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 2587
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2588
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting6 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2594
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v25    # "i$":I
    .end local v36    # "len$":I
    .end local v40    # "mccmnc":Ljava/lang/String;
    .end local v41    # "mccmncCode":Ljava/lang/String;
    :cond_3a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_3b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_3c

    .line 2595
    :cond_3b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v4, :cond_3f

    .line 2597
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    .line 2599
    .restart local v39    # "mcc":I
    invoke-static/range {v39 .. v39}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2600
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting7 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2611
    .end local v39    # "mcc":I
    :cond_3c
    :goto_f
    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_3d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_3d

    .line 2614
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_41

    const-string v4, "CTC"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 2616
    const-string v4, "gsm.sim.selectnetwork"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 2617
    .local v52, "simselswitch":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simselswitch = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2618
    const-string v4, "CDMA"

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    if-nez v4, :cond_40

    .line 2619
    const-string v4, "do not set PROPERTY_ICC_OPERATOR_NUMERIC in case of slot1 cdma switching"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2639
    .end local v52    # "simselswitch":Ljava/lang/String;
    :cond_3d
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_1

    .line 2585
    .restart local v13    # "arr$":[Ljava/lang/String;
    .restart local v25    # "i$":I
    .restart local v36    # "len$":I
    .restart local v40    # "mccmnc":Ljava/lang/String;
    .restart local v41    # "mccmncCode":Ljava/lang/String;
    :cond_3e
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_e

    .line 2601
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v25    # "i$":I
    .end local v36    # "len$":I
    .end local v40    # "mccmnc":Ljava/lang/String;
    .end local v41    # "mccmncCode":Ljava/lang/String;
    :catch_3
    move-exception v18

    .line 2602
    .restart local v18    # "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2603
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Corrupt IMSI! setting8 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 2607
    .end local v18    # "e":Ljava/lang/NumberFormatException;
    :cond_3f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MNC length not present in EF_AD setting9 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 2621
    .restart local v52    # "simselswitch":Ljava/lang/String;
    :cond_40
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_10

    .line 2624
    .end local v52    # "simselswitch":Ljava/lang/String;
    :cond_41
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_42

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 2627
    :cond_42
    const-string v4, "gsm.sim.sixmode"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    const-string v7, "GSM"

    invoke-static {v4, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 2628
    .local v53, "sixmode":Ljava/lang/String;
    const-string v4, "GSM"

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    const-string v4, "1"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    const-string v4, "2"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 2629
    :cond_43
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_10

    .line 2633
    .end local v53    # "sixmode":Ljava/lang/String;
    :cond_44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update mccmnc="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2634
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_10

    .line 2558
    :cond_45
    :try_start_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_AD: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2560
    move-object/from16 v0, v17

    array-length v4, v0

    const/4 v6, 0x3

    if-ge v4, v6, :cond_52

    .line 2561
    const-string v4, "Corrupt AD data on SIM"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 2581
    :try_start_e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_46

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_46

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_47

    :cond_46
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_47

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x6

    if-lt v4, v6, :cond_47

    .line 2583
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v41

    .line 2584
    .restart local v41    # "mccmncCode":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mccmncCode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2585
    sget-object v13, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v13    # "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v36, v0

    .restart local v36    # "len$":I
    const/16 v25, 0x0

    .restart local v25    # "i$":I
    :goto_11
    move/from16 v0, v25

    move/from16 v1, v36

    if-ge v0, v1, :cond_47

    aget-object v40, v13, v25

    .line 2586
    .restart local v40    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 2587
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2588
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting6 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2594
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v25    # "i$":I
    .end local v36    # "len$":I
    .end local v40    # "mccmnc":Ljava/lang/String;
    .end local v41    # "mccmncCode":Ljava/lang/String;
    :cond_47
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_48

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_49

    .line 2595
    :cond_48
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v4, :cond_4c

    .line 2597
    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    .line 2599
    .restart local v39    # "mcc":I
    invoke-static/range {v39 .. v39}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2600
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting7 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 2611
    .end local v39    # "mcc":I
    :cond_49
    :goto_12
    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_4a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_4a

    .line 2614
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_4e

    const-string v4, "CTC"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 2616
    const-string v4, "gsm.sim.selectnetwork"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 2617
    .restart local v52    # "simselswitch":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simselswitch = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2618
    const-string v4, "CDMA"

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    if-nez v4, :cond_4d

    .line 2619
    const-string v4, "do not set PROPERTY_ICC_OPERATOR_NUMERIC in case of slot1 cdma switching"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2639
    .end local v52    # "simselswitch":Ljava/lang/String;
    :cond_4a
    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_1

    .line 2585
    .restart local v13    # "arr$":[Ljava/lang/String;
    .restart local v25    # "i$":I
    .restart local v36    # "len$":I
    .restart local v40    # "mccmnc":Ljava/lang/String;
    .restart local v41    # "mccmncCode":Ljava/lang/String;
    :cond_4b
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_11

    .line 2601
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v25    # "i$":I
    .end local v36    # "len$":I
    .end local v40    # "mccmnc":Ljava/lang/String;
    .end local v41    # "mccmncCode":Ljava/lang/String;
    :catch_4
    move-exception v18

    .line 2602
    .restart local v18    # "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2603
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Corrupt IMSI! setting8 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 2607
    .end local v18    # "e":Ljava/lang/NumberFormatException;
    :cond_4c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MNC length not present in EF_AD setting9 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 2621
    .restart local v52    # "simselswitch":Ljava/lang/String;
    :cond_4d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_13

    .line 2624
    .end local v52    # "simselswitch":Ljava/lang/String;
    :cond_4e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4f

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 2627
    :cond_4f
    const-string v4, "gsm.sim.sixmode"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    const-string v7, "GSM"

    invoke-static {v4, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 2628
    .restart local v53    # "sixmode":Ljava/lang/String;
    const-string v4, "GSM"

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    const-string v4, "1"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    const-string v4, "2"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 2629
    :cond_50
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_13

    .line 2633
    .end local v53    # "sixmode":Ljava/lang/String;
    :cond_51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update mccmnc="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2634
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_13

    .line 2565
    :cond_52
    :try_start_11
    move-object/from16 v0, v17

    array-length v4, v0

    const/4 v6, 0x3

    if-ne v4, v6, :cond_5f

    .line 2566
    const-string v4, "MNC length not present in EF_AD"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 2581
    :try_start_12
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_53

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_53

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_54

    :cond_53
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_54

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x6

    if-lt v4, v6, :cond_54

    .line 2583
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v41

    .line 2584
    .restart local v41    # "mccmncCode":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mccmncCode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2585
    sget-object v13, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v13    # "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v36, v0

    .restart local v36    # "len$":I
    const/16 v25, 0x0

    .restart local v25    # "i$":I
    :goto_14
    move/from16 v0, v25

    move/from16 v1, v36

    if-ge v0, v1, :cond_54

    aget-object v40, v13, v25

    .line 2586
    .restart local v40    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 2587
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2588
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting6 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2594
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v25    # "i$":I
    .end local v36    # "len$":I
    .end local v40    # "mccmnc":Ljava/lang/String;
    .end local v41    # "mccmncCode":Ljava/lang/String;
    :cond_54
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_55

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_56

    .line 2595
    :cond_55
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-eqz v4, :cond_59

    .line 2597
    :try_start_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    .line 2599
    .restart local v39    # "mcc":I
    invoke-static/range {v39 .. v39}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2600
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting7 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 2611
    .end local v39    # "mcc":I
    :cond_56
    :goto_15
    :try_start_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_57

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_57

    .line 2614
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_5b

    const-string v4, "CTC"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 2616
    const-string v4, "gsm.sim.selectnetwork"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 2617
    .restart local v52    # "simselswitch":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simselswitch = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2618
    const-string v4, "CDMA"

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    if-nez v4, :cond_5a

    .line 2619
    const-string v4, "do not set PROPERTY_ICC_OPERATOR_NUMERIC in case of slot1 cdma switching"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2639
    .end local v52    # "simselswitch":Ljava/lang/String;
    :cond_57
    :goto_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_1

    .line 2585
    .restart local v13    # "arr$":[Ljava/lang/String;
    .restart local v25    # "i$":I
    .restart local v36    # "len$":I
    .restart local v40    # "mccmnc":Ljava/lang/String;
    .restart local v41    # "mccmncCode":Ljava/lang/String;
    :cond_58
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_14

    .line 2601
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v25    # "i$":I
    .end local v36    # "len$":I
    .end local v40    # "mccmnc":Ljava/lang/String;
    .end local v41    # "mccmncCode":Ljava/lang/String;
    :catch_5
    move-exception v18

    .line 2602
    .restart local v18    # "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2603
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Corrupt IMSI! setting8 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 2607
    .end local v18    # "e":Ljava/lang/NumberFormatException;
    :cond_59
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MNC length not present in EF_AD setting9 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 2621
    .restart local v52    # "simselswitch":Ljava/lang/String;
    :cond_5a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_16

    .line 2624
    .end local v52    # "simselswitch":Ljava/lang/String;
    :cond_5b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5c

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 2627
    :cond_5c
    const-string v4, "gsm.sim.sixmode"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    const-string v7, "GSM"

    invoke-static {v4, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 2628
    .restart local v53    # "sixmode":Ljava/lang/String;
    const-string v4, "GSM"

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d

    const-string v4, "1"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d

    const-string v4, "2"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 2629
    :cond_5d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_16

    .line 2633
    .end local v53    # "sixmode":Ljava/lang/String;
    :cond_5e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update mccmnc="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2634
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_16

    .line 2570
    :cond_5f
    const/4 v4, 0x3

    :try_start_15
    aget-byte v4, v17, v4

    and-int/lit8 v4, v4, 0xf

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2571
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting4 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2573
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/16 v6, 0xf

    if-ne v4, v6, :cond_66

    .line 2574
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2575
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting5 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 2581
    :cond_60
    :goto_17
    :try_start_16
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_61

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_61

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_62

    :cond_61
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_62

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x6

    if-lt v4, v6, :cond_62

    .line 2583
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v41

    .line 2584
    .restart local v41    # "mccmncCode":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mccmncCode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2585
    sget-object v13, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v13    # "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v36, v0

    .restart local v36    # "len$":I
    const/16 v25, 0x0

    .restart local v25    # "i$":I
    :goto_18
    move/from16 v0, v25

    move/from16 v1, v36

    if-ge v0, v1, :cond_62

    aget-object v40, v13, v25

    .line 2586
    .restart local v40    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 2587
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2588
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting6 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2594
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v25    # "i$":I
    .end local v36    # "len$":I
    .end local v40    # "mccmnc":Ljava/lang/String;
    .end local v41    # "mccmncCode":Ljava/lang/String;
    :cond_62
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_63

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_64

    .line 2595
    :cond_63
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    if-eqz v4, :cond_6d

    .line 2597
    :try_start_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    .line 2599
    .restart local v39    # "mcc":I
    invoke-static/range {v39 .. v39}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2600
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting7 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 2611
    .end local v39    # "mcc":I
    :cond_64
    :goto_19
    :try_start_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_65

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_65

    .line 2614
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_6f

    const-string v4, "CTC"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 2616
    const-string v4, "gsm.sim.selectnetwork"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 2617
    .restart local v52    # "simselswitch":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simselswitch = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2618
    const-string v4, "CDMA"

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    if-nez v4, :cond_6e

    .line 2619
    const-string v4, "do not set PROPERTY_ICC_OPERATOR_NUMERIC in case of slot1 cdma switching"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2639
    .end local v52    # "simselswitch":Ljava/lang/String;
    :cond_65
    :goto_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto/16 :goto_1

    .line 2576
    :cond_66
    :try_start_19
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_60

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_60

    .line 2577
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2578
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting5 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    goto/16 :goto_17

    .line 2581
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "data":[B
    :catchall_1
    move-exception v4

    :try_start_1a
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_67

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v6, :cond_67

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_68

    :cond_67
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v6, :cond_68

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x6

    if-lt v6, v7, :cond_68

    .line 2583
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v41

    .line 2584
    .restart local v41    # "mccmncCode":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mccmncCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2585
    sget-object v13, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .restart local v13    # "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v36, v0

    .restart local v36    # "len$":I
    const/16 v25, 0x0

    .restart local v25    # "i$":I
    :goto_1b
    move/from16 v0, v25

    move/from16 v1, v36

    if-ge v0, v1, :cond_68

    aget-object v40, v13, v25

    .line 2586
    .restart local v40    # "mccmnc":Ljava/lang/String;
    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 2587
    const/4 v6, 0x3

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2588
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setting6 mMncLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2594
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v25    # "i$":I
    .end local v36    # "len$":I
    .end local v40    # "mccmnc":Ljava/lang/String;
    .end local v41    # "mccmncCode":Ljava/lang/String;
    :cond_68
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v6, :cond_69

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6a

    .line 2595
    :cond_69
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    if-eqz v6, :cond_74

    .line 2597
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    .line 2599
    .restart local v39    # "mcc":I
    invoke-static/range {v39 .. v39}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2600
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setting7 mMncLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1b} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 2611
    .end local v39    # "mcc":I
    :cond_6a
    :goto_1c
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v6, :cond_6b

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v6, :cond_6b

    .line 2614
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_76

    const-string v6, "CTC"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_76

    .line 2616
    const-string v6, "gsm.sim.selectnetwork"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 2617
    .restart local v52    # "simselswitch":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "simselswitch = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v52

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2618
    const-string v6, "CDMA"

    move-object/from16 v0, v52

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    if-nez v6, :cond_75

    .line 2619
    const-string v6, "do not set PROPERTY_ICC_OPERATOR_NUMERIC in case of slot1 cdma switching"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2639
    .end local v52    # "simselswitch":Ljava/lang/String;
    :cond_6b
    :goto_1d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    throw v4

    .line 2585
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    .restart local v13    # "arr$":[Ljava/lang/String;
    .restart local v17    # "data":[B
    .restart local v25    # "i$":I
    .restart local v36    # "len$":I
    .restart local v40    # "mccmnc":Ljava/lang/String;
    .restart local v41    # "mccmncCode":Ljava/lang/String;
    :cond_6c
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_18

    .line 2601
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v25    # "i$":I
    .end local v36    # "len$":I
    .end local v40    # "mccmnc":Ljava/lang/String;
    .end local v41    # "mccmncCode":Ljava/lang/String;
    :catch_6
    move-exception v18

    .line 2602
    .restart local v18    # "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2603
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Corrupt IMSI! setting8 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 2607
    .end local v18    # "e":Ljava/lang/NumberFormatException;
    :cond_6d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MNC length not present in EF_AD setting9 mMncLength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 2621
    .restart local v52    # "simselswitch":Ljava/lang/String;
    :cond_6e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_1a

    .line 2624
    .end local v52    # "simselswitch":Ljava/lang/String;
    :cond_6f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_70

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 2627
    :cond_70
    const-string v4, "gsm.sim.sixmode"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    const-string v7, "GSM"

    invoke-static {v4, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 2628
    .restart local v53    # "sixmode":Ljava/lang/String;
    const-string v4, "GSM"

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_71

    const-string v4, "1"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_71

    const-string v4, "2"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 2629
    :cond_71
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_1a

    .line 2633
    .end local v53    # "sixmode":Ljava/lang/String;
    :cond_72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update mccmnc="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2634
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_1a

    .line 2585
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "data":[B
    .restart local v13    # "arr$":[Ljava/lang/String;
    .restart local v25    # "i$":I
    .restart local v36    # "len$":I
    .restart local v40    # "mccmnc":Ljava/lang/String;
    .restart local v41    # "mccmncCode":Ljava/lang/String;
    :cond_73
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_1b

    .line 2601
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v25    # "i$":I
    .end local v36    # "len$":I
    .end local v40    # "mccmnc":Ljava/lang/String;
    .end local v41    # "mccmncCode":Ljava/lang/String;
    :catch_7
    move-exception v18

    .line 2602
    .restart local v18    # "e":Ljava/lang/NumberFormatException;
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2603
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Corrupt IMSI! setting8 mMncLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 2607
    .end local v18    # "e":Ljava/lang/NumberFormatException;
    :cond_74
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2608
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MNC length not present in EF_AD setting9 mMncLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 2621
    .restart local v52    # "simselswitch":Ljava/lang/String;
    :cond_75
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v9, v9, 0x3

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_1d

    .line 2624
    .end local v52    # "simselswitch":Ljava/lang/String;
    :cond_76
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_77

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_79

    .line 2627
    :cond_77
    const-string v6, "gsm.sim.sixmode"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v7

    const-string v8, "GSM"

    invoke-static {v6, v7, v8}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 2628
    .restart local v53    # "sixmode":Ljava/lang/String;
    const-string v6, "GSM"

    move-object/from16 v0, v53

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_78

    const-string v6, "1"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_78

    const-string v6, "2"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 2629
    :cond_78
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v9, v9, 0x3

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_1d

    .line 2633
    .end local v53    # "sixmode":Ljava/lang/String;
    :cond_79
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update mccmnc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v9, v9, 0x3

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2634
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v9, v9, 0x3

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_1d

    .line 2645
    :sswitch_d
    const/16 v32, 0x1

    .line 2646
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2647
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v12}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 2651
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :sswitch_e
    const/16 v32, 0x1

    .line 2653
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2654
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 2656
    .restart local v17    # "data":[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_7a

    .line 2658
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->notifyCallForwardIndication()V

    goto/16 :goto_1

    .line 2663
    :cond_7a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CFF_CPHS: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2664
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    .line 2666
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_SupportOrangeCPHS"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 2668
    const/4 v15, 0x0

    .line 2669
    .local v15, "bUpdated":Z
    const/4 v4, 0x0

    aget-byte v4, v17, v4

    and-int/lit8 v4, v4, 0xf

    const/16 v6, 0xa

    if-ne v4, v6, :cond_7e

    const/16 v61, 0x1

    .line 2670
    .local v61, "voiceForwarding_cff_cphs":Z
    :goto_1e
    const/16 v60, 0x0

    .line 2671
    .local v60, "videoForwarding_cff_cphs":Z
    move-object/from16 v0, v17

    array-length v4, v0

    const/4 v6, 0x1

    if-le v4, v6, :cond_7b

    .line 2672
    const/4 v4, 0x1

    aget-byte v4, v17, v4

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    const/16 v6, 0xa

    if-ne v4, v6, :cond_7f

    const/16 v60, 0x1

    .line 2676
    :cond_7b
    :goto_1f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    if-nez v4, :cond_7c

    if-eqz v61, :cond_7c

    .line 2677
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    .line 2678
    const/4 v15, 0x1

    .line 2681
    :cond_7c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    if-nez v4, :cond_7d

    if-eqz v60, :cond_7d

    .line 2682
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    .line 2683
    const/4 v15, 0x1

    .line 2686
    :cond_7d
    if-eqz v15, :cond_2

    .line 2687
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update Orange CFF CPHS : voicecall - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", videocall - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2688
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2669
    .end local v60    # "videoForwarding_cff_cphs":Z
    .end local v61    # "voiceForwarding_cff_cphs":Z
    :cond_7e
    const/16 v61, 0x0

    goto :goto_1e

    .line 2672
    .restart local v60    # "videoForwarding_cff_cphs":Z
    .restart local v61    # "voiceForwarding_cff_cphs":Z
    :cond_7f
    const/16 v60, 0x0

    goto :goto_1f

    .line 2696
    .end local v15    # "bUpdated":Z
    .end local v60    # "videoForwarding_cff_cphs":Z
    .end local v61    # "voiceForwarding_cff_cphs":Z
    :cond_80
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->validEfCfis([B)Z

    move-result v4

    if-nez v4, :cond_84

    .line 2702
    const/4 v4, 0x0

    aget-byte v4, v17, v4

    and-int/lit8 v4, v4, 0xf

    const/16 v6, 0xa

    if-ne v4, v6, :cond_82

    const/4 v4, 0x1

    :goto_20
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    .line 2705
    move-object/from16 v0, v17

    array-length v4, v0

    const/4 v6, 0x1

    if-le v4, v6, :cond_81

    .line 2706
    const/4 v4, 0x1

    aget-byte v4, v17, v4

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    const/16 v6, 0xa

    if-ne v4, v6, :cond_83

    const/4 v4, 0x1

    :goto_21
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    .line 2710
    :cond_81
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2702
    :cond_82
    const/4 v4, 0x0

    goto :goto_20

    .line 2706
    :cond_83
    const/4 v4, 0x0

    goto :goto_21

    .line 2712
    :cond_84
    const-string v4, "EVENT_GET_CFF_DONE: EF_CFIS is valid, ignoring EF_CFF_CPHS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2717
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "data":[B
    :sswitch_f
    const/16 v32, 0x1

    .line 2719
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2720
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 2722
    .restart local v17    # "data":[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 2726
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->parseEfSpdi([B)V

    goto/16 :goto_1

    .line 2730
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "data":[B
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2731
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 2732
    const-string v4, "update failed. "

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 2737
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :sswitch_11
    const/16 v32, 0x1

    .line 2739
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2744
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_85

    .line 2745
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2746
    new-instance v28, Landroid/content/Intent;

    const-string v4, "com.movial.gba_initialized"

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2747
    .local v28, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2767
    .end local v28    # "intent":Landroid/content/Intent;
    :cond_85
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 2768
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGbaRecordsRequested:Z

    .line 2771
    :cond_86
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->handlePNN(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 2775
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :sswitch_12
    const/16 v32, 0x1

    .line 2777
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2778
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 2781
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSmses(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 2785
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :sswitch_13
    const-string v4, "ENF"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "marked read: sms "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2790
    :sswitch_14
    const/16 v32, 0x0

    .line 2792
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2794
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v0, v4

    check-cast v0, [I

    move-object/from16 v27, v0

    .line 2796
    .local v27, "index":[I
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_87

    move-object/from16 v0, v27

    array-length v4, v0

    const/4 v6, 0x1

    if-eq v4, v6, :cond_88

    .line 2797
    :cond_87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error on SMS_ON_SIM with exp "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " length "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    array-length v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2800
    :cond_88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "READ EF_SMS RECORD index="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x0

    aget v6, v27, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2801
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v6, 0x6f3c

    const/4 v7, 0x0

    aget v7, v27, v7

    const/16 v8, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_1

    .line 2807
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v27    # "index":[I
    :sswitch_15
    const/16 v32, 0x0

    .line 2808
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2809
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_89

    .line 2810
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSms([B)V

    goto/16 :goto_1

    .line 2812
    :cond_89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error on GET_SMS with exp "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2816
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :sswitch_16
    const/16 v32, 0x1

    .line 2819
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIccType ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 2822
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2823
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 2825
    .restart local v17    # "data":[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 2829
    new-instance v4, Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Lcom/android/internal/telephony/uicc/UsimServiceTable;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    .line 2832
    const-string v4, "1"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 2833
    const-string v4, "SST read done."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2838
    :cond_8a
    :goto_22
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkSMSPavailable([B)V

    .line 2839
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkEONSavailable([B)V

    .line 2840
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkFDNavailable([B)V

    .line 2841
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkSDNavailable([B)V

    .line 2842
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkCHV1available([B)V

    .line 2843
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkSPNavailable([B)V

    .line 2844
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkMSISDNavailable([B)V

    .line 2845
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkSMSavailable([B)V

    .line 2846
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkMBDNavailable([B)V

    .line 2847
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkMWISavailable([B)V

    .line 2848
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkCFISavailable([B)V

    .line 2850
    const-string v4, "ATT"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8b

    const-string v4, "AIO"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 2852
    :cond_8b
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkOCSGLAvailable([B)V

    .line 2854
    :cond_8c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkPSISMSCavailable([B)V

    goto/16 :goto_1

    .line 2834
    :cond_8d
    const-string v4, "2"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 2835
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UST : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_22

    .line 2860
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "data":[B
    :sswitch_17
    const/16 v32, 0x1

    .line 2861
    const-string v4, "EVENT_GET_EPSLOCI_DONE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2862
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2864
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 2868
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEpsloci:[B

    .line 2869
    const/4 v4, 0x6

    new-array v0, v4, [B

    move-object/from16 v56, v0

    .line 2870
    .local v56, "taieps":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mEpsloci: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEpsloci:[B

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2871
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEpsloci:[B

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v8, 0x6

    move-object/from16 v0, v56

    invoke-static {v4, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2872
    invoke-static/range {v56 .. v56}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    const-string v6, "ffffffffffff"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8e

    invoke-static/range {v56 .. v56}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    const-string v6, "FFFFFFFFFFFF"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 2874
    :cond_8e
    const-string v4, "taieps is null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2877
    :cond_8f
    invoke-static/range {v56 .. v56}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTaiEps:Ljava/lang/String;

    .line 2878
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mTaiEps: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTaiEps:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2883
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v56    # "taieps":[B
    :sswitch_18
    const/16 v32, 0x1

    .line 2885
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2887
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 2891
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    .line 2893
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iCPHS: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2897
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :sswitch_19
    const/16 v32, 0x0

    .line 2898
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2900
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_SET_MBDN_DONE ex:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2901
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_90

    .line 2902
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 2903
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    .line 2906
    :cond_90
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v4

    if-eqz v4, :cond_92

    .line 2907
    new-instance v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    invoke-direct {v5, v4, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2908
    .restart local v5    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Landroid/os/Message;

    .line 2917
    .local v43, "onCphsCompleted":Landroid/os/Message;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_91

    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_91

    .line 2918
    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    const/4 v6, 0x0

    iput-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2920
    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 2922
    const-string v4, "Callback with MBDN successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2924
    const/16 v43, 0x0

    .line 2927
    :cond_91
    new-instance v4, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v4, v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v6, 0x6f17

    const/16 v7, 0x6f4a

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x19

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 2932
    .end local v5    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v43    # "onCphsCompleted":Landroid/os/Message;
    :cond_92
    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 2933
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v49

    .line 2934
    .local v49, "resource":Landroid/content/res/Resources;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_93

    const v4, 0x112009a

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_93

    .line 2938
    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    new-instance v6, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    const-string v7, "Update SIM voice mailbox error"

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2945
    :goto_23
    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 2942
    :cond_93
    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_23

    .line 2950
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v49    # "resource":Landroid/content/res/Resources;
    :sswitch_1a
    const/16 v32, 0x0

    .line 2951
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2952
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_94

    .line 2953
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 2954
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    .line 2959
    :goto_24
    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 2960
    const-string v4, "Callback with CPHS MB successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2961
    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2963
    iget-object v4, v12, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 2956
    :cond_94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set CPHS MailBox with exception: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_24

    .line 2967
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :sswitch_1b
    const/16 v32, 0x0

    .line 2968
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2969
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sim REFRESH with exception: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2970
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 2971
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto/16 :goto_1

    .line 2975
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :sswitch_1c
    const/16 v32, 0x1

    .line 2977
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 2978
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 2980
    .restart local v17    # "data":[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_95

    .line 2982
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v6, 0x6f13

    const/16 v7, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2983
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_1

    .line 2988
    :cond_95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CFIS: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2990
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->validEfCfis([B)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 2991
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    .line 2997
    const/4 v4, 0x1

    aget-byte v4, v17, v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_96

    const/4 v4, 0x1

    :goto_25
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    .line 2999
    const/4 v4, 0x1

    aget-byte v4, v17, v4

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_97

    const/4 v4, 0x1

    :goto_26
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    .line 3001
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CFIS: callForwardingEnabled="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "EF_CFIS: videocallForwardingEnabled="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3006
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_98

    const/4 v4, 0x1

    :goto_27
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_voice:Z

    .line 3007
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_99

    const/4 v4, 0x1

    :goto_28
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->NV_cfflag_video:Z

    .line 3009
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 3011
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_SupportOrangeCPHS"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3012
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v6, 0x6f13

    const/16 v7, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3013
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_1

    .line 2997
    :cond_96
    const/4 v4, 0x0

    goto/16 :goto_25

    .line 2999
    :cond_97
    const/4 v4, 0x0

    goto :goto_26

    .line 3006
    :cond_98
    const/4 v4, 0x0

    goto :goto_27

    .line 3007
    :cond_99
    const/4 v4, 0x0

    goto :goto_28

    .line 3017
    :cond_9a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CFIS: invalid data="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3019
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v6, 0x6f13

    const/16 v7, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3020
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_1

    .line 3026
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "data":[B
    :sswitch_1d
    const/16 v32, 0x1

    .line 3028
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3030
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_9b

    .line 3031
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in fetching EF_CSP data "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3035
    :cond_9b
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 3037
    .restart local v17    # "data":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_CSP: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3038
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleEfCspData([B)V

    .line 3040
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_RIL_SIMPlmnAction"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3042
    new-instance v28, Landroid/content/Intent;

    const-string v4, "com.android.settings.PLMNACTION"

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3043
    .restart local v28    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 3051
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "data":[B
    .end local v28    # "intent":Landroid/content/Intent;
    :sswitch_1e
    const/16 v32, 0x1

    .line 3053
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3055
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_9c

    .line 3056
    const-string v4, "Invalid or missing EF_IMSI_M"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 3057
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSktImsiM:Ljava/lang/String;

    goto/16 :goto_1

    .line 3061
    :cond_9c
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 3065
    .restart local v17    # "data":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSktEf([B)Ljava/lang/String;

    move-result-object v26

    .line 3068
    .local v26, "imsi_m":Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mSktImsiM:Ljava/lang/String;

    goto/16 :goto_1

    .line 3073
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "data":[B
    .end local v26    # "imsi_m":Ljava/lang/String;
    :sswitch_1f
    const/16 v32, 0x1

    .line 3075
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3077
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_9d

    .line 3078
    const-string v4, "Invalid or missing EF_SKT_IRM]"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 3079
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSktIrm:Ljava/lang/String;

    goto/16 :goto_1

    .line 3083
    :cond_9d
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 3087
    .restart local v17    # "data":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSktEf([B)Ljava/lang/String;

    move-result-object v54

    .line 3090
    .local v54, "skt_irm":Ljava/lang/String;
    move-object/from16 v0, v54

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mSktIrm:Ljava/lang/String;

    goto/16 :goto_1

    .line 3097
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "data":[B
    .end local v54    # "skt_irm":Ljava/lang/String;
    :sswitch_20
    const/16 v32, 0x1

    .line 3099
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3100
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 3102
    .restart local v17    # "data":[B
    const-string v23, ""

    .line 3104
    .local v23, "gid1":Ljava/lang/String;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_a1

    .line 3105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in get GID1 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 3106
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    .line 3130
    :cond_9e
    :goto_29
    sget-object v4, Lcom/android/internal/telephony/uicc/SIMRecords;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v4, :cond_9f

    sget-object v4, Lcom/android/internal/telephony/uicc/SIMRecords;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v6, "CAN"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 3131
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a4

    .line 3132
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v42

    .line 3133
    .local v42, "num":I
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    .line 3140
    .end local v42    # "num":I
    :cond_9f
    :goto_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v55

    .line 3141
    .restart local v55    # "sp":Landroid/content/SharedPreferences;
    invoke-interface/range {v55 .. v55}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    .line 3142
    .restart local v19    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v34, "key_gid1"

    .line 3143
    .local v34, "key_gid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    if-eqz v4, :cond_a0

    .line 3144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "_gid1"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 3145
    :cond_a0
    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3146
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SimRecord: Load gid1 done: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3110
    .end local v19    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v34    # "key_gid":Ljava/lang/String;
    .end local v55    # "sp":Landroid/content/SharedPreferences;
    :cond_a1
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    .line 3111
    const-string v4, "XEU"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a2

    const-string v4, "BTU"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 3113
    :cond_a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    move-object/from16 v23, v0

    goto/16 :goto_29

    .line 3115
    :cond_a3
    const/16 v50, 0x0

    .line 3116
    .local v50, "result":I
    const/4 v14, 0x0

    .line 3117
    .local v14, "b":I
    const/4 v4, 0x0

    aget-byte v4, v17, v4

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v14, v4, 0xf

    .line 3118
    mul-int/lit8 v50, v14, 0x10

    .line 3119
    const/4 v4, 0x0

    aget-byte v4, v17, v4

    and-int/lit8 v14, v4, 0xf

    .line 3120
    add-int v50, v50, v14

    .line 3121
    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    .line 3122
    const/16 v4, 0xff

    move/from16 v0, v50

    if-ne v0, v4, :cond_9e

    .line 3123
    const-string v23, ""

    goto/16 :goto_29

    .line 3136
    .end local v14    # "b":I
    .end local v50    # "result":I
    :cond_a4
    const-string v4, ""

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    goto/16 :goto_2a

    .line 3153
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "data":[B
    .end local v23    # "gid1":Ljava/lang/String;
    :sswitch_21
    const/16 v32, 0x1

    .line 3155
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3156
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 3158
    .restart local v17    # "data":[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_a5

    .line 3159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in get GID2 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 3160
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    goto/16 :goto_1

    .line 3163
    :cond_a5
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    .line 3164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GID2: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3170
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "data":[B
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 3171
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_1

    .line 3175
    :sswitch_23
    const/16 v32, 0x1

    .line 3177
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3178
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 3180
    .restart local v17    # "data":[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 3185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_SMSP: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3187
    move-object/from16 v0, v17

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v17, v4

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mValidityPeriod:I

    .line 3189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mValidityPeriod: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mValidityPeriod:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3191
    new-instance v30, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.VALIDITY_PERIOD"

    move-object/from16 v0, v30

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3192
    .local v30, "intentV":Landroid/content/Intent;
    const-string v4, "mValidityPeriod"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mValidityPeriod:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3193
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3195
    const-string v4, "android.intent.action.VALIDITY_PERIOD"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3198
    const-string v4, "intent VALIDITY_PERIOD broadcasted"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3202
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "data":[B
    .end local v30    # "intentV":Landroid/content/Intent;
    :sswitch_24
    const-string v4, "[handleMessage] EVENT_GET_SPN_CPHS_DONE "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 3204
    const/16 v32, 0x1

    .line 3205
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3206
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->spn_cphs:Ljava/lang/String;

    .line 3208
    if-eqz v12, :cond_a6

    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_a6

    .line 3209
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->IsOnsExist:Z

    .line 3211
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 3212
    .restart local v17    # "data":[B
    const/4 v4, 0x0

    move-object/from16 v0, v17

    array-length v6, v0

    move-object/from16 v0, v17

    invoke-static {v0, v4, v6}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->spn_cphs:Ljava/lang/String;

    .line 3215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Load EF_SPN_CPHS: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpn:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3218
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Load EF_SPN_CPHS: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->spn_cphs:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3221
    .end local v17    # "data":[B
    :cond_a6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v6, 0x6f18

    const/16 v7, 0x1f5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3223
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_1

    .line 3228
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :sswitch_25
    const-string v4, "[handleMessage] EVENT_GET_SPN_SHORT_CPHS_DONE "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 3229
    const/16 v32, 0x1

    .line 3230
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3231
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->spn_cphs:Ljava/lang/String;

    .line 3233
    if-eqz v12, :cond_2

    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 3234
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->IsOnsExist:Z

    .line 3235
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 3236
    .restart local v17    # "data":[B
    const/4 v4, 0x0

    move-object/from16 v0, v17

    array-length v6, v0

    move-object/from16 v0, v17

    invoke-static {v0, v4, v6}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->spn_cphs:Ljava/lang/String;

    .line 3239
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->spn_cphs:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->spn_cphs:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3248
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "data":[B
    :sswitch_26
    const-string v4, "[handleMessage] EVENT_GET_OPL_DONE "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 3250
    const/16 v32, 0x1

    .line 3252
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3253
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 3256
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleOPL(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 3261
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :sswitch_27
    const/16 v32, 0x1

    .line 3262
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3263
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 3264
    .restart local v17    # "data":[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_a7

    .line 3265
    const-string v4, "getting EF_PERSO have exception !!!! "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 3266
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableO2PERSO:Z

    goto/16 :goto_1

    .line 3270
    :cond_a7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_PERSO: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 3271
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->perso:[B

    .line 3272
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableO2PERSO:Z

    goto/16 :goto_1

    .line 3279
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "data":[B
    :sswitch_28
    const/16 v32, 0x1

    .line 3281
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3283
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_a8

    .line 3284
    const-string v4, "Invalid or missing EF[masterImsi]"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3288
    :cond_a8
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v17, v0
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 3291
    .restart local v17    # "data":[B
    :try_start_1d
    sget-boolean v4, Lcom/android/internal/telephony/uicc/SIMRecords;->SHIP_BUILD:Z

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[masterImsi]: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x2

    const/16 v7, 0x8

    move-object/from16 v0, v17

    invoke-static {v0, v6, v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1d .. :try_end_1d} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_0
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    goto/16 :goto_1

    .line 3292
    :catch_8
    move-exception v18

    .line 3293
    .local v18, "e":Ljava/lang/StringIndexOutOfBoundsException;
    :try_start_1e
    const-string v4, "MASTER_IMSI was not exist in this card"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3298
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "data":[B
    .end local v18    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :sswitch_29
    const/16 v32, 0x1

    .line 3300
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3302
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_a9

    .line 3303
    const-string v4, "Invalid or missing EF[sponImsi1]"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3307
    :cond_a9
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 3309
    .restart local v17    # "data":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    aput-object v7, v4, v6
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_0
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 3311
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x2

    aget-byte v8, v17, v8

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    const/4 v9, 0x1

    aget-byte v9, v17, v9

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, v17

    invoke-static {v0, v8, v9}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x22b

    move-object/from16 v0, v17

    array-length v9, v0

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, v17

    invoke-static {v0, v8, v9}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_0
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 3317
    :goto_2b
    :try_start_20
    sget-boolean v4, Lcom/android/internal/telephony/uicc/SIMRecords;->SHIP_BUILD:Z

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sponImsi1]: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3312
    :catch_9
    move-exception v21

    .line 3313
    .local v21, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sponImsi1] Ex -"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 3314
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    .line 3315
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, ""

    aput-object v7, v4, v6

    goto :goto_2b

    .line 3321
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "data":[B
    .end local v21    # "ex":Ljava/lang/Exception;
    :sswitch_2a
    const/16 v32, 0x1

    .line 3323
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3325
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_aa

    .line 3326
    const-string v4, "Invalid or missing EF[sponImsi2]"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3330
    :cond_aa
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 3332
    .restart local v17    # "data":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    aput-object v7, v4, v6
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_0
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 3334
    :try_start_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x2

    aget-byte v8, v17, v8

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    const/4 v9, 0x1

    aget-byte v9, v17, v9

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, v17

    invoke-static {v0, v8, v9}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x22b

    move-object/from16 v0, v17

    array-length v9, v0

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, v17

    invoke-static {v0, v8, v9}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_0
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 3340
    :goto_2c
    :try_start_22
    sget-boolean v4, Lcom/android/internal/telephony/uicc/SIMRecords;->SHIP_BUILD:Z

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sponImsi2]: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3335
    :catch_a
    move-exception v21

    .line 3336
    .restart local v21    # "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sponImsi2] Ex -"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 3337
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    .line 3338
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v6, 0x1

    const-string v7, ""

    aput-object v7, v4, v6

    goto :goto_2c

    .line 3344
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "data":[B
    .end local v21    # "ex":Ljava/lang/Exception;
    :sswitch_2b
    const/16 v32, 0x1

    .line 3346
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3348
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_ab

    .line 3349
    const-string v4, "Invalid or missing EF[sponImsi3]"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3353
    :cond_ab
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 3355
    .restart local v17    # "data":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    aput-object v7, v4, v6
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_0
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 3357
    :try_start_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x2

    aget-byte v8, v17, v8

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    const/4 v9, 0x1

    aget-byte v9, v17, v9

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, v17

    invoke-static {v0, v8, v9}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x22b

    move-object/from16 v0, v17

    array-length v9, v0

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, v17

    invoke-static {v0, v8, v9}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_0
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    .line 3363
    :goto_2d
    :try_start_24
    sget-boolean v4, Lcom/android/internal/telephony/uicc/SIMRecords;->SHIP_BUILD:Z

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sponImsi3]: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3358
    :catch_b
    move-exception v21

    .line 3359
    .restart local v21    # "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sponImsi3] Ex -"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 3360
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    .line 3361
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v6, 0x2

    const-string v7, ""

    aput-object v7, v4, v6

    goto :goto_2d

    .line 3368
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "data":[B
    .end local v21    # "ex":Ljava/lang/Exception;
    :sswitch_2c
    const/16 v32, 0x1

    .line 3370
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3372
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_ac

    .line 3373
    const-string v4, "Invalid or missing EF[roaming]"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3377
    :cond_ac
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 3379
    .restart local v17    # "data":[B
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v51

    .line 3380
    .local v51, "roaming":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[roaming]: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3381
    const-string v4, "gsm.sim.roaming"

    move-object/from16 v0, v51

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3396
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "data":[B
    .end local v51    # "roaming":Ljava/lang/String;
    :sswitch_2d
    const-string v59, ""

    .line 3397
    .local v59, "uiccVer":Ljava/lang/String;
    const-string v58, ""

    .line 3398
    .local v58, "uiccConv":Ljava/lang/String;
    const/16 v32, 0x1

    .line 3400
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3402
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_ad

    .line 3403
    const-string v4, "Invalid or missing EF[VER]"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3407
    :cond_ad
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v17, v0
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_0
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    .line 3410
    .restart local v17    # "data":[B
    :try_start_25
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_0
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    move-result-object v59

    .line 3416
    :goto_2e
    :try_start_26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ver]: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v59

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3417
    invoke-virtual/range {v59 .. v59}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x6

    if-le v4, v6, :cond_2

    .line 3418
    const/16 v4, 0xa

    const/16 v6, 0xe

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x10

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v58

    .line 3419
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ver]converterd: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v58

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3420
    const-string v4, "gsm.sim.version"

    move-object/from16 v0, v58

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3411
    :catch_c
    move-exception v21

    .line 3412
    .restart local v21    # "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ver] Ex -"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 3413
    const-string v59, ""

    goto :goto_2e

    .line 3427
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "data":[B
    .end local v21    # "ex":Ljava/lang/Exception;
    .end local v58    # "uiccConv":Ljava/lang/String;
    .end local v59    # "uiccVer":Ljava/lang/String;
    :sswitch_2e
    const/16 v32, 0x1

    .line 3429
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3430
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 3432
    .restart local v17    # "data":[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_ae

    .line 3433
    const-string v4, "getting mIsAvailablePSISMSC have exception !!!! "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3434
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsAvailablePSISMSC:Z

    goto/16 :goto_1

    .line 3440
    :cond_ae
    const/4 v4, 0x1

    aget-byte v4, v17, v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v46, v0

    .line 3441
    .local v46, "psismsclength":I
    const/16 v4, 0xff

    move/from16 v0, v46

    if-eq v0, v4, :cond_2

    if-eqz v46, :cond_2

    .line 3442
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v38

    .line 3443
    .local v38, "mPsismsc":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PSISMSC from modem: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3445
    const/4 v4, 0x4

    mul-int/lit8 v6, v46, 0x2

    add-int/lit8 v6, v6, 0x4

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPsismsc:[B

    .line 3446
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PSISMSC to IMS: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPsismsc:[B

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3447
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsAvailablePSISMSC:Z

    goto/16 :goto_1

    .line 3453
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "data":[B
    .end local v38    # "mPsismsc":Ljava/lang/String;
    .end local v46    # "psismsclength":I
    :sswitch_2f
    const/16 v32, 0x0

    .line 3454
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3455
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 3457
    .restart local v17    # "data":[B
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 3460
    const-string v4, "SIMRecords"

    const-string v6, "EVENT_GET_SMSS_DONE"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3462
    const/4 v4, 0x0

    aget-byte v4, v17, v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v57, v0

    .line 3463
    .local v57, "tpmr":I
    const-string v4, "SIMRecords"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TPMR message count= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3465
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIncreaseTPMR:Z

    if-eqz v4, :cond_af

    .line 3466
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIncreaseTPMR:Z

    .line 3467
    const/4 v4, 0x0

    aget-byte v4, v17, v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_b0

    .line 3468
    const/4 v4, 0x0

    const/4 v6, 0x0

    aput-byte v6, v17, v4

    .line 3469
    const/16 v57, 0x0

    .line 3474
    :goto_2f
    const-string v4, "SIMRecords"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Increased TPMR : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-byte v7, v17, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", tpmr = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3475
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v6, 0x6f43

    const/16 v7, 0xe

    const/16 v8, 0x6f43

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v4, v6, v0, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 3478
    :cond_af
    const-string v4, "persist.radio.tpmr_sms"

    invoke-static/range {v57 .. v57}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3471
    :cond_b0
    const/4 v4, 0x0

    aget-byte v6, v17, v4

    add-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    aput-byte v6, v17, v4

    .line 3472
    add-int/lit8 v57, v57, 0x1

    goto :goto_2f

    .line 3484
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "data":[B
    .end local v57    # "tpmr":I
    :sswitch_30
    const/16 v32, 0x1

    .line 3485
    const-string v4, "EVENT_GET_EF_FPLMN done"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3491
    :sswitch_31
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onSimPhonebookRefresh()V

    goto/16 :goto_1

    .line 3496
    :sswitch_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryFdn()V

    goto/16 :goto_1

    .line 3501
    :sswitch_33
    const/16 v32, 0x1

    .line 3502
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3503
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 3507
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->efUICC:[B

    .line 3508
    const-string v4, "SIMRecords"

    const-string v6, "Write UICC in File."

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3509
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->saveFelicaEFs(I)V

    .line 3510
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "efUICC: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->efUICC:[B

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3513
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :sswitch_34
    const/16 v32, 0x1

    .line 3514
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3515
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 3519
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->efIMODER:[B

    .line 3520
    const-string v4, "SIMRecords"

    const-string v6, "Write IMODER in File."

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3521
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->saveFelicaEFs(I)V

    .line 3522
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "efIMODER: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->efIMODER:[B

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3526
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :sswitch_35
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3530
    const/16 v48, 0x3

    .line 3531
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEFLockUser:I

    .line 3532
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEFLockRemote:I

    .line 3533
    const/16 v32, 0x1

    .line 3535
    const-string v4, "EVENT_REFRESH_EF_LOCK done"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3537
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v4, :cond_b1

    .line 3538
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->notifyEFLockStatus(II)V

    goto/16 :goto_1

    .line 3542
    :cond_b1
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3543
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_b2

    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_b3

    .line 3544
    :cond_b2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->notifyEFLockStatus(II)V

    goto/16 :goto_1

    .line 3548
    :cond_b3
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 3549
    .restart local v17    # "data":[B
    const/4 v4, 0x4

    move-object/from16 v0, v17

    array-length v6, v0

    if-gt v4, v6, :cond_b4

    const/4 v4, 0x2

    move-object/from16 v0, v17

    array-length v6, v0

    if-gt v4, v6, :cond_b4

    .line 3551
    const/4 v4, 0x2

    aget-byte v4, v17, v4

    and-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEFLockUser:I

    .line 3552
    const/4 v4, 0x1

    aget-byte v4, v17, v4

    and-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEFLockRemote:I

    .line 3553
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->notifyEFLockStatus(II)V

    goto/16 :goto_1

    .line 3555
    :cond_b4
    const-string v4, "EVENT_REFRESH_EF_LOCK AsyncResult corrupted "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3561
    .end local v12    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "data":[B
    :sswitch_36
    const/16 v32, 0x1

    .line 3562
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 3564
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_b5

    .line 3565
    const-string v4, "Invalid or missing EF[VER]"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3568
    :cond_b5
    iget-object v4, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object/from16 v17, v0

    .line 3570
    .restart local v17    # "data":[B
    const-string v4, "gsm.sim.acc"

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/uicc/IccUtils;->byteArrayToBinaryString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_0
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    goto/16 :goto_1

    .line 2005
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_3
        0x4 -> :sswitch_a
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_c
        0xa -> :sswitch_6
        0xb -> :sswitch_5
        0xc -> :sswitch_d
        0xd -> :sswitch_f
        0xe -> :sswitch_10
        0xf -> :sswitch_11
        0x11 -> :sswitch_16
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_19
        0x15 -> :sswitch_14
        0x16 -> :sswitch_15
        0x18 -> :sswitch_e
        0x19 -> :sswitch_1a
        0x1a -> :sswitch_18
        0x1e -> :sswitch_7
        0x1f -> :sswitch_1b
        0x20 -> :sswitch_1c
        0x21 -> :sswitch_1d
        0x22 -> :sswitch_20
        0x23 -> :sswitch_1
        0x24 -> :sswitch_21
        0x25 -> :sswitch_2
        0x1f4 -> :sswitch_24
        0x1f5 -> :sswitch_25
        0x1f6 -> :sswitch_26
        0x1f8 -> :sswitch_b
        0x1f9 -> :sswitch_27
        0x1fa -> :sswitch_1e
        0x1fb -> :sswitch_1f
        0x1fc -> :sswitch_28
        0x1fd -> :sswitch_29
        0x1fe -> :sswitch_2a
        0x1ff -> :sswitch_2b
        0x200 -> :sswitch_2c
        0x201 -> :sswitch_2d
        0x202 -> :sswitch_31
        0x203 -> :sswitch_32
        0x204 -> :sswitch_33
        0x205 -> :sswitch_34
        0x206 -> :sswitch_35
        0x207 -> :sswitch_2e
        0x208 -> :sswitch_2f
        0x209 -> :sswitch_30
        0x20a -> :sswitch_23
        0x20b -> :sswitch_17
        0x20c -> :sswitch_36
        0x320 -> :sswitch_22
    .end sparse-switch
.end method

.method public hasIsim()Z
    .locals 1

    .prologue
    .line 789
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mHasIsim:Z

    return v0
.end method

.method public isAvailableVoiceMailInSIM()Z
    .locals 2

    .prologue
    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAvailableMBDN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMBDN:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isCphsMailboxEnabled(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1030
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMBDN:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1031
    :cond_0
    const/4 v0, 0x1

    .line 1033
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 5183
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 5109
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 5111
    const-string v0, "SIMRecords"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5115
    :goto_0
    return-void

    .line 5113
    :cond_0
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 5119
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 5121
    const-string v0, "SIMRecords"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5125
    :goto_0
    return-void

    .line 5123
    :cond_0
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 5147
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 5149
    const-string v0, "SIMRecords"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5153
    :goto_0
    return-void

    .line 5151
    :cond_0
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected logi(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 5156
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 5158
    const-string v0, "SIMRecords"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5162
    :goto_0
    return-void

    .line 5160
    :cond_0
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 5137
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 5139
    const-string v0, "SIMRecords"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5143
    :goto_0
    return-void

    .line 5141
    :cond_0
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 5128
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 5130
    const-string v0, "SIMRecords"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5134
    :goto_0
    return-void

    .line 5132
    :cond_0
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onAllRecordsLoaded()V
    .locals 23

    .prologue
    .line 4262
    const-string v18, "record load complete"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4263
    const-string v18, "SIMRecords"

    const-string v19, "!@Boot_SVC : SIM onAllRecordsLoaded"

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4265
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    .line 4266
    .local v11, "resource":Landroid/content/res/Resources;
    const v18, 0x11200b6

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 4267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfLi:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPl:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSimLanguage([B[B)V

    .line 4272
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceCallForwardingFlagFromSimRecords()V

    .line 4274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 4277
    :cond_0
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    .line 4452
    :cond_1
    :goto_1
    return-void

    .line 4269
    :cond_2
    const-string v18, "Not using EF LI/EF PL"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4284
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    .line 4287
    .local v9, "operator":Ljava/lang/String;
    const-string v18, "LRA"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    invoke-static {}, Lcom/android/internal/telephony/PhoneBase;->getSubOperatorName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 4288
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_17

    .line 4290
    const-string v18, "VZW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    invoke-static {}, Lcom/android/internal/telephony/PhoneBase;->getMainOperatorName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 4291
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->isNeedToShareWithSensor(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 4292
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSysfsForSensor()V

    .line 4297
    :cond_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onAllRecordsLoaded set \'gsm.sim.operator.numeric\' to operator=\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v18, v0

    const/16 v18, 0x6

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBase;->getNtcFeature(I)Z

    move-result v18

    if-nez v18, :cond_14

    .line 4300
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_e

    const-string v18, "CTC"

    const-string v19, "ro.csc.sales_code"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 4302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v18

    if-nez v18, :cond_5

    .line 4303
    const-string v18, "slot1 gsm sim operater."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4304
    const-string v18, "gsm.sim.gsmoperator.numeric"

    move-object/from16 v0, v18

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4306
    :cond_5
    const-string v18, "gsm.sim.selectnetwork"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 4307
    .local v13, "simselswitch":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "simselswitch = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4308
    const-string v18, "CDMA"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v18

    if-nez v18, :cond_d

    .line 4309
    const-string v18, "do not set PROPERTY_ICC_OPERATOR_NUMERIC in case of slot1 cdma switching"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4310
    const-string v18, "gsm.sim.gsmoperator.numeric"

    move-object/from16 v0, v18

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4358
    .end local v13    # "simselswitch":Ljava/lang/String;
    :cond_6
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v17

    .line 4359
    .local v17, "subController":Lcom/android/internal/telephony/SubscriptionController;
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/SubscriptionController;->setMccMnc(Ljava/lang/String;I)I

    .line 4366
    .end local v17    # "subController":Lcom/android/internal/telephony/SubscriptionController;
    :cond_7
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_8

    const-string v18, "DISABLE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_Common_AutoConfigurationType"

    const-string v21, "DISABLE"

    invoke-virtual/range {v19 .. v21}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 4367
    const-string v18, "Binding AutoPreconfigService"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 4368
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 4369
    .local v10, "preconfigIntent":Landroid/content/Intent;
    const-string v18, "com.sec.android.AutoPreconfig"

    const-string v19, "com.sec.android.AutoPreconfig.AutoPreconfigService"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAutoPreconfigServiceConnection:Landroid/content/ServiceConnection;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v10, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 4371
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsAPBound:Z

    .line 4375
    .end local v10    # "preconfigIntent":Landroid/content/Intent;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1e

    .line 4376
    sget-object v18, Lcom/android/internal/telephony/uicc/SIMRecords;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v18, :cond_9

    sget-object v18, Lcom/android/internal/telephony/uicc/SIMRecords;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v19, "LRA-GLB"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 4377
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "update gsm.apn.sim.operator.numeric = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " for Global LRA"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4378
    const-string v18, "gsm.apn.sim.operator.numeric"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4380
    :cond_9
    const-string v18, "LGT"

    const-string v19, "EUR"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 4381
    const-string v18, "ril.simtype"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4382
    .local v12, "simType":Ljava/lang/String;
    if-eqz v12, :cond_b

    const-string v18, "3"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a

    const-string v18, "18"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 4383
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v19

    const-string v20, "kr"

    invoke-virtual/range {v18 .. v20}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 4426
    .end local v12    # "simType":Ljava/lang/String;
    :cond_b
    :goto_4
    const-string v18, "CSC"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_RIL_ConfigVoicemailSource"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 4427
    const-string v18, "setVoiceMailByCountry to Latin Carriers"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4428
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    .line 4434
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 4435
    .local v16, "sp_o2":Landroid/content/SharedPreferences;
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 4436
    .local v6, "editor_o2":Landroid/content/SharedPreferences$Editor;
    const-string v18, "key_paystate"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getO2payState()Lcom/android/internal/telephony/uicc/SIMRecords$O2Paystate;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/SIMRecords$O2Paystate;->value()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4437
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/AsyncResult;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v18 .. v19}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 4443
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->isRefreshedBySTK:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 4450
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->isRefreshedBySTK:Z

    goto/16 :goto_1

    .line 4312
    .end local v6    # "editor_o2":Landroid/content/SharedPreferences$Editor;
    .end local v16    # "sp_o2":Landroid/content/SharedPreferences;
    .restart local v13    # "simselswitch":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 4315
    .end local v13    # "simselswitch":Ljava/lang/String;
    :cond_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_f

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_RIL_Support75Mode"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 4318
    :cond_f
    const-string v18, "gsm.sim.sixmode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v19

    const-string v20, "GSM"

    invoke-static/range {v18 .. v20}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4319
    .local v14, "sixmode":Ljava/lang/String;
    const-string v18, "gsm.sim.gsmoperator.numeric"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4321
    const-string v18, "gsm.sim.cdmaoperator.numeric"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v19

    const-string v20, ""

    invoke-static/range {v18 .. v20}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4322
    .local v4, "cdmaop":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "cdmaop = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4323
    const-string v18, "4"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    const-string v18, "20404"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 4324
    const-string v18, "gsm.sim.cdmaoperator.numeric"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v19

    const-string v20, "46003"

    invoke-static/range {v18 .. v20}, Lcom/samsung/android/telephony/MultiSimManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 4326
    :cond_10
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "sixmode = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4327
    const-string v18, "GSM"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_11

    const-string v18, "1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_11

    const-string v18, "2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 4328
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 4332
    :cond_12
    const-string v15, "false"

    .line 4333
    .local v15, "sixmodeslave":Ljava/lang/String;
    const-string v18, "false"

    const-string v19, "gsm.operator.isroaming"

    const-string v20, "false"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 4334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "IS_CTC"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 4335
    .local v7, "isctc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "IS_CTC2"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 4336
    .local v8, "isctc2":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_6

    .line 4337
    const-string v18, "persist.radio.multisim.stackid"

    const-string v19, "-1"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 4338
    const-string v18, "true"

    goto/16 :goto_2

    .line 4344
    .end local v4    # "cdmaop":Ljava/lang/String;
    .end local v7    # "isctc":I
    .end local v8    # "isctc2":I
    .end local v14    # "sixmode":Ljava/lang/String;
    .end local v15    # "sixmodeslave":Ljava/lang/String;
    :cond_13
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "update icc_operator_numeric="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 4349
    :cond_14
    sget-object v18, Lcom/android/internal/telephony/uicc/SIMRecords;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4350
    .local v3, "cdmaOperatorNumeric":Ljava/lang/String;
    const-string v18, "000000"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_15

    const-string v18, "310120"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_16

    const-string v18, "316010"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_16

    .line 4351
    :cond_15
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "setSystemProperty operator : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 4355
    :cond_16
    const-string v18, "Do not update PROPERTY_ICC_OPERATOR_NUMERIC for CHAMELEON "

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4361
    .end local v3    # "cdmaOperatorNumeric":Ljava/lang/String;
    :cond_17
    const-string v18, "onAllRecordsLoaded empty \'gsm.sim.operator.numeric\' skipping"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4389
    :cond_18
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1a

    const-string v18, "CTC"

    const-string v19, "ro.csc.sales_code"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 4391
    const-string v18, "gsm.sim.selectnetwork"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 4392
    .restart local v13    # "simselswitch":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "simselswitch = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4393
    const-string v18, "CDMA"

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v18

    if-nez v18, :cond_19

    .line 4394
    const-string v18, "do not set PROPERTY_ICC_OPERATOR_NUMERIC in case of slot1 cdma switching"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 4415
    .end local v13    # "simselswitch":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 4416
    .local v5, "e":Ljava/lang/NumberFormatException;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Corrupt IMSI! "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4396
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v13    # "simselswitch":Ljava/lang/String;
    :cond_19
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x3

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    goto/16 :goto_4

    .line 4401
    .end local v13    # "simselswitch":Ljava/lang/String;
    :cond_1a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1b

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_RIL_Support75Mode"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1d

    .line 4404
    :cond_1b
    const-string v18, "gsm.sim.sixmode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v19

    const-string v20, "GSM"

    invoke-static/range {v18 .. v20}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4405
    .restart local v14    # "sixmode":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "sixmode = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4406
    const-string v18, "GSM"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1c

    const-string v18, "1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1c

    const-string v18, "2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 4407
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x3

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    goto/16 :goto_4

    .line 4411
    .end local v14    # "sixmode":Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x3

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 4422
    :cond_1e
    const-string v18, "onAllRecordsLoaded empty imsi skipping setting mcc"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public onReady()V
    .locals 0

    .prologue
    .line 4580
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    .line 4581
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4204
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 4205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordLoaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4207
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4208
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGbaRecordsRequested:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    if-nez v1, :cond_0

    .line 4209
    const-string v1, "GBA records loaded"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 4210
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.movial.gba_initialized"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4211
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4212
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGbaRecordsRequested:Z

    .line 4216
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 4217
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onAllRecordsLoaded()V

    .line 4222
    :cond_1
    :goto_0
    return-void

    .line 4218
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    if-gez v1, :cond_1

    .line 4219
    const-string v1, "recordsToLoad <0, programmer error suspected"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 4220
    iput v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .param p1, "fileChanged"    # Z
    .param p2, "fileList"    # [I

    .prologue
    .line 1423
    if-eqz p1, :cond_0

    .line 1427
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    .line 1429
    :cond_0
    return-void
.end method

.method public refreshUiccVer()V
    .locals 3

    .prologue
    .line 5172
    const-string v0, "[refreshUiccVer] refreshed"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 5173
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2f30

    const/16 v2, 0x201

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 5174
    return-void
.end method

.method protected resetRecords()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 712
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    .line 716
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    .line 719
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 720
    iput v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting0 mMncLength"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 722
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    .line 724
    iput v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    .line 725
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    .line 726
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    .line 727
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    .line 728
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnHomeName:Ljava/lang/String;

    .line 729
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    .line 730
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid2:Ljava/lang/String;

    .line 733
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSktImsiM:Ljava/lang/String;

    .line 734
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSktIrm:Ljava/lang/String;

    .line 737
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 738
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 740
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneBase;->getNtcFeature(I)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "LRA"

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {}, Lcom/android/internal/telephony/PhoneBase;->getSubOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 741
    const-string v1, "SIMRecords: onRadioOffOrNotAvailable set \'gsm.sim.operator.numeric\' to operator=null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 742
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    const-string v1, "CTC"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 744
    const-string v1, "gsm.sim.selectnetwork"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, "simselswitch":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetRecords() simselswitch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " phone.getPhoneId() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 746
    const-string v1, "CDMA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    if-eqz v1, :cond_2

    .line 747
    :cond_1
    const-string v1, "SIMRecords: onRadioOffOrNotAvailable set \'gsm.sim.operator.numeric\' to operator=null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update icc_operator_numeric="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 749
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 750
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 758
    .end local v0    # "simselswitch":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 763
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    .line 764
    return-void

    .line 753
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 754
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "line"    # I
    .param p2, "voiceEnable"    # Ljava/lang/Boolean;
    .param p3, "videoEnable"    # Ljava/lang/Boolean;

    .prologue
    .line 5433
    new-instance v0, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v1, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 5434
    return-void
.end method

.method public setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 16
    .param p1, "line"    # I
    .param p2, "voiceEnable"    # Ljava/lang/Boolean;
    .param p3, "videoEnable"    # Ljava/lang/Boolean;
    .param p4, "dialingNumber"    # Ljava/lang/String;

    .prologue
    .line 1277
    const/4 v14, 0x0

    .line 1278
    .local v14, "voiceCfEnabled":Z
    const/4 v13, 0x0

    .line 1280
    .local v13, "videoCfEnabled":Z
    const/4 v1, 0x1

    move/from16 v0, p1

    if-eq v0, v1, :cond_1

    .line 1413
    :cond_0
    :goto_0
    return-void

    .line 1282
    :cond_1
    if-eqz p2, :cond_2

    .line 1283
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    .line 1285
    :cond_2
    if-eqz p3, :cond_3

    .line 1286
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    .line 1289
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1292
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableCFIS:Z

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    if-eqz v1, :cond_10

    .line 1294
    if-eqz p2, :cond_4

    .line 1295
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1296
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v2, 0x1

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1302
    :cond_4
    :goto_3
    if-eqz p3, :cond_5

    .line 1303
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1304
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v2, 0x1

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1313
    :cond_5
    :goto_4
    if-eqz p4, :cond_7

    .line 1314
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_6

    .line 1315
    const/4 v1, 0x0

    const/16 v2, 0x13

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    .line 1319
    :cond_6
    :try_start_1
    new-instance v9, Lcom/android/internal/telephony/uicc/AdnRecord;

    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-direct {v9, v1, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    .local v9, "efCfisRecord":Lcom/android/internal/telephony/uicc/AdnRecord;
    const/16 v11, 0xe

    .line 1322
    .local v11, "recordSize":I
    invoke-virtual {v9, v11}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildAdnString(I)[B

    move-result-object v7

    .line 1323
    .local v7, "byteCfisRecord":[B
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v3, 0x2

    invoke-static {v7, v1, v2, v3, v11}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1329
    .end local v7    # "byteCfisRecord":[B
    .end local v9    # "efCfisRecord":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v11    # "recordSize":I
    :cond_7
    :goto_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6fcb

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/16 v15, 0x6fcb

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v15}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 1333
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SupportOrangeCPHS"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1334
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    if-eqz v1, :cond_0

    .line 1335
    if-eqz p2, :cond_8

    .line 1336
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1337
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xf0

    or-int/lit8 v3, v3, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1345
    :cond_8
    :goto_6
    if-eqz p3, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_9

    .line 1346
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1347
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0xf

    or-int/lit16 v3, v3, 0xa0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1355
    :cond_9
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6f13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/16 v4, 0xe

    const/16 v5, 0x6f13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1408
    :catch_0
    move-exception v10

    .line 1409
    .local v10, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "Error saving call fowarding flag to SIM. Probably malformed SIM record"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1283
    .end local v10    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 1286
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 1298
    :cond_c
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v2, 0x1

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xfe

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto/16 :goto_3

    .line 1306
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v2, 0x1

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xef

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto/16 :goto_4

    .line 1324
    :catch_1
    move-exception v10

    .line 1325
    .local v10, "ex":Ljava/lang/Exception;
    const-string v1, "Exception for build CF number"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1340
    .end local v10    # "ex":Ljava/lang/Exception;
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xf0

    or-int/lit8 v3, v3, 0x5

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto/16 :goto_6

    .line 1350
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0xf

    or-int/lit8 v3, v3, 0x50

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto :goto_7

    .line 1361
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    if-eqz v1, :cond_17

    .line 1362
    const-string v1, "ATT"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "AIO"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    const-string v1, "1"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 1365
    const-string v1, "Do not update EF_CFF_CPHS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1367
    :cond_12
    if-eqz p2, :cond_13

    .line 1368
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1369
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xf0

    or-int/lit8 v3, v3, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1376
    :cond_13
    :goto_8
    if-eqz p3, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_14

    .line 1377
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1378
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0xf

    or-int/lit16 v3, v3, 0xa0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1385
    :cond_14
    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6f13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/16 v4, 0xe

    const/16 v5, 0x6f13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1372
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xf0

    or-int/lit8 v3, v3, 0x5

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto :goto_8

    .line 1381
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0xf

    or-int/lit8 v3, v3, 0x50

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto :goto_9

    .line 1391
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write cf icon voice value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write cf icon video value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1393
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->voicecallForwardingEnabled:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    const/4 v14, 0x1

    .line 1394
    :goto_a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->videocallForwardingEnabled:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    const/4 v13, 0x1

    .line 1396
    :goto_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1a

    .line 1397
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 1398
    .local v12, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1399
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cf_iconkey_voice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cf_iconkey_video"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cf_imsikey"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1402
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1393
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "sp":Landroid/content/SharedPreferences;
    :cond_18
    const/4 v14, 0x0

    goto :goto_a

    .line 1394
    :cond_19
    const/4 v13, 0x0

    goto :goto_b

    .line 1404
    :cond_1a
    const-string v1, "mContext is null, so do not save call forwarding flag on shared preferences"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public setCardDataInit()V
    .locals 3

    .prologue
    .line 973
    const-string v0, "setCardDataInit"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->logi(Ljava/lang/String;)V

    .line 974
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 975
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const-string v0, "CTC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 977
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    if-nez v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 983
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 984
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    .line 986
    :cond_1
    return-void

    .line 981
    :cond_2
    const-string v0, "gsm.sim.gsmoperator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    const/16 v2, 0x6f40

    .line 895
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdn:Ljava/lang/String;

    .line 896
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdnTag:Ljava/lang/String;

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set MSISDN: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdnTag:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "xxxxxxx"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 900
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdnTag:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewMsisdn:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    .local v1, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->getExtFromEf(I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 904
    return-void
.end method

.method public setSpnDynamic(Ljava/lang/String;)V
    .locals 13
    .param p1, "currentPlmn"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x3

    .line 5475
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->spnOverride:Ljava/lang/String;

    .line 5476
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->spnDisplayRuleOverride:I

    .line 5478
    const/4 v5, 0x0

    .line 5480
    .local v5, "simOper":Ljava/lang/String;
    const-string v9, "gsm.sim.operator.numeric"

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v10

    const-string v11, ""

    invoke-static {v9, v10, v11}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5482
    if-eqz v5, :cond_0

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {v9, v5}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 5516
    :cond_0
    :goto_0
    return-void

    .line 5486
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 5487
    .local v8, "spnOverrideString":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Lcom/android/internal/telephony/uicc/SpnOverride;->getDisplayRule(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 5488
    .local v6, "spnDisplayRule":I
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Lcom/android/internal/telephony/uicc/SpnOverride;->getOverrideOnlyOn(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 5490
    .local v3, "onlyOn":[Ljava/lang/String;
    if-nez v8, :cond_2

    if-ltz v6, :cond_0

    .line 5494
    :cond_2
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSpnForCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5496
    .local v7, "spnForCurrentLocale":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 5497
    iput-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->spnOverride:Ljava/lang/String;

    .line 5498
    iput v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->spnDisplayRuleOverride:I

    goto :goto_0

    .line 5505
    :cond_3
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v12, :cond_0

    .line 5509
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 5510
    .local v4, "p":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v9, 0x0

    invoke-virtual {p1, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 5511
    :cond_4
    iput-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->spnOverride:Ljava/lang/String;

    .line 5512
    iput v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->spnDisplayRuleOverride:I

    goto :goto_0

    .line 5509
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setVideoCallForwardingFlag(IZ)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 5417
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVideoCallForwardingFlag(IZLjava/lang/String;)V

    .line 5418
    return-void
.end method

.method public setVideoCallForwardingFlag(IZLjava/lang/String;)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "enable"    # Z
    .param p3, "dialingNumber"    # Ljava/lang/String;

    .prologue
    .line 5425
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 5426
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZ)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 5401
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 5402
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZLjava/lang/String;)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "enable"    # Z
    .param p3, "dialingNumber"    # Ljava/lang/String;

    .prologue
    .line 5409
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 5410
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 1064
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsVoiceMailFixed:Z

    if-eqz v0, :cond_0

    .line 1065
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/uicc/IccVmFixedException;

    const-string v3, "Voicemail number is fixed by operator"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/IccVmFixedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1067
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1094
    :goto_0
    return-void

    .line 1071
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    .line 1072
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    .line 1074
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    .local v1, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    const/16 v2, 0xff

    if-eq v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableMBDN:Z

    if-eqz v0, :cond_1

    .line 1079
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v2, 0x6fc7

    const/16 v3, 0x6fc8

    iget v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    const/16 v6, 0x14

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 1083
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1085
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v2, 0x6f17

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/16 v6, 0x19

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 1090
    :cond_2
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    const-string v3, "Update SIM voice mailbox error"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1092
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 8
    .param p1, "line"    # I
    .param p2, "countWaiting"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1112
    if-eq p1, v1, :cond_1

    .line 1152
    :cond_0
    :goto_0
    return-void

    .line 1119
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    if-eqz v2, :cond_2

    .line 1123
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xfe

    if-nez p2, :cond_3

    :goto_1
    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 1127
    if-gez p2, :cond_4

    .line 1130
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    .line 1135
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fca

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v7, 0x6fca

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 1140
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    if-eqz v0, :cond_0

    .line 1142
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    const/4 v3, 0x0

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xf0

    if-nez p2, :cond_5

    const/4 v0, 0x5

    :goto_3
    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 1145
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f11

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1149
    :catch_0
    move-exception v6

    .line 1150
    .local v6, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "Error saving voice mail state to SIM. Probably malformed SIM record"

    invoke-virtual {p0, v0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v6    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    move v0, v1

    .line 1123
    goto :goto_1

    .line 1132
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1142
    :cond_5
    const/16 v0, 0xa

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimRecords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mVmConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSpnOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mSpnOverride"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " callForwardingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spnState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCphsInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCspPlmnEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " efMWIS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " efCPHS_MWI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEfCff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEfCfis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " getOperatorNumeric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
