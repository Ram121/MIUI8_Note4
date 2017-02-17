.class Lcom/android/server/am/ActivityRecord$Token;
.super Landroid/view/IApplicationToken$Stub;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Token"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final weakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 468
    invoke-direct {p0}, Landroid/view/IApplicationToken$Stub;-><init>()V

    .line 469
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 470
    iput-object p2, p0, Lcom/android/server/am/ActivityRecord$Token;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 471
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityRecord$Token;

    .prologue
    .line 464
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord$Token;->tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method private static final tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .param p0, "token"    # Lcom/android/server/am/ActivityRecord$Token;

    .prologue
    const/4 v1, 0x0

    .line 550
    if-nez p0, :cond_1

    move-object v0, v1

    .line 557
    :cond_0
    :goto_0
    return-object v0

    .line 553
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 554
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 555
    goto :goto_0
.end method


# virtual methods
.method public getDisplayId()I
    .locals 2

    .prologue
    .line 513
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 514
    .local v0, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v1

    .line 517
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getKeyDispatchingTimeout()J
    .locals 5

    .prologue
    .line 539
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord$Token;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 540
    :try_start_0
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord$Token;->tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 541
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    .line 542
    const-wide/16 v2, 0x0

    monitor-exit v4

    .line 545
    :goto_0
    return-wide v2

    .line 544
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 545
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->getInputDispatchingTimeoutLocked(Lcom/android/server/am/ActivityRecord;)J

    move-result-wide v2

    monitor-exit v4

    goto :goto_0

    .line 546
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasSubWindow()Z
    .locals 2

    .prologue
    .line 582
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 583
    .local v0, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->hasSubWindow()Z

    move-result v1

    .line 586
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isHomeWindow()Z
    .locals 2

    .prologue
    .line 592
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 593
    .local v0, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 594
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isHomeWindow()Z

    move-result v1

    .line 596
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keyDispatchingTimedOut(Ljava/lang/String;)Z
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 526
    iget-object v5, p0, Lcom/android/server/am/ActivityRecord$Token;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 527
    :try_start_0
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord$Token;->tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 528
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v3, :cond_0

    .line 529
    monitor-exit v5

    .line 534
    :goto_0
    return v4

    .line 531
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getWaitingHistoryRecordLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 532
    .local v2, "anrActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_1

    iget-object v1, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 533
    .local v1, "anrApp":Lcom/android/server/am/ProcessRecord;
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$Token;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->inputDispatchingTimedOut(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 532
    .end local v1    # "anrApp":Lcom/android/server/am/ProcessRecord;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 533
    .end local v2    # "anrActivity":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 6
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/high16 v5, 0x8000000

    .line 561
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 562
    .local v0, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 563
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v3, :cond_1

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 568
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getOptionFlags()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getOptionFlags()I

    move-result v4

    xor-int v1, v3, v4

    .line 569
    .local v1, "diff":I
    if-ne v1, v5, :cond_2

    .line 570
    invoke-virtual {p1, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    .line 571
    .local v2, "option":Z
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3, v5, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto :goto_0

    .line 575
    .end local v1    # "diff":I
    .end local v2    # "option":Z
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityRecord;->scheduleSetMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 602
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Token{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 605
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 606
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 607
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public windowsDrawn()V
    .locals 3

    .prologue
    .line 475
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord$Token;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 476
    :try_start_0
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord$Token;->tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 477
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->windowsDrawnLocked()V

    .line 480
    :cond_0
    monitor-exit v2

    .line 481
    return-void

    .line 480
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public windowsGone()V
    .locals 3

    .prologue
    .line 495
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord$Token;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 496
    :try_start_0
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord$Token;->tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 497
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 499
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 506
    monitor-exit v2

    .line 509
    :goto_0
    return-void

    .line 508
    :cond_0
    monitor-exit v2

    goto :goto_0

    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public windowsVisible()V
    .locals 3

    .prologue
    .line 485
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord$Token;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 486
    :try_start_0
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord$Token;->tokenToActivityRecordLocked(Lcom/android/server/am/ActivityRecord$Token;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 487
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->windowsVisibleLocked()V

    .line 490
    :cond_0
    monitor-exit v2

    .line 491
    return-void

    .line 490
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
