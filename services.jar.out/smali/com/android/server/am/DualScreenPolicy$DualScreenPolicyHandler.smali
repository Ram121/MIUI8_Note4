.class final Lcom/android/server/am/DualScreenPolicy$DualScreenPolicyHandler;
.super Landroid/os/Handler;
.source "DualScreenPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/DualScreenPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DualScreenPolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/DualScreenPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/am/DualScreenPolicy;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/android/server/am/DualScreenPolicy$DualScreenPolicyHandler;->this$0:Lcom/android/server/am/DualScreenPolicy;

    .line 1015
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1016
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1020
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1027
    :goto_0
    return-void

    .line 1022
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/DualScreenPolicy$DualScreenPolicyHandler;->this$0:Lcom/android/server/am/DualScreenPolicy;

    # getter for: Lcom/android/server/am/DualScreenPolicy;->mActivityService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/DualScreenPolicy;->access$000(Lcom/android/server/am/DualScreenPolicy;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    monitor-enter v1

    .line 1023
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/DualScreenPolicy$DualScreenPolicyHandler;->this$0:Lcom/android/server/am/DualScreenPolicy;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/DualScreenPolicy;->handleMultipleScreenStateChangedLocked(II)V

    .line 1024
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1020
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
