.class Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIMRecordsBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V
    .locals 0

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/SIMRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/SIMRecords$1;

    .prologue
    .line 585
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 588
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, "action":Ljava/lang/String;
    const-string v4, "com.samsung.intent.action.setCardDataInit"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 590
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string v5, "com.samsung.intent.action.setCardDataInit"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 591
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-le v4, v7, :cond_1

    const-string v4, "CTC"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 594
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v4, v4, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    if-nez v4, :cond_0

    .line 595
    const-string v4, "gsm.sim.selectnetwork"

    const-string v5, "GSM"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->setCardDataInit()V

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 601
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string v5, "gsm.sim.state"

    const-string v6, "ABSENT"

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 602
    .local v3, "state":Ljava/lang/String;
    const-string v4, "READY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 603
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->setCardDataInit()V

    goto :goto_0

    .line 611
    .end local v3    # "state":Ljava/lang/String;
    :cond_3
    const-string v4, "gsm.sim.selectnetwork"

    const-string v5, "GSM"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->setCardDataInit()V

    goto :goto_0

    .line 614
    :cond_4
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 615
    const-string v4, "CTC"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 629
    :cond_5
    const-string v4, "android.intent.action.CSC_UPDATE_NETWORK_DONE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 630
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string v5, "[Voicemail] receive android.intent.action.CSC_UPDATE_NETWORK_DONE"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 631
    const-string v4, "networkName"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 632
    .local v2, "mNetworkName":Ljava/lang/String;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 633
    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string v5, "[Voicemail] Voicemail number can not be set because there is no matched networkName!"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 634
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableVoiceMailInSIM()Z

    move-result v4

    if-nez v4, :cond_0

    .line 635
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Voicemail] Voicemail number can not be set what matched with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 636
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-le v4, v7, :cond_8

    .line 637
    const-string v4, "SLOT_ID"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 638
    .local v0, "SlotID":I
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v4, v4, Lcom/android/internal/telephony/uicc/SIMRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 639
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    # invokes: Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceMailByNetworkName(Ljava/lang/String;)V
    invoke-static {v4, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$100(Lcom/android/internal/telephony/uicc/SIMRecords;Ljava/lang/String;)V

    .line 640
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    # setter for: Lcom/android/internal/telephony/uicc/SIMRecords;->selectedNwkName:Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$202(Lcom/android/internal/telephony/uicc/SIMRecords;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 643
    .end local v0    # "SlotID":I
    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    # invokes: Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceMailByNetworkName(Ljava/lang/String;)V
    invoke-static {v4, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$100(Lcom/android/internal/telephony/uicc/SIMRecords;Ljava/lang/String;)V

    .line 644
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    # setter for: Lcom/android/internal/telephony/uicc/SIMRecords;->selectedNwkName:Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$202(Lcom/android/internal/telephony/uicc/SIMRecords;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 647
    .end local v2    # "mNetworkName":Ljava/lang/String;
    :cond_9
    const-string v4, "android.intent.action.CSC_UPDATE_VOICEMAIL_DONE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 648
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string v5, "[Voicemail] receive android.intent.action.CSC_UPDATE_VOICEMAIL_DONE"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 649
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v4, v4, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    if-eqz v4, :cond_a

    .line 650
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    new-instance v5, Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-direct {v5}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;-><init>()V

    iput-object v5, v4, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    .line 651
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string v5, "[Voicemail] Reload voicemail-conf.xml as it could be changed."

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 653
    :cond_a
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableVoiceMailInSIM()Z

    move-result v4

    if-nez v4, :cond_0

    .line 654
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    # getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->selectedNwkName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$200(Lcom/android/internal/telephony/uicc/SIMRecords;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 655
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    # getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->selectedNwkName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$200(Lcom/android/internal/telephony/uicc/SIMRecords;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceMailByNetworkName(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$100(Lcom/android/internal/telephony/uicc/SIMRecords;Ljava/lang/String;)V

    goto/16 :goto_0
.end method