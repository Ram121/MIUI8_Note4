.class Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$4;
.super Ljava/lang/Object;
.source "MultiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->closeMultiWindowTrayBar(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

.field final synthetic val$forceClose:Z


# direct methods
.method constructor <init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;Z)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$4;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iput-boolean p2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$4;->val$forceClose:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$4;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->access$300(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .local v0, "closeIntent":Landroid/content/Intent;
    const-string v2, "com.sec.android.multiwindow.close.traybar"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.sec.android.multiwindow.extra.forceclose"

    iget-boolean v3, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$4;->val$forceClose:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$4;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "closeIntent":Landroid/content/Intent;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
