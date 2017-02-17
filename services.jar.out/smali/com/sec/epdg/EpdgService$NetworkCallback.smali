.class Lcom/sec/epdg/EpdgService$NetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    .prologue
    .line 5918
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$NetworkCallback;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p2, "x1"    # Lcom/sec/epdg/EpdgService$1;

    .prologue
    .line 5918
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService$NetworkCallback;-><init>(Lcom/sec/epdg/EpdgService;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 5921
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAvailable() for network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5922
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$NetworkCallback;->this$0:Lcom/sec/epdg/EpdgService;

    # setter for: Lcom/sec/epdg/EpdgService;->mCurrentNetwork:Landroid/net/Network;
    invoke-static {v0, p1}, Lcom/sec/epdg/EpdgService;->access$11302(Lcom/sec/epdg/EpdgService;Landroid/net/Network;)Landroid/net/Network;

    .line 5923
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    const/4 v4, 0x0

    .line 5939
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLost() for network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5941
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    .line 5942
    .local v0, "netType":I
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLost() netType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5943
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$NetworkCallback;->this$0:Lcom/sec/epdg/EpdgService;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService$NetworkCallback;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$11400(Lcom/sec/epdg/EpdgService;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v2

    # invokes: Lcom/sec/epdg/EpdgService;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V
    invoke-static {v1, v2}, Lcom/sec/epdg/EpdgService;->access$11500(Lcom/sec/epdg/EpdgService;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 5944
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$NetworkCallback;->this$0:Lcom/sec/epdg/EpdgService;

    # setter for: Lcom/sec/epdg/EpdgService;->mCurrentNetwork:Landroid/net/Network;
    invoke-static {v1, v4}, Lcom/sec/epdg/EpdgService;->access$11302(Lcom/sec/epdg/EpdgService;Landroid/net/Network;)Landroid/net/Network;

    .line 5945
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$NetworkCallback;->this$0:Lcom/sec/epdg/EpdgService;

    # setter for: Lcom/sec/epdg/EpdgService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-static {v1, v4}, Lcom/sec/epdg/EpdgService;->access$11402(Lcom/sec/epdg/EpdgService;Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/ConnectivityManager$NetworkCallback;

    .line 5946
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$NetworkCallback;->this$0:Lcom/sec/epdg/EpdgService;

    const-wide/16 v2, 0xbb8

    # invokes: Lcom/sec/epdg/EpdgService;->startTimerForNetworkRequest(J)V
    invoke-static {v1, v2, v3}, Lcom/sec/epdg/EpdgService;->access$11600(Lcom/sec/epdg/EpdgService;J)V

    .line 5947
    return-void
.end method

.method public onUnavailable()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5927
    const-string v1, "[EPDGService]"

    const-string/jumbo v2, "onUnavailable()"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5929
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    .line 5930
    .local v0, "netType":I
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUnavailable() netType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5931
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$NetworkCallback;->this$0:Lcom/sec/epdg/EpdgService;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService$NetworkCallback;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$11400(Lcom/sec/epdg/EpdgService;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v2

    # invokes: Lcom/sec/epdg/EpdgService;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V
    invoke-static {v1, v2}, Lcom/sec/epdg/EpdgService;->access$11500(Lcom/sec/epdg/EpdgService;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 5932
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$NetworkCallback;->this$0:Lcom/sec/epdg/EpdgService;

    # setter for: Lcom/sec/epdg/EpdgService;->mCurrentNetwork:Landroid/net/Network;
    invoke-static {v1, v4}, Lcom/sec/epdg/EpdgService;->access$11302(Lcom/sec/epdg/EpdgService;Landroid/net/Network;)Landroid/net/Network;

    .line 5933
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$NetworkCallback;->this$0:Lcom/sec/epdg/EpdgService;

    # setter for: Lcom/sec/epdg/EpdgService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-static {v1, v4}, Lcom/sec/epdg/EpdgService;->access$11402(Lcom/sec/epdg/EpdgService;Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/ConnectivityManager$NetworkCallback;

    .line 5934
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$NetworkCallback;->this$0:Lcom/sec/epdg/EpdgService;

    const-wide/16 v2, 0xbb8

    # invokes: Lcom/sec/epdg/EpdgService;->startTimerForNetworkRequest(J)V
    invoke-static {v1, v2, v3}, Lcom/sec/epdg/EpdgService;->access$11600(Lcom/sec/epdg/EpdgService;J)V

    .line 5935
    return-void
.end method
