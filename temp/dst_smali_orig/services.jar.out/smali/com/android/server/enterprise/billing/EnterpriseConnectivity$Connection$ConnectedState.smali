.class Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;
.super Lcom/android/internal/util/State;
.source "EnterpriseConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p2, "x1"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v2, "ConnectedState: enter"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->showNotification()V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;
    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableBlockRules(Ljava/util/Set;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in enableBlockRules: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v1, "ConnectedState: exit"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ConnectedState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v6, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->eventToName(I)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ConnectedState ignore msg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v6, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->eventToName(I)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    const/4 v2, 0x0

    .local v2, "retVal":Z
    :goto_0
    return v2

    .end local v2    # "retVal":Z
    :sswitch_0
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v4, "ConnectedState onDisconnect"

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->onDisconnect()V
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$7100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$7200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    const/4 v2, 0x1

    .restart local v2    # "retVal":Z
    goto :goto_0

    .end local v2    # "retVal":Z
    :sswitch_1
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const/16 v4, 0x3f2

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V
    invoke-static {v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$7300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isWifiActive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v5, "ConnectedState: turn off connection"

    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOffConnection()Z
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDisconnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$7400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    move-result-object v5

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$7500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    :try_start_1
    monitor-exit v4

    const/4 v2, 0x1

    .restart local v2    # "retVal":Z
    goto :goto_0

    .end local v2    # "retVal":Z
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error in connected state "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :sswitch_2
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v4, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V
    invoke-static {v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$7600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->setContainersForConnection()V
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_2
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const/4 v5, 0x1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->changeUidRangeRules(Z)V
    invoke-static {v3, v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)V

    monitor-exit v4

    const/4 v2, 0x1

    .restart local v2    # "retVal":Z
    goto/16 :goto_0

    .end local v2    # "retVal":Z
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :sswitch_3
    const/4 v2, 0x1

    .restart local v2    # "retVal":Z
    goto/16 :goto_0

    .end local v2    # "retVal":Z
    :sswitch_4
    const/4 v2, 0x1

    .restart local v2    # "retVal":Z
    goto/16 :goto_0

    .end local v2    # "retVal":Z
    :sswitch_5
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getEnabled()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z
    invoke-static {v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4302(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ConnectedState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v6, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->eventToName(I)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z
    invoke-static {v5}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOffConnection()Z
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDisconnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$7400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$7700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    :cond_1
    const/4 v2, 0x1

    .restart local v2    # "retVal":Z
    goto/16 :goto_0

    .end local v2    # "retVal":Z
    :sswitch_6
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getOffloadToWifi()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z
    invoke-static {v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3202(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isWifiActive()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v4, "ConnectedState: turn off connection"

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOffConnection()Z
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDisconnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$7400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$7800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    :cond_2
    const/4 v2, 0x1

    .restart local v2    # "retVal":Z
    goto/16 :goto_0

    .end local v2    # "retVal":Z
    :sswitch_7
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getOffloadToMobile()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$8000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToMobile:Z
    invoke-static {v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$7902(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v4, "ConnectedState: ignore offload to mobile change"

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    const/4 v2, 0x1

    .restart local v2    # "retVal":Z
    goto/16 :goto_0

    .end local v2    # "retVal":Z
    :sswitch_8
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_4

    .local v1, "enabled":Z
    :goto_2
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v3

    if-eq v3, v1, :cond_3

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z
    invoke-static {v3, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4702(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v4, "ConnectedState: turn off connection"

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOffConnection()Z
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDisconnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$7400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$8100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    :cond_3
    const/4 v2, 0x1

    .restart local v2    # "retVal":Z
    goto/16 :goto_0

    .end local v1    # "enabled":Z
    .end local v2    # "retVal":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :sswitch_9
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getConnectionEnabled()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z
    invoke-static {v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4902(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v4, "ConnectedState: turn off connection"

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOffConnection()Z
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDisconnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$7400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$8200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    :cond_5
    const/4 v2, 0x1

    .restart local v2    # "retVal":Z
    goto/16 :goto_0

    .end local v2    # "retVal":Z
    :sswitch_a
    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getRoamingDataAllowed()Z
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v4

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z
    invoke-static {v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5202(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v4, "ConnectedState: turn off connection"

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOffConnection()Z
    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDisconnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$7400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$8300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    :cond_6
    const/4 v2, 0x1

    .restart local v2    # "retVal":Z
    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_5
        0x3ec -> :sswitch_7
        0x3ed -> :sswitch_6
        0x3ee -> :sswitch_9
        0x3ef -> :sswitch_a
        0x3f2 -> :sswitch_1
        0x3f3 -> :sswitch_8
        0x3f5 -> :sswitch_3
        0x3f6 -> :sswitch_4
        0x44e -> :sswitch_0
    .end sparse-switch
.end method
