.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$18$1;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/sec/SamsungPhoneWindowManager$18;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$18;


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager$18;)V
    .locals 0

    .prologue
    .line 3687
    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$18$1;->this$1:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3689
    const-string v0, "SamsungWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UVS orientation requested [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$18$1;->this$1:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$18;

    iget-object v2, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$18;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    # getter for: Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUvsOrientation:I
    invoke-static {v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->access$900(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3693
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$18$1;->this$1:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$18;

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$18;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3697
    :goto_0
    return-void

    .line 3694
    :catch_0
    move-exception v0

    goto :goto_0
.end method