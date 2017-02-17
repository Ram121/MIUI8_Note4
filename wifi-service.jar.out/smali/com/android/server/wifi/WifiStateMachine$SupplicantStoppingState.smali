.class Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStoppingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 10018
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 10022
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$11800(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 10024
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mScanController:Lcom/samsung/android/server/wifi/WifiScanController;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$18400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/samsung/android/server/wifi/WifiScanController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/WifiScanController;->unregisterSensorMonitor()V

    .line 10039
    const-string v4, "init.svc.wpa_supplicant"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10040
    .local v3, "suppState":Ljava/lang/String;
    if-nez v3, :cond_0

    const-string v3, "unknown"

    .line 10041
    :cond_0
    const-string v4, "init.svc.p2p_supplicant"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10042
    .local v1, "p2pSuppState":Ljava/lang/String;
    if-nez v1, :cond_1

    const-string v1, "unknown"

    .line 10044
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SupplicantStoppingState: stopSupplicant  init.svc.wpa_supplicant="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " init.svc.p2p_supplicant="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 10047
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiMonitor:Lcom/android/server/wifi/WifiMonitor;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$9400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiMonitor;->stopSupplicant()V

    .line 10050
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v6, 0x20011

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # ++operator for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$18504(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v7

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 10052
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiState(I)V
    invoke-static {v4, v8}, Lcom/android/server/wifi/WifiStateMachine;->access$9500(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 10053
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStateTracker:Lcom/android/server/wifi/SupplicantStateTracker;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$14500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v4

    const v5, 0x2006f

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 10055
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iput-boolean v8, v4, Lcom/android/server/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    .line 10056
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/WifiStateMachine;->mNetInterfaceName:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/WifiStateMachine;->mIpAddress:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 10057
    const-string v4, "WifiStateMachine"

    const-string v5, "Delete remained route rule which set by WiFi"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10059
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/WifiStateMachine;->mNetInterfaceName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v6, v6, Lcom/android/server/wifi/WifiStateMachine;->mIpAddress:Ljava/lang/String;

    const-string v7, "delete"

    invoke-interface {v4, v5, v6, v7}, Landroid/os/INetworkManagementService;->controlPrivatePacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10060
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/wifi/WifiStateMachine;->mIpAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 10068
    :cond_2
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->access$3400(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$3300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->enableIpv6(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 10074
    :goto_1
    return-void

    .line 10061
    :catch_0
    move-exception v0

    .line 10062
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v4, "WifiStateMachine"

    const-string v5, "controlPrivatePacket error!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10069
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    .line 10070
    .local v2, "re":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to enable IPv6: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 10071
    .end local v2    # "re":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .line 10072
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to enable IPv6: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 10064
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v4

    goto :goto_0

    .line 10063
    :catch_4
    move-exception v4

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 10077
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v2, p1, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 10079
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 10119
    :goto_0
    return v0

    .line 10081
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v2, "Supplicant connection received while stopping"

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    :cond_0
    :goto_1
    :sswitch_1
    move v0, v1

    .line 10119
    goto :goto_0

    .line 10084
    :sswitch_2
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v3, "Supplicant connection lost"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10085
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleSupplicantConnectionLoss(Z)V
    invoke-static {v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$16900(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 10086
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$10400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$18600(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 10089
    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$18500(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 10090
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v2, "Timed out on a supplicant stop, kill and proceed"

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10091
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleSupplicantConnectionLoss(Z)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$16900(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 10092
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$10400(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$18700(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 10108
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStoppingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$18800(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1

    .line 10079
    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_4
        0x2000c -> :sswitch_4
        0x2000d -> :sswitch_4
        0x2000e -> :sswitch_4
        0x20011 -> :sswitch_3
        0x20015 -> :sswitch_4
        0x20018 -> :sswitch_4
        0x20048 -> :sswitch_4
        0x20050 -> :sswitch_4
        0x20054 -> :sswitch_4
        0x20055 -> :sswitch_4
        0x2005a -> :sswitch_4
        0x20258 -> :sswitch_1
        0x2025a -> :sswitch_4
        0x24001 -> :sswitch_0
        0x24002 -> :sswitch_2
    .end sparse-switch
.end method
