.class Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;
.super Lcom/android/internal/util/State;
.source "WifiHs20StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModifyingMO"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    invoke-super {p0}, Lcom/android/internal/util/State;->enter()V

    const-string v2, "HS20StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enter : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0x4e22

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSubscriptionManagerMessenger:Landroid/os/Messenger;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$4400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x32

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x0

    .local v0, "bRetVal":Z
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    const-string v3, "HS20StateMachine"

    const-string v4, "CMD_START_POLICY_REMEDIATION"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$8700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "HS20StateMachine"

    const-string v4, "CMD_START_SUBSCRIPTION_REMEDIATION"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$8800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string v3, "HS20StateMachine"

    const-string v4, "CMD_ABORT_PROVISIONING"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput v7, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->statusProvisioning:I

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mReleasingTLSState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$8900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mVerifyingAAAState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$9000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$9100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_5
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->statusProvisioning:I

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mReleasingTLSState:Lcom/android/internal/util/State;
    invoke-static {v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$9200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_6
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    iput v6, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput-boolean v5, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->update:Z

    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    const/16 v4, 0x1b5e

    iget v5, p1, Landroid/os/Message;->arg1:I

    const/4 v6, 0x0

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendSoapRequest(IIILjava/lang/String;)V
    invoke-static {v3, v4, v7, v5, v6}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$5900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;IIILjava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput-boolean v7, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->update:Z

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput-boolean v5, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->update:Z

    goto :goto_1

    :sswitch_7
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    const/16 v4, 0x1b65

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_8
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .local v2, "message":Landroid/os/Message;
    const/16 v3, 0x4e22

    iput v3, v2, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v3, v3, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->subscription_flag:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$ModifyingMO;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSubscriptionManagerMessenger:Landroid/os/Messenger;
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$4400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Landroid/os/Messenger;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1b5e -> :sswitch_6
        0x1b61 -> :sswitch_8
        0x1b62 -> :sswitch_4
        0x1b65 -> :sswitch_3
        0x1b66 -> :sswitch_5
        0x1b6e -> :sswitch_0
        0x1b72 -> :sswitch_7
        0x1b75 -> :sswitch_1
        0x1b76 -> :sswitch_2
    .end sparse-switch
.end method