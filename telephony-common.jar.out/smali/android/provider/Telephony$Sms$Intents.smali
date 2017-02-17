.class public final Landroid/provider/Telephony$Sms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final ACTION_CHANGE_DEFAULT:Ljava/lang/String; = "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

.field public static final ACTION_KTLBS_DATA_SMS_RECEIVED:Ljava/lang/String; = "com.kt.location.action.KTLBS_DATA_SMS_RECEIVED"

.field public static final ACTION_KT_TWO_PHONE_MANAGE_SMS_RECEIVED:Ljava/lang/String; = "com.kt.menu.action.TWO_CALL_REG_CHANGED"

.field public static final CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.CB_RECEIVED"

.field public static final CB_SETTINGS_AVAILABLE_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.CB_SETTINGS_AVAILABLE"

.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final DEVICE_READY_ACTION:Ljava/lang/String; = "android.provider.Telephony.DEVICE_READY"

.field public static final DIRECTED_SMS_RECEIVED_ACTION:Ljava/lang/String; = "verizon.intent.action.DIRECTED_SMS_RECEIVED"

.field public static final EMERGENCY_CDMA_MESSAGE_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.EMERGENCY_CDMA_MESSAGE_RECEIVED"

.field public static final EXTRA_LMS_TOKEN_CTC:Ljava/lang/String; = "lms_token_ctc"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package"

.field public static final GET_CB_ERR_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.GET_CB_ERR_RECEIVED"

.field public static final GET_SMSC_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.GET_SMSC"

.field public static final IMEI_TRACKER_SMS_RECEIVED_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.IMEI_TRACKER_SMS_RECEIVED"

.field public static final LGU_APM_RECEIVED_ACTION:Ljava/lang/String; = "android.lgt.action.APM_SMS_RECEIVED"

.field public static final LGU_FOTA_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.PUSH_CONFIRM"

.field public static final LMS_FIRST_DISPLAY_TIMEOUT_CTC_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.LMS_FIRST_DISPLAY_TIMEOUT_CTC"

.field public static final LMS_MAXIMAL_CONNECTION_TIMEOUT_CTC_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.LMS_MAXIMAL_CONNECTION_TIMEOUT_CTC"

.field public static final MMS_DOWNLOADED_ACTION:Ljava/lang/String; = "android.provider.Telephony.MMS_DOWNLOADED"

.field public static final NSRISMS_RECEIVED_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.SECURITY_SMS_RECEIVED"

.field public static final RESULT_SMS_DSAC_FAIL:I = 0x7

.field public static final RESULT_SMS_DUPLICATE:I = 0x8

.field public static final RESULT_SMS_DUPLICATED:I = 0x5

.field public static final RESULT_SMS_GENERIC_ERROR:I = 0x2

.field public static final RESULT_SMS_HANDLED:I = 0x1

.field public static final RESULT_SMS_MDM_DISCARDED:I = 0xa

.field public static final RESULT_SMS_OUT_OF_MEMORY:I = 0x3

.field public static final RESULT_SMS_SEGMENT:I = 0x9

.field public static final RESULT_SMS_UNSUPPORTED:I = 0x4

.field public static final SET_CB_ERR_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SET_CB_ERR_RECEIVED"

.field public static final SHOW_DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "com.kt.show.manger.action.SHOW_DATA_SMS_RECEIVED"

.field public static final SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final SMS_CARRIER_PROVISION_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CARRIER_PROVISION"

.field public static final SMS_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CB_RECEIVED"

.field public static final SMS_CB_RECEIVED_WIFI_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CB_WIFI_RECEIVED"

.field public static final SMS_DELIVER_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_DELIVER"

.field public static final SMS_EMERGENCY_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final SMS_REJECTED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_REJECTED"

.field public static final SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED"

.field public static final WAP_PUSH_DELIVER_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_DELIVER"

.field public static final WAP_PUSH_DM_NOTI_RECEIVED_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

.field public static final WAP_PUSH_DS_NOTI_RECEIVED_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.WAP_PUSH_DS_NOTI_RECEIVED"

.field public static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 878
    return-void
.end method

