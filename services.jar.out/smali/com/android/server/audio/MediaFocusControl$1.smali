.class Lcom/android/server/audio/MediaFocusControl$1;
.super Landroid/telephony/PhoneStateListener;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method constructor <init>(Lcom/android/server/audio/MediaFocusControl;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$1;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 458
    if-ne p1, v0, :cond_1

    .line 460
    # getter for: Lcom/android/server/audio/MediaFocusControl;->mRingingLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->access$1600()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$1;->this$0:Lcom/android/server/audio/MediaFocusControl;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/audio/MediaFocusControl;->mIsRinging:Z
    invoke-static {v0, v2}, Lcom/android/server/audio/MediaFocusControl;->access$1702(Lcom/android/server/audio/MediaFocusControl;Z)Z

    .line 462
    monitor-exit v1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 463
    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_0

    .line 465
    :cond_2
    # getter for: Lcom/android/server/audio/MediaFocusControl;->mRingingLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->access$1600()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 466
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$1;->this$0:Lcom/android/server/audio/MediaFocusControl;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/audio/MediaFocusControl;->mIsRinging:Z
    invoke-static {v0, v2}, Lcom/android/server/audio/MediaFocusControl;->access$1702(Lcom/android/server/audio/MediaFocusControl;Z)Z

    .line 483
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 489
    if-eqz p1, :cond_1

    .line 490
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 491
    .local v0, "updateState":I
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$1;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # getter for: Lcom/android/server/audio/MediaFocusControl;->mRilState:I
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->access$1800(Lcom/android/server/audio/MediaFocusControl;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 492
    const-string v1, "MediaFocusControl"

    const-string v2, "##################################################"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### RIL State is changed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl$1;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # getter for: Lcom/android/server/audio/MediaFocusControl;->mRilState:I
    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl;->access$1800(Lcom/android/server/audio/MediaFocusControl;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const-string v1, "MediaFocusControl"

    const-string v2, "##################################################"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 496
    const-string/jumbo v1, "ril_state_connected=1"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$1;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # setter for: Lcom/android/server/audio/MediaFocusControl;->mRilState:I
    invoke-static {v1, v0}, Lcom/android/server/audio/MediaFocusControl;->access$1802(Lcom/android/server/audio/MediaFocusControl;I)I

    .line 501
    .end local v0    # "updateState":I
    :cond_1
    return-void
.end method