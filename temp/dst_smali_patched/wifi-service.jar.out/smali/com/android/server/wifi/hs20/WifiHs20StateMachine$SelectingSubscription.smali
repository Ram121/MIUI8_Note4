.class Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;
.super Lcom/android/internal/util/State;
.source "WifiHs20StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectingSubscription"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    invoke-super {p0}, Lcom/android/internal/util/State;->enter()V

    const-string v0, "HS20StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v1, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->cmd:I

    const/4 v2, -0x1

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->executeCommand(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$7000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;II)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x1b5e

    const/4 v5, 0x1

    const/4 v0, 0x0

    .local v0, "bRetVal":Z
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    const-string v2, "HS20StateMachine"

    const-string v3, "CMD_START_POLICY_REMEDIATION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$7500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "HS20StateMachine"

    const-string v3, "CMD_START_SUBSCRIPTION_REMEDIATION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$7600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Landroid/os/Message;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "HS20StateMachine"

    const-string v3, "CMD_ABORT_PROVISIONING"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput v5, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->statusProvisioning:I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mReleasingTLSState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$7700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->cmd:I

    const-string v2, "HS20StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_EXECUTE_COMMAND  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->cmd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mCertEnrollmentState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$6200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$7800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mModifyingMO:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$6600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$7900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v2, "HS20StateMachine"

    const-string v3, "CMD_UPDATE_MO  "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mModifyingMO:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$6600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$8000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "HS20StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_ERROR  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput v5, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->statusProvisioning:I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->method_type:I

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendSoapRequest(IIILjava/lang/String;)V
    invoke-static {v2, v6, v5, v5, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$5900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;IIILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "HS20StateMachine"

    const-string v3, "CMD_HOTSPOT20_DISABLE  "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    const/16 v3, 0x1b65

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "HS20StateMachine"

    const-string v3, "CMD_RELEASE_TLS_CONNECTION  "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, v2, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->statusProvisioning:I

    const-string v2, "HS20StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_RELEASE_TLS_CONNECTION  statusProvisioning "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->statusProvisioning:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mReleasingTLSState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$8100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "HS20StateMachine"

    const-string v3, "CMD_SEND_SOAP_REQUEST  "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "User input completed"

    .local v1, "requestReason":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingSubscription;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    const/4 v3, 0x0

    const/16 v4, 0x1b6e

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendSoapRequest(IIILjava/lang/String;)V
    invoke-static {v2, v6, v3, v4, v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$5900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;IIILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1b5e -> :sswitch_8
        0x1b5f -> :sswitch_3
        0x1b61 -> :sswitch_4
        0x1b65 -> :sswitch_2
        0x1b66 -> :sswitch_7
        0x1b6e -> :sswitch_5
        0x1b72 -> :sswitch_6
        0x1b75 -> :sswitch_0
        0x1b76 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