.method private static combineFourBytes([B[BI)Ljava/lang/String;
    .locals 8
    .param p0, "firstbyte"    # [B
    .param p1, "lastbyte"    # [B
    .param p2, "startBodyOffset"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1448
    const-string v3, "Telephony"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "combineFourBytes : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v6

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p1, v7

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p0, v6

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p0, v7

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " offset : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    const/4 v2, 0x0

    .line 1451
    .local v2, "ret":Ljava/lang/String;
    const/4 v3, 0x4

    new-array v1, v3, [B

    .line 1452
    .local v1, "fourBytes":[B
    aget-byte v3, p1, v6

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v6

    .line 1453
    aget-byte v3, p1, v7

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v7

    .line 1454
    const/4 v3, 0x2

    aget-byte v4, p0, p2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1455
    const/4 v3, 0x3

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1458
    :try_start_0
    new-instance v2, Ljava/lang/String;

    .end local v2    # "ret":Ljava/lang/String;
    const-string v3, "utf-16"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1463
    .restart local v2    # "ret":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1459
    .end local v2    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1460
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v2, ""

    .line 1461
    .restart local v2    # "ret":Ljava/lang/String;
    const-string v3, "Telephony"

    const-string v4, "implausible UnsupportedEncodingException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 29
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1338
    const-string v26, "pdus"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v26

    check-cast v26, [Ljava/lang/Object;

    move-object/from16 v9, v26

    check-cast v9, [Ljava/lang/Object;

    .line 1339
    .local v9, "messages":[Ljava/lang/Object;
    const-string v26, "format"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1340
    .local v3, "format":Ljava/lang/String;
    const-string v26, "subscription"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v27

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 1343
    .local v22, "subId":I
    const-string v26, "Telephony"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, " getMessagesFromIntent sub_id : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    array-length v0, v9

    move/from16 v18, v0

    .line 1347
    .local v18, "pduCount":I
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 1348
    .local v19, "shiftBytes":[B
    const/4 v5, 0x0

    .line 1349
    .local v5, "isShiftBytes":Z
    const/16 v20, 0x0

    .line 1353
    .local v20, "startBodyOffset":I
    move/from16 v0, v18

    new-array v11, v0, [Landroid/telephony/SmsMessage;

    .line 1355
    .local v11, "msgs":[Landroid/telephony/SmsMessage;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move/from16 v0, v18

    if-ge v4, v0, :cond_c

    .line 1356
    aget-object v26, v9, v4

    check-cast v26, [B

    move-object/from16 v17, v26

    check-cast v17, [B

    .line 1357
    .local v17, "pdu":[B
    if-eqz v17, :cond_3

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v26, v0

    if-lez v26, :cond_3

    .line 1358
    move-object/from16 v0, v17

    invoke-static {v0, v3}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v26

    aput-object v26, v11, v4

    .line 1361
    if-eqz v5, :cond_0

    .line 1362
    aget-object v26, v11, v4

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Telephony$Sms$Intents;->combineFourBytes([B[BI)Ljava/lang/String;

    move-result-object v21

    .line 1363
    .local v21, "str":Ljava/lang/String;
    aget-object v26, v11, v4

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    .line 1364
    .local v8, "messageBody":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1365
    aget-object v26, v11, v4

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SmsMessageBase;->replaceMessageBody(Ljava/lang/String;)V

    .line 1366
    const/4 v5, 0x0

    .line 1369
    .end local v8    # "messageBody":Ljava/lang/String;
    .end local v21    # "str":Ljava/lang/String;
    :cond_0
    aget-object v26, v11, v4

    if-eqz v26, :cond_1

    aget-object v26, v11, v4

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    aget-object v26, v11, v4

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/SmsMessageBase;->getIsFourBytesUnicode()Z

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 1371
    const-string v26, "Telephony"

    const-string v27, "Detect multibyte unicode at the end of page"

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    aget-object v26, v11, v4

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/SmsMessageBase;->getLastByte()[B

    move-result-object v7

    .line 1373
    .local v7, "lastbyte":[B
    const/16 v26, 0x0

    const/16 v27, 0x0

    aget-byte v27, v7, v27

    aput-byte v27, v19, v26

    .line 1374
    const/16 v26, 0x1

    const/16 v27, 0x1

    aget-byte v27, v7, v27

    aput-byte v27, v19, v26

    .line 1375
    aget-object v26, v11, v4

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/SmsMessageBase;->getBodyOffset()I

    move-result v20

    .line 1376
    aget-object v26, v11, v4

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    .line 1377
    .restart local v8    # "messageBody":Ljava/lang/String;
    const-string v26, "Telephony"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "messageBody Length : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    aget-object v26, v11, v4

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/internal/telephony/SmsMessageBase;->replaceMessageBody(Ljava/lang/String;)V

    .line 1379
    const/4 v5, 0x1

    .line 1383
    .end local v7    # "lastbyte":[B
    .end local v8    # "messageBody":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getCDMASmsReassembly()Z

    move-result v26

    if-eqz v26, :cond_3

    const/16 v26, 0x1

    move/from16 v0, v18

    move/from16 v1, v26

    if-le v0, v1, :cond_3

    .line 1384
    const/16 v16, 0x0

    .line 1385
    .local v16, "paginationSuccess":Z
    const/4 v15, 0x0

    .line 1386
    .local v15, "pagination":Ljava/lang/String;
    aget-object v26, v11, v4

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v23

    .line 1387
    .local v23, "tempMessageBody":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1389
    .local v10, "modifiedMessageBody":Ljava/lang/String;
    const-string v26, "("

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_5

    const-string v26, ")"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 1390
    const/16 v26, 0x28

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v26

    add-int/lit8 v26, v26, 0x1

    const/16 v27, 0x29

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v27

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 1391
    const/16 v26, 0x29

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v26

    add-int/lit8 v26, v26, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    .line 1402
    :goto_1
    if-eqz v15, :cond_8

    .line 1403
    move-object/from16 v10, v23

    .line 1404
    const-string v26, "/"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1405
    .local v13, "page":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 1406
    const/16 v16, 0x1

    .line 1432
    :cond_2
    :goto_2
    if-nez v16, :cond_b

    .line 1433
    const-string v26, "Telephony"

    const-string v27, "No pagination found"

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    .end local v10    # "modifiedMessageBody":Ljava/lang/String;
    .end local v13    # "page":[Ljava/lang/String;
    .end local v15    # "pagination":Ljava/lang/String;
    .end local v16    # "paginationSuccess":Z
    .end local v23    # "tempMessageBody":Ljava/lang/String;
    :cond_3
    :goto_3
    aget-object v26, v11, v4

    if-eqz v26, :cond_4

    .line 1441
    aget-object v26, v11, v4

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/telephony/SmsMessage;->setSubId(I)V

    .line 1355
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1392
    .restart local v10    # "modifiedMessageBody":Ljava/lang/String;
    .restart local v15    # "pagination":Ljava/lang/String;
    .restart local v16    # "paginationSuccess":Z
    .restart local v23    # "tempMessageBody":Ljava/lang/String;
    :cond_5
    const-string v26, "["

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_6

    const-string v26, "]"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 1393
    const/16 v26, 0x5b

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v26

    add-int/lit8 v26, v26, 0x1

    const/16 v27, 0x5d

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v27

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 1394
    const/16 v26, 0x5d

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v26

    add-int/lit8 v26, v26, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_1

    .line 1395
    :cond_6
    const-string v26, "{"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_7

    const-string v26, "}"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 1396
    const/16 v26, 0x7b

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v26

    add-int/lit8 v26, v26, 0x1

    const/16 v27, 0x7d

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v27

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 1397
    const/16 v26, 0x7d

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v26

    add-int/lit8 v26, v26, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_1

    .line 1399
    :cond_7
    const-string v26, "Telephony"

    const-string v27, "there is no pagination pattern maybe / or of "

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1409
    :cond_8
    const-string v26, " of "

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1410
    .restart local v13    # "page":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_9

    .line 1411
    const-string v26, " "

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1412
    .local v14, "pageCount":[Ljava/lang/String;
    array-length v0, v14

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_9

    .line 1413
    const/16 v26, 0x0

    aget-object v26, v14, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x2

    aget-object v27, v14, v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    add-int v26, v26, v27

    add-int/lit8 v12, v26, 0x4

    .line 1414
    .local v12, "offset":I
    add-int/lit8 v26, v12, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 1415
    const/16 v16, 0x1

    .line 1418
    .end local v12    # "offset":I
    .end local v14    # "pageCount":[Ljava/lang/String;
    :cond_9
    if-nez v16, :cond_2

    .line 1419
    const-string v26, "/"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 1420
    .local v24, "tempPage":[Ljava/lang/String;
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_2

    .line 1421
    const/16 v26, 0x1

    aget-object v26, v24, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toCharArray()[C

    move-result-object v25

    .line 1422
    .local v25, "totalNumber":[C
    const/4 v6, 0x0

    .line 1423
    .local v6, "j":I
    :goto_4
    aget-char v26, v25, v6

    invoke-static/range {v26 .. v26}, Ljava/lang/Character;->isDigit(C)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 1424
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1426
    :cond_a
    const/16 v26, 0x0

    aget-object v26, v24, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    add-int v26, v26, v6

    add-int/lit8 v26, v26, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 1427
    const/16 v16, 0x1

    goto/16 :goto_2

    .line 1435
    .end local v6    # "j":I
    .end local v24    # "tempPage":[Ljava/lang/String;
    .end local v25    # "totalNumber":[C
    :cond_b
    aget-object v26, v11, v4

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/SmsMessageBase;->replaceMessageBody(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1444
    .end local v10    # "modifiedMessageBody":Ljava/lang/String;
    .end local v13    # "page":[Ljava/lang/String;
    .end local v15    # "pagination":Ljava/lang/String;
    .end local v16    # "paginationSuccess":Z
    .end local v17    # "pdu":[B
    .end local v23    # "tempMessageBody":Ljava/lang/String;
    :cond_c
    return-object v11
.end method
