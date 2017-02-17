.class Lcom/sec/epdg/EpdgService$21;
.super Lcom/sec/epdg/EpdgBroadcastReceiver;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    .prologue
    .line 4480
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$21;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public processFastPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4483
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public processSlowPath(Ljava/lang/Object;)V
    .locals 12
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/16 v10, 0xb

    const/4 v8, 0x1

    const/4 v11, 0x0

    .line 4489
    const/4 v6, 0x0

    .line 4490
    .local v6, "ni":Landroid/net/NetworkInfo;
    const/4 v0, 0x0

    .local v0, "action":Ljava/lang/String;
    move-object v2, p1

    .line 4491
    check-cast v2, Landroid/content/Intent;

    .line 4493
    .local v2, "intent":Landroid/content/Intent;
    # invokes: Lcom/sec/epdg/EpdgService;->getIsSimCardRemoved()Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2200()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4494
    const-string v7, "[EPDGService]"

    const-string v8, "No Sim card. Ignore all notifications"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4625
    :cond_0
    :goto_0
    return-void

    .line 4497
    :cond_1
    if-eqz v2, :cond_2

    .line 4498
    const-string/jumbo v7, "networkInfo"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    .end local v6    # "ni":Landroid/net/NetworkInfo;
    check-cast v6, Landroid/net/NetworkInfo;

    .line 4500
    .restart local v6    # "ni":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4503
    :cond_2
    if-nez v0, :cond_3

    .line 4504
    const-string v7, "[EPDGService]"

    const-string v8, "Action is null"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4508
    :cond_3
    if-nez v6, :cond_4

    .line 4509
    const-string v7, "[EPDGService]"

    const-string v8, "Cannot get network info from intent"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4512
    :cond_4
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    .line 4513
    .local v5, "networkType":I
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 4517
    .local v4, "networkState":Landroid/net/NetworkInfo$State;
    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4518
    if-ne v5, v8, :cond_0

    .line 4519
    sget-object v7, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v7, :cond_0

    .line 4520
    const-string v7, "[EPDGService]"

    const-string v8, "Wifi is disconnected"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4521
    # setter for: Lcom/sec/epdg/EpdgService;->mDisconnectRequired:Z
    invoke-static {v11}, Lcom/sec/epdg/EpdgService;->access$7402(Z)Z

    .line 4522
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1300()Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/epdg/EpdgService$21;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/sec/epdg/EpdgService;->access$1200(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4523
    # getter for: Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1400()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 4525
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v7

    sget-object v8, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v7, v8}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    .line 4528
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDns;->getInstance()Lcom/sec/epdg/EpdgPeriodicDns;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgPeriodicDns;->removePeriodicDnsPendingIntent()V

    .line 4529
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$800()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Enabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4531
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgTimers;

    move-result-object v7

    sget-object v8, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v7, v8}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 4532
    sget-object v7, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    # invokes: Lcom/sec/epdg/EpdgService;->setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V
    invoke-static {v7}, Lcom/sec/epdg/EpdgService;->access$9600(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 4533
    sget-object v7, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    # invokes: Lcom/sec/epdg/EpdgService;->setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V
    invoke-static {v7}, Lcom/sec/epdg/EpdgService;->access$6300(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 4535
    :cond_5
    # invokes: Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V
    invoke-static {v11}, Lcom/sec/epdg/EpdgService;->access$200(Z)V

    .line 4536
    iget-object v7, p0, Lcom/sec/epdg/EpdgService$21;->this$0:Lcom/sec/epdg/EpdgService;

    # setter for: Lcom/sec/epdg/EpdgService;->mWifiMgrState:I
    invoke-static {v7, v11}, Lcom/sec/epdg/EpdgService;->access$9702(Lcom/sec/epdg/EpdgService;I)I

    .line 4537
    iget-object v7, p0, Lcom/sec/epdg/EpdgService$21;->this$0:Lcom/sec/epdg/EpdgService;

    # setter for: Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I
    invoke-static {v7, v11}, Lcom/sec/epdg/EpdgService;->access$1502(Lcom/sec/epdg/EpdgService;I)I

    goto/16 :goto_0

    .line 4540
    :cond_6
    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4541
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-eq v7, v8, :cond_b

    .line 4542
    const-string v7, "[EPDGService]"

    const-string v8, "CONNECTIVITY_ACTION is triggered by non WIFI network"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4544
    invoke-static {v5}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v1

    .line 4549
    .local v1, "apnType":Ljava/lang/String;
    if-nez v1, :cond_7

    .line 4550
    const-string v7, "[EPDGService]"

    const-string v8, "CONNECTIVITY_ACTION is non interested network so ignore"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4554
    :cond_7
    const-string v7, "[EPDGService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "networkState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " networkType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isOngoingConnectionOverWifi: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->isOngoingConnectionOverWifi(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4557
    sget-object v7, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v7, :cond_8

    .line 4568
    if-ne v5, v10, :cond_0

    .line 4569
    iget-object v7, p0, Lcom/sec/epdg/EpdgService$21;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v5}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/sec/epdg/EpdgService;->notifyL2WHandoverResult(ZLjava/lang/String;)V
    invoke-static {v7, v11, v8}, Lcom/sec/epdg/EpdgService;->access$5500(Lcom/sec/epdg/EpdgService;ZLjava/lang/String;)V

    .line 4570
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v7

    sget-object v8, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->APN_TYPE_IMS:Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    invoke-virtual {v7, v8}, Lcom/sec/epdg/mapcon/MapconTable;->resetAppPolicy(Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;)V

    goto/16 :goto_0

    .line 4573
    :cond_8
    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v7, :cond_0

    .line 4574
    if-nez v5, :cond_a

    .line 4577
    # getter for: Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$9800()Landroid/net/ConnectivityManager;

    move-result-object v7

    # getter for: Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$9800()Landroid/net/ConnectivityManager;

    invoke-virtual {v7, v11}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v3

    .line 4579
    .local v3, "lp":Landroid/net/LinkProperties;
    if-nez v3, :cond_9

    .line 4580
    const-string v7, "[EPDGService]"

    const-string v8, "MOBILE linkproperty is null."

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4583
    :cond_9
    iget-object v7, p0, Lcom/sec/epdg/EpdgService$21;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    # setter for: Lcom/sec/epdg/EpdgService;->mInternetIntfName:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/sec/epdg/EpdgService;->access$9902(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Ljava/lang/String;

    .line 4584
    const-string v7, "[EPDGService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Internet PDN is connected; with interface Name"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/epdg/EpdgService$21;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mInternetIntfName:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/epdg/EpdgService;->access$9900(Lcom/sec/epdg/EpdgService;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4586
    .end local v3    # "lp":Landroid/net/LinkProperties;
    :cond_a
    if-ne v5, v10, :cond_0

    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->isOngoingConnectionOverWifi(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 4591
    iget-object v7, p0, Lcom/sec/epdg/EpdgService$21;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-static {v5}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    invoke-static {v7, v8}, Lcom/sec/epdg/EpdgService;->access$5000(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 4595
    .end local v1    # "apnType":Ljava/lang/String;
    :cond_b
    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v7, :cond_10

    .line 4596
    iget-object v7, p0, Lcom/sec/epdg/EpdgService$21;->this$0:Lcom/sec/epdg/EpdgService;

    # setter for: Lcom/sec/epdg/EpdgService;->mWifiMgrState:I
    invoke-static {v7, v8}, Lcom/sec/epdg/EpdgService;->access$9702(Lcom/sec/epdg/EpdgService;I)I

    .line 4597
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v7

    if-nez v7, :cond_c

    .line 4598
    const-string v7, "[EPDGService]"

    const-string v8, "WifiCallingDisabled so ignore"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4602
    :cond_c
    sget-boolean v7, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-eqz v7, :cond_f

    .line 4603
    # invokes: Lcom/sec/epdg/EpdgService;->getEpdgTemporaryBlocked()Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$10000()Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    move-result-object v7

    sget-object v8, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->BLACKLIST_COUNTRY:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    if-ne v7, v8, :cond_d

    .line 4604
    const-string v7, "[EPDGService]"

    const-string v8, "BLACK LIST country. voWIFI is not allowed"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4606
    :cond_d
    # getter for: Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3100()Lcom/sec/epdg/EpdgService$WfcProfileTask;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 4607
    const-string v7, "[EPDGService]"

    const-string v8, "AP status check is running"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4610
    :cond_e
    const-string v7, "[EPDGService]"

    const-string v8, "check AP is allowed for EPDG service first"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4611
    new-instance v7, Lcom/sec/epdg/EpdgService$WfcProfileTask;

    iget-object v8, p0, Lcom/sec/epdg/EpdgService$21;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1300()Landroid/os/Handler;

    move-result-object v9

    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2500()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/epdg/EpdgService;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/sec/epdg/EpdgService$WfcProfileTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;Ljava/lang/String;)V

    # setter for: Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;
    invoke-static {v7}, Lcom/sec/epdg/EpdgService;->access$3102(Lcom/sec/epdg/EpdgService$WfcProfileTask;)Lcom/sec/epdg/EpdgService$WfcProfileTask;

    .line 4612
    # getter for: Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$3100()Lcom/sec/epdg/EpdgService$WfcProfileTask;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Void;

    invoke-virtual {v7, v8}, Lcom/sec/epdg/EpdgService$WfcProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 4616
    :cond_f
    iget-object v7, p0, Lcom/sec/epdg/EpdgService$21;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onWifiConnected()V
    invoke-static {v7}, Lcom/sec/epdg/EpdgService;->access$6500(Lcom/sec/epdg/EpdgService;)V

    goto/16 :goto_0

    .line 4617
    :cond_10
    sget-object v7, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v7, :cond_0

    .line 4619
    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2500()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/epdg/EpdgUtils;->isWifiSettingOn(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 4620
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2700()Lcom/sec/epdg/EpdgTimers;

    move-result-object v7

    sget-object v8, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v7, v8}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    goto/16 :goto_0
.end method
