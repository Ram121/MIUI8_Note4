.class Lcom/android/internal/telephony/uicc/UiccCardApplication$1;
.super Landroid/os/Handler;
.source "UiccCardApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccCardApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private sendResultToTarget(Landroid/os/Message;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Message;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 520
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 521
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 522
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v10, 0x1f4

    const/16 v8, 0x68

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 530
    const/4 v1, -0x1

    .line 531
    .local v1, "attemptsRemaining":I
    const/4 v4, 0x0

    .line 534
    .local v4, "response":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$000(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 535
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] while being destroyed. Ignoring."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$100(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 670
    :goto_0
    return-void

    .line 540
    :cond_0
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 667
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown Event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$100(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 669
    :goto_1
    const/4 v1, -0x1

    .line 670
    goto :goto_0

    .line 550
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 551
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 552
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I
    invoke-static {v5, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$200(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)I

    move-result v1

    .line 555
    :cond_1
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v4    # "response":Landroid/os/Message;
    check-cast v4, Landroid/os/Message;

    .line 557
    .restart local v4    # "response":Landroid/os/Message;
    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 558
    iput v1, v4, Landroid/os/Message;->arg1:I

    .line 559
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 562
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 563
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->onQueryFdnEnabled(Landroid/os/AsyncResult;)V
    invoke-static {v5, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$300(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 566
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 567
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/16 v5, 0x69

    invoke-virtual {p0, v5, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 568
    .local v2, "delayedMsg":Landroid/os/Message;
    invoke-virtual {p0, v2, v10, v11}, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 571
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "delayedMsg":Landroid/os/Message;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 572
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->onChangeFdnDone(Landroid/os/AsyncResult;)V
    invoke-static {v5, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$400(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 575
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 576
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->onQueryFacilityLock(Landroid/os/AsyncResult;)V
    invoke-static {v5, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$500(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 579
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 580
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->onChangeFacilityLock(Landroid/os/AsyncResult;)V
    invoke-static {v5, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$600(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 583
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v6, "handleMessage (EVENT_RADIO_UNAVAILABLE)"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$700(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 584
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    # setter for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    invoke-static {v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$802(Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    goto :goto_1

    .line 588
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 589
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_2

    .line 590
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;I)I
    invoke-static {v5, v0, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$900(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;I)I

    move-result v1

    .line 592
    :cond_2
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v4    # "response":Landroid/os/Message;
    check-cast v4, Landroid/os/Message;

    .line 593
    .restart local v4    # "response":Landroid/os/Message;
    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 594
    iput v1, v4, Landroid/os/Message;->arg1:I

    .line 595
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 598
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 599
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 600
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;I)I
    invoke-static {v5, v0, v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$900(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;I)I

    move-result v1

    .line 602
    :cond_3
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v4    # "response":Landroid/os/Message;
    check-cast v4, Landroid/os/Message;

    .line 603
    .restart local v4    # "response":Landroid/os/Message;
    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 604
    iput v1, v4, Landroid/os/Message;->arg1:I

    .line 605
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 608
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 609
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_4

    .line 610
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;I)I
    invoke-static {v5, v0, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$900(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;I)I

    move-result v1

    .line 612
    :cond_4
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v4    # "response":Landroid/os/Message;
    check-cast v4, Landroid/os/Message;

    .line 613
    .restart local v4    # "response":Landroid/os/Message;
    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 614
    iput v1, v4, Landroid/os/Message;->arg1:I

    .line 615
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 620
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 622
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_5

    .line 623
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;I)I
    invoke-static {v5, v0, v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$900(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;I)I

    .line 625
    :cond_5
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Message;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->sendResultToTarget(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 628
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 629
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_6

    .line 630
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v6, 0x2

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;I)I
    invoke-static {v5, v0, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$900(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;I)I

    move-result v1

    .line 632
    :cond_6
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v4    # "response":Landroid/os/Message;
    check-cast v4, Landroid/os/Message;

    .line 633
    .restart local v4    # "response":Landroid/os/Message;
    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 634
    iput v1, v4, Landroid/os/Message;->arg1:I

    .line 635
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 638
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 639
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v6, 0x0

    # setter for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccStateUpdated:I
    invoke-static {v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$1002(Lcom/android/internal/telephony/uicc/UiccCardApplication;I)I

    .line 640
    invoke-virtual {p0, v8, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 641
    .restart local v2    # "delayedMsg":Landroid/os/Message;
    invoke-virtual {p0, v2, v10, v11}, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 646
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "delayedMsg":Landroid/os/Message;
    :sswitch_d
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v6, "EVENT_WAIT_UPDATE_DONE"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$100(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 648
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 649
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccStateUpdated:I
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$1000(Lcom/android/internal/telephony/uicc/UiccCardApplication;)I

    move-result v5

    const/16 v6, 0xa

    if-le v5, v6, :cond_8

    .line 650
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v6, "EVENT_WAIT_UPDATE_DONE finish"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$100(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 651
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_7

    .line 652
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v6, 0x4

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;I)I
    invoke-static {v5, v0, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$900(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;I)I

    move-result v1

    .line 654
    :cond_7
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v4    # "response":Landroid/os/Message;
    check-cast v4, Landroid/os/Message;

    .line 655
    .restart local v4    # "response":Landroid/os/Message;
    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 656
    iput v1, v4, Landroid/os/Message;->arg1:I

    .line 657
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 659
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # operator++ for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccStateUpdated:I
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$1008(Lcom/android/internal/telephony/uicc/UiccCardApplication;)I

    .line 660
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v6, "EVENT_WAIT_UPDATE_DONE again"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$100(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 661
    invoke-virtual {p0, v8, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 662
    .local v3, "delayedMsgAgain":Landroid/os/Message;
    const-wide/16 v6, 0xa

    invoke-virtual {p0, v3, v6, v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 540
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_7
        0x3 -> :sswitch_8
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_0
        0x9 -> :sswitch_6
        0x64 -> :sswitch_9
        0x65 -> :sswitch_a
        0x66 -> :sswitch_b
        0x67 -> :sswitch_c
        0x68 -> :sswitch_d
        0x69 -> :sswitch_3
    .end sparse-switch
.end method
