.class Lcom/android/server/display/DisplayManagerService$LocalService$2;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService$LocalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/DisplayManagerService$LocalService;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService$LocalService;)V
    .locals 0

    .prologue
    .line 2985
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$2;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2988
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$2;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mLockPMS:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$4200(Lcom/android/server/display/DisplayManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2989
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$2;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$LocalService$2;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    # getter for: Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestingBrightness:I
    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$4600(Lcom/android/server/display/DisplayManagerService$LocalService;)I

    move-result v3

    # invokes: Lcom/android/server/display/DisplayManagerService;->requestGlobalDisplayStateInternal(II)V
    invoke-static {v0, v2, v3}, Lcom/android/server/display/DisplayManagerService;->access$5100(Lcom/android/server/display/DisplayManagerService;II)V

    .line 2990
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$2;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/display/DisplayManagerService;->mIsForceUnblankDisplay:Z
    invoke-static {v0, v2}, Lcom/android/server/display/DisplayManagerService;->access$5902(Lcom/android/server/display/DisplayManagerService;Z)Z

    .line 2991
    monitor-exit v1

    .line 2992
    return-void

    .line 2991
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
