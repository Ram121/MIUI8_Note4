.class Lcom/android/server/pm/PersonaManagerService$6$1;
.super Ljava/lang/Thread;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PersonaManagerService$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PersonaManagerService$6;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService$6;)V
    .locals 0

    .prologue
    .line 6610
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$6$1;->this$1:Lcom/android/server/pm/PersonaManagerService$6;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6612
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$6$1;->this$1:Lcom/android/server/pm/PersonaManagerService$6;

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$6$1;->this$1:Lcom/android/server/pm/PersonaManagerService$6;

    iget v1, v1, Lcom/android/server/pm/PersonaManagerService$6;->val$userHandle:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->removeUserStateExternal(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$8600(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 6613
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$6$1;->this$1:Lcom/android/server/pm/PersonaManagerService$6;

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6614
    :try_start_0
    const-string v0, "PersonaManagerService"

    const-string/jumbo v2, "removeUserStateLocked is called..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6615
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$6$1;->this$1:Lcom/android/server/pm/PersonaManagerService$6;

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$6$1;->this$1:Lcom/android/server/pm/PersonaManagerService$6;

    iget v2, v2, Lcom/android/server/pm/PersonaManagerService$6;->val$userHandle:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->removeUserStateLocked(I)V
    invoke-static {v0, v2}, Lcom/android/server/pm/PersonaManagerService;->access$8700(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 6616
    monitor-exit v1

    .line 6617
    return-void

    .line 6616
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
