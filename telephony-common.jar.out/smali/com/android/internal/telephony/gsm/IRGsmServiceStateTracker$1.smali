.class Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "IRGsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v14, "airplane_mode_on"

    const/4 v15, 0x0

    invoke-static {v11, v14, v15}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v14, 0x1

    if-ne v11, v14, :cond_2

    const/4 v6, 0x1

    .line 172
    .local v6, "isAirplaneMode":Z
    :goto_0
    const-string v11, "IRGSMSST"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[Global mode] action = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v11, "android.intent.action.SCREEN_ON"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 177
    const/4 v11, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mScreenOn:Z
    invoke-static {v11}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$002(Z)Z

    .line 179
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isPwrSaveModeTimerRunning()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 180
    # getter for: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mGsmInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$100()Z

    move-result v11

    if-nez v11, :cond_0

    # getter for: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCdmaInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$200()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 181
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v15, 0x1

    invoke-virtual {v11, v14, v15}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->processPwrSaveModeExpdTimer(Lcom/android/internal/telephony/PhoneBase;Z)V

    .line 359
    :cond_1
    :goto_1
    return-void

    .line 170
    .end local v6    # "isAirplaneMode":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 183
    .restart local v6    # "isAirplaneMode":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->processPwrSaveModeExpdTimer(Lcom/android/internal/telephony/PhoneBase;Z)V

    goto :goto_1

    .line 186
    :cond_4
    const-string v11, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 187
    const/4 v11, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mScreenOn:Z
    invoke-static {v11}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$302(Z)Z

    goto :goto_1

    .line 188
    :cond_5
    const-string v11, "android.intent.action.ACTION_GLOBAL_NOSVC_CHK_TIMER_EXPIRED_GSM"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 189
    if-nez v6, :cond_8

    .line 190
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->startGlobalNetworkSearchTimer()V

    .line 191
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isGsmActive(I)Z

    move-result v11

    if-eqz v11, :cond_6

    # getter for: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mGsmInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$400()Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isGsmActive(I)Z

    move-result v11

    if-nez v11, :cond_1

    # getter for: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCdmaInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$500()Z

    move-result v11

    if-nez v11, :cond_1

    # getter for: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mGsmInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$600()Z

    move-result v11

    if-nez v11, :cond_1

    .line 193
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sendNoServiceNotiIntent()V

    goto :goto_1

    .line 196
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const-string v14, "[Global mode] Now airplane mode on."

    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopGlobalNoSvcChkTimer()V

    goto :goto_1

    .line 199
    :cond_9
    const-string v11, "android.intent.action.ACTION_GLOBAL_NETWORK_SEARCH_TIMER_EXPIRED_INTERNAL_GSM"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 200
    if-nez v6, :cond_f

    .line 201
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isGlobalMode(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v11

    if-eqz v11, :cond_e

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->globalNoSvcChkTimerRequired(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 202
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v14, "GSM_MANUAL_SRCH_ONGOING"

    const/4 v15, 0x0

    invoke-static {v11, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v14, 0x1

    if-ne v11, v14, :cond_a

    const/4 v4, 0x1

    .line 204
    .local v4, "gsmManSrchOngoing":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[Global mode] IsManSelMode: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-boolean v15, Lcom/android/internal/telephony/ServiceStateTracker;->IsManSelMode:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " gsmManSrchOngoing: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 205
    sget-boolean v11, Lcom/android/internal/telephony/ServiceStateTracker;->IsManSelMode:Z

    if-nez v11, :cond_d

    if-nez v4, :cond_d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v11

    if-nez v11, :cond_d

    .line 208
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isPwrSaveModeRequired()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 209
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v15, 0x2

    invoke-virtual {v11, v14, v15}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->startPwrSaveModeTimer(Lcom/android/internal/telephony/PhoneBase;I)V

    goto/16 :goto_1

    .line 202
    .end local v4    # "gsmManSrchOngoing":Z
    :cond_a
    const/4 v4, 0x0

    goto :goto_2

    .line 211
    .restart local v4    # "gsmManSrchOngoing":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sendNetChangeIntent(Z)V

    .line 212
    sget-boolean v11, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->oosTimerRunning:Z

    if-eqz v11, :cond_c

    .line 213
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const-string v14, "[Global mode] oosTimerRunning. stopManualOosTimer."

    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopManualOosTimer()V
    invoke-static {v11}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$700(Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;)V

    .line 216
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const/4 v14, 0x2

    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->incNetSrchCnt(I)V

    .line 220
    const/4 v11, 0x0

    sput v11, Lcom/android/internal/telephony/ServiceStateTracker;->currGsmMccInt:I

    goto/16 :goto_1

    .line 223
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const-string v14, "[Global mode] gsm manual mode. Not send ACTION_GLOBAL_NETWORK_SEARCH_TIMER_EXPIRED_INTERNAL_GSM"

    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopGlobalNetworkSearchTimer()V

    .line 226
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->startGlobalNetworkSearchTimer()V

    goto/16 :goto_1

    .line 229
    .end local v4    # "gsmManSrchOngoing":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const-string v14, "[Global mode] Ignore EXPIRED_INTERNAL_GSM."

    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopGlobalNetworkSearchTimer()V

    goto/16 :goto_1

    .line 233
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const-string v14, "[Global mode] Now airplane mode on."

    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopGlobalNetworkSearchTimer()V

    goto/16 :goto_1

    .line 236
    :cond_10
    const-string v11, "android.intent.action.ACTION_GLOBAL_PWR_SAVE_MODE_STAY_TIMER_EXPIRED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 237
    if-nez v6, :cond_13

    .line 238
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[Global mode] mCurrentSrchNet : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCurrentSrchNet:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$800()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mPsmStayTimerProcessed : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPsmStayTimerProcessed:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$900()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isPwrSaveModeTimerRunning()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 241
    # getter for: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mGsmInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$1000()Z

    move-result v11

    if-nez v11, :cond_11

    # getter for: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCdmaInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$1100()Z

    move-result v11

    if-eqz v11, :cond_12

    .line 242
    :cond_11
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v15, 0x1

    invoke-virtual {v11, v14, v15}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->processPwrSaveModeExpdTimer(Lcom/android/internal/telephony/PhoneBase;Z)V

    goto/16 :goto_1

    .line 244
    :cond_12
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->processPwrSaveModeExpdTimer(Lcom/android/internal/telephony/PhoneBase;Z)V

    goto/16 :goto_1

    .line 248
    :cond_13
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const-string v14, "[Global mode] Now airplane mode on."

    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 250
    :cond_14
    const-string v11, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_SWITCH_BACK_TO_CDMA_IN_CHINA"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 252
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopManualOosTimerDirectly()V
    invoke-static {v11}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$1200(Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;)V

    goto/16 :goto_1

    .line 253
    :cond_15
    const-string v11, "android.intent.action.ACTION_EVENT_OOS_TIMEOUT_RPT"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 255
    const/4 v7, 0x0

    .line 259
    .local v7, "isGsmActive":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const-string v14, "gsm.sim.state"

    const-string v15, "ABSENT"

    invoke-virtual {v11, v14, v15}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 260
    .local v10, "simState":Ljava/lang/String;
    const-string v11, "READY"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 262
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ACTION_EVENT_OOS_TIMEOUT_RPT expired!!! IsManualSelection : "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v11

    if-nez v11, :cond_16

    sget-boolean v11, Lcom/android/internal/telephony/ServiceStateTracker;->IsManSelMode:Z

    if-eqz v11, :cond_18

    :cond_16
    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, " isAirplaneMode : "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, " isGsmActive : "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, " mCurrentSrchNet:"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCurrentSrchNet:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$1300()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 266
    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/internal/telephony/ServiceStateTracker;->alreadyExpired:Z

    .line 272
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v11

    if-nez v11, :cond_17

    sget-boolean v11, Lcom/android/internal/telephony/ServiceStateTracker;->IsManSelMode:Z

    if-eqz v11, :cond_19

    :cond_17
    const/4 v9, 0x1

    .line 275
    .local v9, "needToSendOosIntent":Z
    :goto_4
    if-eqz v9, :cond_1a

    .line 276
    if-nez v6, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getState()I

    move-result v11

    if-eqz v11, :cond_1

    if-eqz v7, :cond_1

    .line 278
    new-instance v5, Landroid/content/Intent;

    const-string v11, "com.samsung.intent.action.ACTION_200SEC_OOS_TIMER_EXPIRED"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v5, "intentFwd":Landroid/content/Intent;
    const-string v11, "currScanNetwork"

    const/4 v14, 0x1

    invoke-virtual {v5, v11, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 280
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopManualOosTimer()V
    invoke-static {v11}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$700(Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;)V

    goto/16 :goto_1

    .line 262
    .end local v5    # "intentFwd":Landroid/content/Intent;
    .end local v9    # "needToSendOosIntent":Z
    :cond_18
    const/4 v11, 0x0

    goto :goto_3

    .line 272
    :cond_19
    const/4 v9, 0x0

    goto :goto_4

    .line 284
    .restart local v9    # "needToSendOosIntent":Z
    :cond_1a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopManualOosTimer()V
    invoke-static {v11}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$700(Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;)V

    goto/16 :goto_1

    .line 286
    .end local v7    # "isGsmActive":Z
    .end local v9    # "needToSendOosIntent":Z
    .end local v10    # "simState":Ljava/lang/String;
    :cond_1b
    const-string v11, "android.intent.action.ACTION_SIMCARDMANAGER_LAUNCH_RESP"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 287
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->switchToCdmaInChinaMacauArea(Z)V

    goto/16 :goto_1

    .line 288
    :cond_1c
    const-string v11, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_SWITCH_BACK_TO_GSM_IN_HONGKONG"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 291
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->pollState()V

    goto/16 :goto_1

    .line 292
    :cond_1d
    const-string v11, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_PENDING"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 294
    .local v3, "extra":Landroid/os/Bundle;
    const-string v11, "CDMA"

    const-string v14, "pendedMode"

    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 295
    const-string v11, "switchToCdmaInChinaMacauArea"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 296
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const-string v14, "CDMA"

    const/4 v15, 0x1

    invoke-virtual {v11, v14, v15}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->startPendingIntentTimer(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 298
    :cond_1e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const-string v14, "CDMA"

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->startPendingIntentTimer(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 301
    :cond_1f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[Global mode] pendedMode error:: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "pendedMode"

    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 303
    .end local v3    # "extra":Landroid/os/Bundle;
    :cond_20
    const-string v11, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_PENDING_TIMER_EXPIRED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_23

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 305
    .restart local v3    # "extra":Landroid/os/Bundle;
    const-string v11, "CDMA"

    const-string v14, "pendedMode"

    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_22

    .line 306
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopPendingIntentTimer()V

    .line 307
    const-string v11, "isSwitchToCdmaInChinaMacauArea"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_21

    .line 308
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->switchToCdmaInChinaMacauArea(Z)V

    goto/16 :goto_1

    .line 310
    :cond_21
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sendNetChangeIntent(Z)V

    goto/16 :goto_1

    .line 313
    :cond_22
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[Global mode] pendedMode error:: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "pendedMode"

    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 315
    .end local v3    # "extra":Landroid/os/Bundle;
    :cond_23
    const-string v11, "ACTION_DUALMODE_SETTING"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_24

    .line 316
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->switchToCdmaInChinaMacauArea(Z)V

    goto/16 :goto_1

    .line 317
    :cond_24
    const-string v11, "com.samsung.intent.action.Slot1SwitchCompleted"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_29

    .line 319
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const-string v14, "[Global Mode] ReduceSearchTime - Slot1SwitchCompleted"

    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 320
    sget-boolean v11, Lcom/android/internal/telephony/ServiceStateTracker;->mReduceSearchTimeShouldProceed:Z

    if-eqz v11, :cond_25

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getState()I

    move-result v11

    if-eqz v11, :cond_25

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->slot2ReduceSearchTimerAvailable()Z
    invoke-static {v11}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$1400(Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;)Z

    move-result v11

    if-nez v11, :cond_26

    .line 322
    :cond_25
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/internal/telephony/ServiceStateTracker;->mReduceSearchTimeShouldProceed:Z

    .line 324
    :cond_26
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[Global Mode] ReduceSearchTime - mReduceSearchTimeShouldProceed = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-boolean v15, Lcom/android/internal/telephony/ServiceStateTracker;->mReduceSearchTimeShouldProceed:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 326
    const-string v11, "ril.mHasEverSwitchedToGsm"

    const/4 v14, 0x0

    const-string v15, "false"

    invoke-static {v11, v14, v15}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 327
    .local v8, "mHasEverSwitchedToGsm":Ljava/lang/String;
    sget-boolean v11, Lcom/android/internal/telephony/ServiceStateTracker;->mReduceSearchTimeShouldProceed:Z

    if-eqz v11, :cond_27

    const/4 v11, 0x0

    invoke-static {v11}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v11

    const/4 v14, 0x1

    if-ne v11, v14, :cond_27

    const-string v11, "true"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_27

    .line 330
    const-wide/32 v14, 0x11170

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCurrentSystemTime:J
    invoke-static {v11}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$1500(Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;)J

    move-result-wide v18

    sub-long v16, v16, v18

    sub-long v12, v14, v16

    .line 331
    .local v12, "timeElapsed":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[Global Mode] ReduceSearchTime - timeElapsed = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 332
    const-wide/16 v14, 0x3e8

    cmp-long v11, v12, v14

    if-lez v11, :cond_28

    .line 334
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    invoke-virtual {v11, v12, v13}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->startReduceSearchTimer(J)V

    .line 342
    .end local v12    # "timeElapsed":J
    :cond_27
    :goto_5
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/internal/telephony/ServiceStateTracker;->mReduceSearchTimeShouldProceed:Z

    goto/16 :goto_1

    .line 337
    .restart local v12    # "timeElapsed":J
    :cond_28
    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/internal/telephony/ServiceStateTracker;->mSlot1ShouldSwitchImmediately:Z

    .line 338
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sendNetChangeIntent(Z)V

    goto :goto_5

    .line 343
    .end local v8    # "mHasEverSwitchedToGsm":Ljava/lang/String;
    .end local v12    # "timeElapsed":J
    :cond_29
    const-string v11, "com.samsung.intent.action.ReduceSearchTimerExpired"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2a

    .line 344
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const-string v14, "[Global Mode] ReduceSearchTime - ReduceSearchTimerExpired"

    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 346
    const-string v11, "ril.mHasEverSwitchedToGsm"

    const/4 v14, 0x0

    const-string v15, "false"

    invoke-static {v11, v14, v15}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 347
    .restart local v8    # "mHasEverSwitchedToGsm":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getState()I

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    invoke-static {v11}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v11

    const/4 v14, 0x1

    if-ne v11, v14, :cond_1

    const-string v11, "true"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->slot2ReduceSearchTimerAvailable()Z
    invoke-static {v11}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->access$1400(Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 351
    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/internal/telephony/ServiceStateTracker;->mSlot1ShouldSwitchImmediately:Z

    .line 352
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sendNetChangeIntent(Z)V

    goto/16 :goto_1

    .line 354
    .end local v8    # "mHasEverSwitchedToGsm":Ljava/lang/String;
    :cond_2a
    const-string v11, "com.samsung.intent.action.SlotSwitched"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2b

    .line 355
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->SlotSwitched()V

    goto/16 :goto_1

    .line 357
    :cond_2b
    const-string v11, "IRGSMSST"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "RIL received unexpected Intent: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
