.class Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WatchdogEnabledState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 1643
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1646
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->getName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1647
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->requestWakeLock(Z)V

    .line 1648
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v11, 0xd

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v12, 0x21046

    const/4 v8, 0x0

    .line 1653
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 1811
    :goto_0
    return v8

    .line 1655
    :sswitch_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isWatchdogEnabled()Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1656
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    :cond_0
    :goto_1
    move v8, v7

    .line 1811
    goto :goto_0

    .line 1660
    :sswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    .line 1661
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "networkInfo"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 1663
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Network state change "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v5, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1665
    :cond_1
    iget-object v9, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v5, "wifiInfo"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiInfo;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v9, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4102(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    .line 1666
    iget-object v9, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v5, "linkProperties"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/LinkProperties;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v9, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1202(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 1668
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1669
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v5

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$6000(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    .line 1670
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateCurrentBssid(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1677
    :cond_3
    :goto_2
    sget-object v5, Lcom/android/server/wifi/WifiWatchdogStateMachine$6;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1762
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1763
    const-string v5, "WifiWatchdogStateMachine"

    const-string v6, "Scan will be aborted. Reset scanning flag."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v5, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 1765
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v5, v12}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7800(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    .line 1766
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    .line 1767
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 1769
    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7900(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1671
    :cond_5
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    iget-object v9, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v9

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$6000(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1672
    iget-object v9, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    :goto_3
    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateCurrentBssid(Ljava/lang/String;)V
    invoke-static {v9, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v5, v6

    goto :goto_3

    .line 1673
    :cond_7
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1674
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateCurrentBssid(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1679
    :pswitch_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v6, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    iget-object v9, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    invoke-direct {v6, v9, v10, v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;D)V

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentLoss:Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6202(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    .line 1682
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v5

    const v6, 0x25014

    invoke-virtual {v5, v6}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 1683
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1684
    const-string v5, "WifiWatchdogStateMachine"

    const-string v6, "Ongoing scan was aborted because of new connection. Reset scanning flag."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v5, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 1686
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v5, v12}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6400(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    .line 1687
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    .line 1688
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 1691
    :cond_8
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v6, 0x2

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->setL2State(I)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6500(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    .line 1692
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/16 v6, 0xb

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2102(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 1694
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->skipCaptivePortalCheck()Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1695
    const-string v5, "WifiWatchdogStateMachine"

    const-string v6, "mDetectedCPBefore is initialized."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDetectedCPBefore:Z
    invoke-static {v5, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6602(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 1698
    :cond_9
    sput-boolean v7, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCouldNotIdentifyCaptivePortalState:Z

    goto/16 :goto_1

    .line 1703
    :pswitch_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v6

    const-string v5, "wifi_auto_connect"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_d

    move v5, v7

    :goto_4
    iput-boolean v5, v6, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->mIsAutoConnect:Z

    .line 1704
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/LinkProperties;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 1705
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateDnsLinkProperty()V
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 1707
    :cond_a
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1708
    const-string v5, "WifiWatchdogStateMachine"

    const-string v6, "Scan will be aborted. Reset scanning flag!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v5, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 1710
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v5, v12}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6700(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)V

    .line 1711
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    .line 1712
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->removeMessages(I)V

    .line 1715
    :cond_b
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsInDhcpSession:Z
    invoke-static {v5, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 1716
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v5

    if-nez v5, :cond_e

    .line 1717
    :cond_c
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignore, wifiinfo "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " bssid "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6800(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1718
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v5, v7, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6900(Lcom/android/server/wifi/WifiWatchdogStateMachine;ZI)V

    goto/16 :goto_1

    :cond_d
    move v5, v8

    .line 1703
    goto/16 :goto_4

    .line 1720
    :cond_e
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1733
    :pswitch_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v0

    .line 1734
    .local v0, "currentState":Lcom/android/internal/util/IState;
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v5

    if-eq v0, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityCheckingState:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityCheckingState;

    move-result-object v5

    if-eq v0, v5, :cond_0

    .line 1735
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7400(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1742
    .end local v0    # "currentState":Lcom/android/internal/util/IState;
    :pswitch_3
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->isIgnorableAP()Z
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1743
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v6, "updatePoorNetworkDetection = false because it is an AP set skipInternetCheck"

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7600(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1744
    :cond_f
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v5, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$7702(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 1747
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v5, v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2102(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 1750
    :cond_10
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v5

    const v6, 0x21028

    invoke-virtual {v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->removeMessages(I)V

    .line 1751
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v5

    if-eq v5, v11, :cond_0

    .line 1752
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v5

    const v6, 0x21028

    const-wide/16 v8, 0xbb8

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 1757
    :pswitch_4
    const-string v5, "WifiWatchdogStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignore "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ". Wrong broadcast msg from WSM. (This will be removed.)"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1775
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :sswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    .line 1776
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v5, "newState"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/SupplicantState;

    .line 1778
    .local v4, "supplicantState":Landroid/net/wifi/SupplicantState;
    sget-object v5, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v4, v5, :cond_0

    .line 1779
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4102(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    .line 1780
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 1781
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v5

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$6000(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_12

    .line 1783
    :cond_11
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateCurrentBssid(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1784
    :cond_12
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v8

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->access$6000(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1785
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v8

    if-eqz v8, :cond_13

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    :cond_13
    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateCurrentBssid(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1786
    :cond_14
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1787
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateCurrentBssid(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$6100(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1793
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "supplicantState":Landroid/net/wifi/SupplicantState;
    :sswitch_3
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_0

    .line 1794
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$5100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$NotConnectedState;

    move-result-object v6

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8000(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1799
    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/RssiPacketCountInfo;

    .line 1800
    .local v1, "info":Landroid/net/wifi/RssiPacketCountInfo;
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 1801
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$4100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    iget v6, v1, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 1803
    :cond_15
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget v6, v1, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLastTxBad:I
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8102(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 1804
    iget-object v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget v6, v1, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLastTxGood:I
    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$8202(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    goto/16 :goto_1

    .line 1653
    nop

    :sswitch_data_0
    .sparse-switch
        0x21001 -> :sswitch_0
        0x21002 -> :sswitch_1
        0x21004 -> :sswitch_2
        0x21005 -> :sswitch_3
        0x25015 -> :sswitch_4
    .end sparse-switch

    .line 1677
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
