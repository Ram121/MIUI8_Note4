.class Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;
.super Landroid/content/BroadcastReceiver;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string v12, "[Receiver]+"

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .local v1, "action":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Action: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    const-string v11, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "android.intent.action.internal_sim_state_changed"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "android.intent.action.stk.icc_status_change"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "com.samsung.intent.action.QCOMHOTSWAP"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v11, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v12, 0x1

    # setter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsSystemShutdown:Z
    invoke-static {v11, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$502(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Z)Z

    goto :goto_0

    :cond_2
    const-string v11, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "android.intent.action.internal_sim_state_changed"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_3
    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsSystemShutdown:Z
    invoke-static {v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$500(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mIsSystemShutdown: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsSystemShutdown:Z
    invoke-static {v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$500(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", ignore "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v11, "phone"

    const/4 v12, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .local v10, "slotId":I
    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "slotId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    const-string v11, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "android.intent.action.internal_sim_state_changed"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_5
    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    :cond_6
    const-string v11, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "simStatus":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "simStatus: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    const-string v11, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    const-string v11, "READY"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$600()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v10

    if-eqz v11, :cond_7

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$600()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v10

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SIM"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " hot plug in"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$600()[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v12, v11, v10

    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v12, 0x1

    # setter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z
    invoke-static {v11, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$702(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Z)Z

    :cond_7
    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->queryIccId(I)V
    invoke-static {v11, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$800(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V

    :cond_8
    :goto_1
    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string v12, "[Receiver]-"

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v11, "ABSENT"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v12, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v13, 0x4

    const/4 v14, -0x1

    invoke-virtual {v12, v13, v10, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_a
    const-string v11, "UNKNOWN"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v12, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v13, 0x7

    const/4 v14, -0x1

    invoke-virtual {v12, v13, v10, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_b
    const-string v11, "CARD_IO_ERROR"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v12, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v13, 0x6

    const/4 v14, -0x1

    invoke-virtual {v12, v13, v10, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_c
    const-string v11, "UNKNOWN"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isSimReset:[Z
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$900()[Z

    move-result-object v11

    aget-boolean v11, v11, v10

    if-eqz v11, :cond_e

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isSimReset:[Z
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$900()[Z

    move-result-object v11

    const/4 v12, 0x0

    aput-boolean v12, v11, v10

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_RIL_SupportQcomCrossMapping"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/ModemStackController;->isStackReady()Z

    move-result v11

    if-eqz v11, :cond_8

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1000()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_8

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v11

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1100()[I

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/internal/telephony/SubscriptionHelper;->updateSubActivation([IZ)V

    goto/16 :goto_1

    :cond_d
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v11

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1100()[I

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/internal/telephony/SubscriptionHelper;->updateSubActivation([IZ)V

    goto/16 :goto_1

    :cond_e
    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1200()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v11

    if-eqz v11, :cond_0

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1200()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    .local v4, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v5

    .local v5, "numApps":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v5, :cond_8

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .local v2, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v11, v12, :cond_f

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPin1State()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v11, v12, :cond_f

    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->queryIccId(I)V
    invoke-static {v11, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$800(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v2    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v3    # "i":I
    .end local v4    # "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v5    # "numApps":I
    :cond_10
    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ignoring simStatus: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_11
    const-string v11, "android.intent.action.stk.icc_status_change"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    const-string v11, "refresh_result"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .local v7, "refreshResult":I
    const-string v11, "SLOT_ID"

    const/4 v12, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "slotId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " refreshResult: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    const/4 v11, 0x2

    if-ne v7, v11, :cond_8

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isSimReset:[Z
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$900()[Z

    move-result-object v11

    const/4 v12, 0x1

    aput-boolean v12, v11, v10

    goto/16 :goto_1

    .end local v7    # "refreshResult":I
    :cond_12
    const-string v11, "android.intent.action.internal_sim_state_changed"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    const-string v11, "LOCKED"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    const-string v11, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "reason":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v12, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v13, 0x5

    const/4 v14, -0x1

    invoke-virtual {v12, v13, v10, v14, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .end local v6    # "reason":Ljava/lang/String;
    :cond_13
    const-string v11, "LOADED"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v12, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v13, 0x3

    const/4 v14, -0x1

    invoke-virtual {v12, v13, v10, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_14
    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ignoring simStatus: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_15
    const-string v11, "com.samsung.intent.action.QCOMHOTSWAP"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v11, "REASON"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .local v9, "simreason":Z
    if-nez v9, :cond_8

    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string v12, "Receive QCOMHOTSWAP false intent so sIsStartSimManagement setted false for initial"

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    const/4 v11, 0x0

    # setter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isCheckingCTCSim:Z
    invoke-static {v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1302(Z)Z

    goto/16 :goto_1
.end method
