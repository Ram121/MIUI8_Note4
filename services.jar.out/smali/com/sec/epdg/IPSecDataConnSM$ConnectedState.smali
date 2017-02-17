.class Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;
.super Lcom/android/internal/util/State;
.source "IPSecDataConnSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecDataConnSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectedState"
.end annotation


# instance fields
.field interfaceUpRecvd:Z

.field final synthetic this$0:Lcom/sec/epdg/IPSecDataConnSM;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 0

    .prologue
    .line 746
    iput-object p1, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p2, "x1"    # Lcom/sec/epdg/IPSecDataConnSM$1;

    .prologue
    .line 746
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 12

    .prologue
    const/16 v6, 0x10

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 750
    const-string v3, "[IPSECDATACONNSM]"

    const-string v4, "SM in ConnectedState state : Entered ConnectedState "

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/epdg/IWlanApnContext;->setState(I)V

    .line 753
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 754
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeNatValue()I

    move-result v2

    .line 755
    .local v2, "nattTimer":I
    if-lez v2, :cond_0

    .line 756
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SM start KEEPALIVE timer : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance()Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v3

    mul-int/lit16 v4, v2, 0x3e8

    invoke-virtual {v3, v4}, Lcom/sec/epdg/EpdgPeriodicDpd;->startTimerForNattKeepAlive(I)V

    .line 759
    :cond_0
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/IWlanApnSetting;->getPeriodicDpdTimer()I

    move-result v0

    .line 760
    .local v0, "dpdTimer":I
    if-lez v0, :cond_1

    .line 761
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SM start periodic DPD timer : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    mul-int/lit16 v4, v0, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v3, v6, v4, v5}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    .line 763
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$4800(Lcom/sec/epdg/IPSecDataConnSM;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    mul-int/lit16 v5, v0, 0x3e8

    int-to-long v8, v5

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->isConnectedModeDpdAllow()Z

    move-result v3

    if-nez v3, :cond_1

    .line 765
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 766
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connected mode dpd not allowed, apnType is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/IPSecDataConnSM;->access$4900()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getNonE911CallCount()I

    move-result v3

    invoke-static {v3}, Lcom/sec/epdg/EpdgService;->setPreviousNonE911CallCount(I)V

    .line 772
    .end local v0    # "dpdTimer":I
    .end local v2    # "nattTimer":I
    :cond_1
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->sendWifiRssiIntentDelayToEpdg(Z)V
    invoke-static {v3, v11}, Lcom/sec/epdg/IPSecDataConnSM;->access$5000(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 773
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v3

    if-nez v3, :cond_3

    .line 778
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v4, 0xb

    const-wide/16 v6, 0x4e20

    invoke-virtual {v3, v4, v6, v7}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    .line 779
    iput-boolean v10, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->interfaceUpRecvd:Z

    .line 784
    :goto_0
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isSupportChangeRatWhenThrottle()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgRilSharedData;->getImsApnThrottled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 787
    const-string v3, "[IPSECDATACONNSM]"

    const-string v4, "IMS APN exited from Throttle state"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/sec/epdg/EpdgRilSharedData;->setImsApnThrottled(Z)V

    .line 789
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$5100(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 790
    .local v1, "msgNetRegi":Landroid/os/Message;
    const/16 v3, 0x50

    iput v3, v1, Landroid/os/Message;->what:I

    .line 791
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 793
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyW2LRegistrantDelay(Z)V
    invoke-static {v3, v10}, Lcom/sec/epdg/IPSecDataConnSM;->access$5200(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 794
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyL2WRegistrantDelay(Z)V
    invoke-static {v3, v11}, Lcom/sec/epdg/IPSecDataConnSM;->access$5300(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 796
    .end local v1    # "msgNetRegi":Landroid/os/Message;
    :cond_2
    return-void

    .line 781
    :cond_3
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3, v10}, Lcom/sec/epdg/IPSecDataConnSM;->setIsHandOver(Z)V

    goto :goto_0
.end method

.method public exit()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 800
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "SM in ConnectedState state : Exiting ConnectedState "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0xb

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$5400(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 802
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance()Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgPeriodicDpd;->removeTimerForNattKeepAlive()V

    .line 804
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v0, v2}, Lcom/sec/epdg/IPSecDataConnSM;->access$5500(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 805
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$4800(Lcom/sec/epdg/IPSecDataConnSM;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/4 v1, 0x0

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->sendWifiRssiIntentDelayToEpdg(Z)V
    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$5000(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 808
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v13, 0xb

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/16 v10, 0x10

    const/4 v9, 0x0

    .line 812
    const/4 v5, 0x0

    .line 813
    .local v5, "status":Z
    const/4 v1, 0x0

    .line 814
    .local v1, "errorEnableEpdg":Z
    const-string v6, "[IPSECDATACONNSM]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SM Current State"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v8}, Lcom/sec/epdg/IPSecDataConnSM;->access$5600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Message:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-static {v8}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 956
    :pswitch_0
    const-string v6, "[IPSECDATACONNSM]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unhandled event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-static {v8}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    :cond_0
    :goto_0
    return v5

    .line 818
    :pswitch_1
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 819
    const-string v6, "[IPSECDATACONNSM]"

    const-string v7, "Ignoring the time out  message as this is a handover request. Mobile Interface is already up."

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 820
    :cond_1
    iget-boolean v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->interfaceUpRecvd:Z

    if-ne v11, v6, :cond_2

    .line 821
    const-string v6, "[IPSECDATACONNSM]"

    const-string v7, "Initial attach scenario. Mobile Interface is already up. Ignoring the timeout message. NO action needed"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 823
    :cond_2
    const-string v6, "[IPSECDATACONNSM]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SM Current State"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v8}, Lcom/sec/epdg/IPSecDataConnSM;->access$5700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "RIL ISSUE -- Interface up event not recevied for Initial attach to ePDG. Attempting to tear down control path."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string v6, "[IPSECDATACONNSM]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending IWLAN Disconnect Request to Epdgservice for cid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v8}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$5100(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v6

    invoke-static {v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 827
    .local v3, "msgForDisconnect":Landroid/os/Message;
    const/16 v6, 0x29

    iput v6, v3, Landroid/os/Message;->what:I

    .line 828
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v6

    iput v6, v3, Landroid/os/Message;->arg1:I

    .line 829
    new-instance v6, Landroid/os/AsyncResult;

    new-instance v7, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;

    iget-object v8, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v8}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v8

    invoke-direct {v7, v8}, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;-><init>(I)V

    invoke-direct {v6, v12, v7, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v6, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 831
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 835
    .end local v3    # "msgForDisconnect":Landroid/os/Message;
    :pswitch_2
    const-string v6, "[IPSECDATACONNSM]"

    const-string/jumbo v7, "send DPD message"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v6, v10}, Lcom/sec/epdg/IPSecDataConnSM;->access$5800(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 837
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$4800(Lcom/sec/epdg/IPSecDataConnSM;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->checkConnection()V
    invoke-static {v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$5900(Lcom/sec/epdg/IPSecDataConnSM;)V

    .line 840
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 841
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/IWlanApnSetting;->getPeriodicDpdTimer()I

    move-result v0

    .line 842
    .local v0, "dpdTimer":I
    if-lez v0, :cond_0

    .line 843
    const-string v6, "[IPSECDATACONNSM]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SM start periodic DPD timer : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Seconds"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    mul-int/lit16 v7, v0, 0x3e8

    int-to-long v8, v7

    invoke-virtual {v6, v10, v8, v9}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    .line 845
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$4800(Lcom/sec/epdg/IPSecDataConnSM;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    mul-int/lit16 v10, v0, 0x3e8

    int-to-long v10, v10

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 851
    .end local v0    # "dpdTimer":I
    :pswitch_3
    const-string v6, "[IPSECDATACONNSM]"

    const-string/jumbo v7, "send NATT KEEPALIVE message"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->sendKeepAlive()V
    invoke-static {v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$6000(Lcom/sec/epdg/IPSecDataConnSM;)V

    .line 853
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance()Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgPeriodicDpd;->removeTimerForNattKeepAlive()V

    .line 854
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 855
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/IWlanApnSetting;->getIkesetting()Lcom/sec/epdg/IWlanApnSetting$IKeSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/IWlanApnSetting$IKeSetting;->getmIkeNatValue()I

    move-result v4

    .line 856
    .local v4, "nattTimer":I
    if-lez v4, :cond_0

    .line 857
    const-string v6, "[IPSECDATACONNSM]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SM start periodic NATT KEEPALIVE timer : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Seconds"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance()Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v6

    mul-int/lit16 v7, v4, 0x3e8

    invoke-virtual {v6, v7}, Lcom/sec/epdg/EpdgPeriodicDpd;->startTimerForNattKeepAlive(I)V

    goto/16 :goto_0

    .line 866
    .end local v4    # "nattTimer":I
    :pswitch_4
    const-string v6, "[IPSECDATACONNSM]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SM Current State "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v8}, Lcom/sec/epdg/IPSecDataConnSM;->access$6100(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Disconnection Happened, this is critical failure."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget v7, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z
    invoke-static {v6, v9, v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$3700(Lcom/sec/epdg/IPSecDataConnSM;ZI)Z

    .line 869
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6, v7}, Lcom/sec/epdg/EpdgCommands;->triggerHandover(ILjava/lang/Boolean;)V

    .line 870
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mPeerDisconnectedState:Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;
    invoke-static {v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$6200(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_0

    .line 875
    :pswitch_5
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6, v7}, Lcom/sec/epdg/EpdgCommands;->triggerHandover(ILjava/lang/Boolean;)V

    .line 876
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mW2MInProgressState:Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;
    invoke-static {v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$4000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_0

    .line 879
    :pswitch_6
    const-string v6, "[IPSECDATACONNSM]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SM Current State"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v8}, Lcom/sec/epdg/IPSecDataConnSM;->access$6300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "chek l2w handover condition after 1.5 sec from L2W HO"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mRilCid:I
    invoke-static {v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$3900(Lcom/sec/epdg/IPSecDataConnSM;)I

    move-result v6

    invoke-static {v6}, Lcom/sec/epdg/EpdgService;->isW2LRecommended(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 882
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v7, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mW2MInProgressState:Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;
    invoke-static {v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$4000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 887
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v6, v9}, Lcom/sec/epdg/IPSecDataConnSM;->setIsW2LRequested(Z)V

    .line 888
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6, v7}, Lcom/sec/epdg/EpdgCommands;->triggerHandover(ILjava/lang/Boolean;)V

    goto/16 :goto_0

    .line 892
    :pswitch_7
    const-string v6, "[IPSECDATACONNSM]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SM Current State"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v8}, Lcom/sec/epdg/IPSecDataConnSM;->access$6400(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Unexpected event"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 899
    :pswitch_8
    const-string v6, "[IPSECDATACONNSM]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SM Current State"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v8}, Lcom/sec/epdg/IPSecDataConnSM;->access$6500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Disconnection Request Received"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    iput-boolean v9, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->interfaceUpRecvd:Z

    .line 911
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v6, v13}, Lcom/sec/epdg/IPSecDataConnSM;->access$6600(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 912
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 913
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance()Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgPeriodicDpd;->removeTimerForNattKeepAlive()V

    .line 914
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v6, v10}, Lcom/sec/epdg/IPSecDataConnSM;->access$6700(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 915
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$4800(Lcom/sec/epdg/IPSecDataConnSM;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    :cond_3
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget v7, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z
    invoke-static {v6, v9, v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$3700(Lcom/sec/epdg/IPSecDataConnSM;ZI)Z

    .line 919
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->disconnectEpdgConnection()V
    invoke-static {v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$1700(Lcom/sec/epdg/IPSecDataConnSM;)V

    goto/16 :goto_0

    .line 924
    :pswitch_9
    iput-boolean v11, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->interfaceUpRecvd:Z

    .line 925
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v6, v13}, Lcom/sec/epdg/IPSecDataConnSM;->access$6800(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 926
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget v7, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z
    invoke-static {v6, v11, v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$3700(Lcom/sec/epdg/IPSecDataConnSM;ZI)Z

    move-result v1

    .line 927
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget v7, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->setEpdgInterfaceDropRule(ZI)V
    invoke-static {v6, v9, v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$2500(Lcom/sec/epdg/IPSecDataConnSM;ZI)V

    .line 928
    if-ne v11, v1, :cond_0

    .line 929
    const-string v6, "[IPSECDATACONNSM]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending IWLAN Disconnect Request to Epdgservice for cid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "as Data path route addition failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$5100(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;

    move-result-object v6

    invoke-static {v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 934
    .local v2, "msg1":Landroid/os/Message;
    const/16 v6, 0x29

    iput v6, v2, Landroid/os/Message;->what:I

    .line 935
    iget v6, p1, Landroid/os/Message;->arg1:I

    iput v6, v2, Landroid/os/Message;->arg1:I

    .line 936
    new-instance v6, Landroid/os/AsyncResult;

    new-instance v7, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v7, v8}, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;-><init>(I)V

    invoke-direct {v6, v12, v7, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 938
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 939
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget v7, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z
    invoke-static {v6, v9, v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$3700(Lcom/sec/epdg/IPSecDataConnSM;ZI)Z

    goto/16 :goto_0

    .line 947
    .end local v2    # "msg1":Landroid/os/Message;
    :pswitch_a
    const-string v6, "[IPSECDATACONNSM]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SM Current State"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v8}, Lcom/sec/epdg/IPSecDataConnSM;->access$6900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Unexpected event"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 952
    :pswitch_b
    iget-object v6, p0, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleWifiStateChange(Landroid/os/Message;)V
    invoke-static {v6, p1}, Lcom/sec/epdg/IPSecDataConnSM;->access$1800(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 816
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_5
        :pswitch_a
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_9
        :pswitch_b
        :pswitch_1
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_2
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method
