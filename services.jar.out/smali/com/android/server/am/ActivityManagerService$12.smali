.class Lcom/android/server/am/ActivityManagerService$12;
.super Landroid/content/IIntentReceiver$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->finishBooting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .prologue
    .line 9887
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    .prologue
    .line 9893
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mBootPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$2200(Lcom/android/server/am/ActivityManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mBootPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$2200(Lcom/android/server/am/ActivityManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9894
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mBootPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$2200(Lcom/android/server/am/ActivityManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 9896
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 9897
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    .line 9899
    monitor-exit v1

    .line 9900
    return-void

    .line 9899
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
