.class Lcom/android/server/wm/MultiWindowTransition$1;
.super Ljava/lang/Object;
.source "MultiWindowTransition.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/MultiWindowTransition;->setMinimizeAnimation(Lcom/android/server/wm/AppWindowToken;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MultiWindowTransition;

.field final synthetic val$wtoken:Lcom/android/server/wm/AppWindowToken;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MultiWindowTransition;Lcom/android/server/wm/AppWindowToken;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowTransition$1;->this$0:Lcom/android/server/wm/MultiWindowTransition;

    iput-object p2, p0, Lcom/android/server/wm/MultiWindowTransition$1;->val$wtoken:Lcom/android/server/wm/AppWindowToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/16 v3, 0x67

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$1;->this$0:Lcom/android/server/wm/MultiWindowTransition;

    # getter for: Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v1}, Lcom/android/server/wm/MultiWindowTransition;->access$000(Lcom/android/server/wm/MultiWindowTransition;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition$1;->val$wtoken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$1;->this$0:Lcom/android/server/wm/MultiWindowTransition;

    # getter for: Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v1}, Lcom/android/server/wm/MultiWindowTransition;->access$000(Lcom/android/server/wm/MultiWindowTransition;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition$1;->val$wtoken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$1;->this$0:Lcom/android/server/wm/MultiWindowTransition;

    # getter for: Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v1}, Lcom/android/server/wm/MultiWindowTransition;->access$000(Lcom/android/server/wm/MultiWindowTransition;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$1;->val$wtoken:Lcom/android/server/wm/AppWindowToken;

    const/4 v2, -0x1

    iput v2, v1, Lcom/android/server/wm/AppWindowToken;->mTargetTransit:I

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    return-void
.end method
