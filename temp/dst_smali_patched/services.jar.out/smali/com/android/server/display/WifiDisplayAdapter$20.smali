.class Lcom/android/server/display/WifiDisplayAdapter$20;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter;->requestEnableLocked(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field final synthetic val$device:Landroid/net/wifi/p2p/WifiP2pDevice;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$20;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter$20;->val$device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput p3, p0, Lcom/android/server/display/WifiDisplayAdapter$20;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$20;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mIpRemoteDisplayController:Lcom/android/server/display/IpRemoteDisplayController;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$200(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/IpRemoteDisplayController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$20;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const-string v1, "CONN"

    const-string v2, ""

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->insertLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$600(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$20;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mIpRemoteDisplayController:Lcom/android/server/display/IpRemoteDisplayController;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$200(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/IpRemoteDisplayController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$20;->val$device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter$20;->val$type:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/IpRemoteDisplayController;->requestEnableWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    :cond_0
    return-void
.end method