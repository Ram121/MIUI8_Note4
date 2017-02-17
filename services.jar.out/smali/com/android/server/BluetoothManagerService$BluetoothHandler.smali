.class Lcom/android/server/BluetoothManagerService$BluetoothHandler;
.super Landroid/os/Handler;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1845
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 1846
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1847
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 31
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1851
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v26

    if-eqz v26, :cond_0

    const-string v26, "BluetoothManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Message: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v28, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->debugGetMessageName(I)Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lcom/android/server/BluetoothManagerService;->access$2600(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    sparse-switch v26, :sswitch_data_0

    .line 2351
    :cond_1
    :goto_0
    return-void

    .line 1854
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v27

    monitor-enter v27

    .line 1856
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    if-nez v26, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBinding:Z
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$2800(Lcom/android/server/BluetoothManagerService;)Z

    move-result v26

    if-nez v26, :cond_4

    .line 1857
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v26

    if-eqz v26, :cond_2

    const-string v26, "BluetoothManagerService"

    const-string v28, "Binding to service to get name and address"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v26

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->setGetNameAddressOnly(Z)V

    .line 1860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v28, 0x64

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    .line 1861
    .local v23, "timeoutMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const-wide/16 v28, 0xbb8

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1862
    new-instance v10, Landroid/content/Intent;

    const-class v26, Landroid/bluetooth/IBluetooth;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1863
    .local v10, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v28 .. v28}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v28

    const/16 v29, 0x41

    sget-object v30, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v0, v10, v1, v2, v3}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v26

    if-nez v26, :cond_3

    .line 1866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v28, 0x64

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1882
    .end local v10    # "i":Landroid/content/Intent;
    .end local v23    # "timeoutMsg":Landroid/os/Message;
    :goto_1
    monitor-exit v27

    goto/16 :goto_0

    :catchall_0
    move-exception v26

    monitor-exit v27
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v26

    .line 1868
    .restart local v10    # "i":Landroid/content/Intent;
    .restart local v23    # "timeoutMsg":Landroid/os/Message;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v28

    # setter for: Lcom/android/server/BluetoothManagerService;->mBinding:Z
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$2802(Lcom/android/server/BluetoothManagerService;Z)Z

    goto :goto_1

    .line 1872
    .end local v10    # "i":Landroid/content/Intent;
    .end local v23    # "timeoutMsg":Landroid/os/Message;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v28, 0xc9

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .line 1873
    .local v21, "saveMsg":Landroid/os/Message;
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v21

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    if-eqz v26, :cond_5

    .line 1875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1879
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const-wide/16 v28, 0x1f4

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1886
    .end local v21    # "saveMsg":Landroid/os/Message;
    :sswitch_1
    const/16 v24, 0x0

    .line 1887
    .local v24, "unbind":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v27

    monitor-enter v27

    .line 1888
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v26

    if-nez v26, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    if-eqz v26, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v26

    if-nez v26, :cond_6

    .line 1890
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/bluetooth/IBluetooth;->enable()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1895
    :cond_6
    :goto_2
    :try_start_4
    monitor-exit v27
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    if-eqz v26, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v26

    if-nez v26, :cond_7

    .line 1898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    const/16 v28, 0x0

    # invokes: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z
    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->access$2900(Lcom/android/server/BluetoothManagerService;ZZ)Z

    .line 1901
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v27

    monitor-enter v27

    .line 1902
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result-object v26

    if-eqz v26, :cond_10

    .line 1903
    const/4 v12, 0x0

    .line 1904
    .local v12, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1906
    .local v5, "address":Ljava/lang/String;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/bluetooth/IBluetooth;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/bluetooth/IBluetooth;->getAddress()Ljava/lang/String;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v5

    .line 1912
    :goto_3
    if-eqz v12, :cond_d

    if-eqz v5, :cond_d

    .line 1913
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    # invokes: Lcom/android/server/BluetoothManagerService;->storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v12, v5}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v26

    if-eqz v26, :cond_8

    .line 1915
    const/16 v24, 0x1

    .line 1930
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v26

    if-nez v26, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result v26

    if-nez v26, :cond_9

    .line 1932
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/bluetooth/IBluetooth;->disable()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1944
    .end local v5    # "address":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    :cond_9
    :goto_5
    :try_start_9
    monitor-exit v27
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v26

    if-nez v26, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    if-eqz v26, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v26

    if-nez v26, :cond_a

    .line 1946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x1

    # invokes: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z
    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->access$2900(Lcom/android/server/BluetoothManagerService;ZZ)Z

    .line 1948
    :cond_a
    if-eqz v24, :cond_b

    .line 1949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->unbindAndFinish()V

    .line 1951
    :cond_b
    # getter for: Lcom/android/server/BluetoothManagerService;->BLE_ALWAYS_ON:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$1600()Z

    move-result v26

    if-eqz v26, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;)Z

    move-result v26

    if-nez v26, :cond_1

    .line 1952
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v26

    if-eqz v26, :cond_c

    const-string v26, "BluetoothManagerService"

    const-string v27, "BLE Always On"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v27

    monitor-enter v27

    .line 1955
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    # invokes: Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;Z)V

    .line 1956
    monitor-exit v27

    goto/16 :goto_0

    :catchall_1
    move-exception v26

    monitor-exit v27
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v26

    .line 1891
    :catch_0
    move-exception v7

    .line 1892
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_b
    const-string v26, "BluetoothManagerService"

    const-string v28, "Unable to call enable()"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1895
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_2
    move-exception v26

    monitor-exit v27
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v26

    .line 1908
    .restart local v5    # "address":Ljava/lang/String;
    .restart local v12    # "name":Ljava/lang/String;
    :catch_1
    move-exception v17

    .line 1909
    .local v17, "re":Landroid/os/RemoteException;
    :try_start_c
    const-string v26, "BluetoothManagerService"

    const-string v28, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1944
    .end local v5    # "address":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    .end local v17    # "re":Landroid/os/RemoteException;
    :catchall_3
    move-exception v26

    monitor-exit v27
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v26

    .line 1918
    .restart local v5    # "address":Ljava/lang/String;
    .restart local v12    # "name":Ljava/lang/String;
    :cond_d
    :try_start_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    const/16 v28, 0x3

    move/from16 v0, v26

    move/from16 v1, v28

    if-ge v0, v1, :cond_f

    .line 1919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v28, 0xc9

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    .line 1920
    .local v20, "retryMsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1921
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v26

    if-eqz v26, :cond_e

    const-string v26, "BluetoothManagerService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Retrying name/address remote retrieval and save.....Retry count ="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v20

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const-wide/16 v28, 0x1f4

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_4

    .line 1924
    .end local v20    # "retryMsg":Landroid/os/Message;
    :cond_f
    const-string v26, "BluetoothManagerService"

    const-string v28, "Maximum name/address remote retrieval retry exceeded"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v26

    if-eqz v26, :cond_8

    .line 1926
    const/16 v24, 0x1

    goto/16 :goto_4

    .line 1933
    :catch_2
    move-exception v7

    .line 1934
    .restart local v7    # "e":Landroid/os/RemoteException;
    const-string v26, "BluetoothManagerService"

    const-string v28, "Unable to call disable()"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 1941
    .end local v5    # "address":Ljava/lang/String;
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v12    # "name":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v28, 0xc8

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 1942
    .local v9, "getMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto/16 :goto_5

    .line 1961
    .end local v9    # "getMsg":Landroid/os/Message;
    .end local v24    # "unbind":Z
    :sswitch_2
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v26

    if-eqz v26, :cond_11

    .line 1962
    const-string v26, "BluetoothManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "MESSAGE_ENABLE: mBluetooth = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v28 .. v28}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v27, 0x2a

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_12

    const/16 v26, 0x1

    :goto_6
    move-object/from16 v0, v27

    move/from16 v1, v26

    # invokes: Lcom/android/server/BluetoothManagerService;->handleEnable(Z)V
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$3000(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_0

    :cond_12
    const/16 v26, 0x0

    goto :goto_6

    .line 1969
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v27, 0x2a

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v26

    if-eqz v26, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    if-eqz v26, :cond_13

    .line 1971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    const/16 v28, 0x0

    # invokes: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z
    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->access$2900(Lcom/android/server/BluetoothManagerService;ZZ)Z

    .line 1972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->handleDisable()V
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$3100(Lcom/android/server/BluetoothManagerService;)V

    .line 1973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    # invokes: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z
    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->access$2900(Lcom/android/server/BluetoothManagerService;ZZ)Z

    goto/16 :goto_0

    .line 1975
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->handleDisable()V
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$3100(Lcom/android/server/BluetoothManagerService;)V

    goto/16 :goto_0

    .line 1981
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IBluetoothManagerCallback;

    .line 1982
    .local v6, "callback":Landroid/bluetooth/IBluetoothManagerCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$3200(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v4

    .line 1983
    .local v4, "added":Z
    const-string v26, "BluetoothManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Added callback: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    if-nez v6, :cond_14

    const-string/jumbo v6, "null"

    .end local v6    # "callback":Landroid/bluetooth/IBluetoothManagerCallback;
    :cond_14
    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ":"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1988
    .end local v4    # "added":Z
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IBluetoothManagerCallback;

    .line 1989
    .restart local v6    # "callback":Landroid/bluetooth/IBluetoothManagerCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$3200(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v18

    .line 1990
    .local v18, "removed":Z
    const-string v26, "BluetoothManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Removed callback: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    if-nez v6, :cond_15

    const-string/jumbo v6, "null"

    .end local v6    # "callback":Landroid/bluetooth/IBluetoothManagerCallback;
    :cond_15
    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ":"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1995
    .end local v18    # "removed":Z
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 1996
    .local v6, "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    if-eqz v6, :cond_1

    .line 1997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$3300(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    goto/16 :goto_0

    .line 2003
    .end local v6    # "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 2004
    .restart local v6    # "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    if-eqz v6, :cond_1

    .line 2005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$3300(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto/16 :goto_0

    .line 2011
    .end local v6    # "callback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IBluetoothDisableBleCallback;

    .line 2012
    .local v6, "callback":Landroid/bluetooth/IBluetoothDisableBleCallback;
    if-eqz v6, :cond_1

    .line 2013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mDisableBleCallback:Landroid/os/RemoteCallbackList;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$3400(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    goto/16 :goto_0

    .line 2019
    .end local v6    # "callback":Landroid/bluetooth/IBluetoothDisableBleCallback;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/bluetooth/IBluetoothDisableBleCallback;

    .line 2020
    .restart local v6    # "callback":Landroid/bluetooth/IBluetoothDisableBleCallback;
    if-eqz v6, :cond_1

    .line 2021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mDisableBleCallback:Landroid/os/RemoteCallbackList;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$3400(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto/16 :goto_0

    .line 2027
    .end local v6    # "callback":Landroid/bluetooth/IBluetoothDisableBleCallback;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$3500(Lcom/android/server/BluetoothManagerService;)Ljava/util/Map;

    move-result-object v26

    new-instance v27, Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .line 2029
    .local v16, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    if-eqz v16, :cond_1

    .line 2032
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .line 2034
    .local v15, "proxy":Landroid/bluetooth/IBluetoothProfileServiceConnection;
    move-object/from16 v0, v16

    # invokes: Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->addProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    invoke-static {v0, v15}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$3600(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    goto/16 :goto_0

    .line 2039
    .end local v15    # "proxy":Landroid/bluetooth/IBluetoothProfileServiceConnection;
    .end local v16    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .line 2040
    .restart local v16    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    const/16 v26, 0x191

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2041
    if-eqz v16, :cond_1

    .line 2044
    # invokes: Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->bindService()Z
    invoke-static/range {v16 .. v16}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$2200(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z

    goto/16 :goto_0

    .line 2049
    .end local v16    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :sswitch_c
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v26

    if-eqz v26, :cond_16

    const-string v26, "BluetoothManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "MESSAGE_BLUETOOTH_SERVICE_CONNECTED: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    :cond_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/IBinder;

    .line 2052
    .local v22, "service":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v27

    monitor-enter v27

    .line 2053
    :try_start_e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    const/16 v28, 0x2

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_17

    .line 2054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v22 .. v22}, Landroid/bluetooth/IBluetoothGatt$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    # setter for: Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$3702(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    .line 2055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->onBluetoothGattServiceUp()V
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$3800(Lcom/android/server/BluetoothManagerService;)V

    .line 2056
    monitor-exit v27

    goto/16 :goto_0

    .line 2114
    :catchall_4
    move-exception v26

    monitor-exit v27
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v26

    .line 2060
    :cond_17
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v28, 0x64

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    # setter for: Lcom/android/server/BluetoothManagerService;->mBinding:Z
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$2802(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-static/range {v22 .. v22}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    # setter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$1202(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 2066
    :try_start_10
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v26

    if-eqz v26, :cond_18

    .line 2067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$3900(Lcom/android/server/BluetoothManagerService;)Landroid/content/ContentResolver;

    move-result-object v26

    const-string v28, "bluetooth_hci_log"

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2068
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$3900(Lcom/android/server/BluetoothManagerService;)Landroid/content/ContentResolver;

    move-result-object v26

    const-string v28, "bluetooth_hci_log"

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_1a

    const/4 v8, 0x1

    .line 2070
    .local v8, "enableHciSnoopLog":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v0, v8}, Landroid/bluetooth/IBluetooth;->configHciSnoopLog(Z)Z

    move-result v26

    if-nez v26, :cond_19

    .line 2071
    const-string v26, "BluetoothManagerService"

    const-string v28, "IBluetooth.configHciSnoopLog return false"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 2077
    .end local v8    # "enableHciSnoopLog":Z
    :cond_19
    :goto_8
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v26

    if-eqz v26, :cond_1b

    .line 2079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v28, 0xc8

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 2080
    .restart local v9    # "getMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v26

    if-nez v26, :cond_1b

    monitor-exit v27

    goto/16 :goto_0

    .line 2068
    .end local v9    # "getMsg":Landroid/os/Message;
    :cond_1a
    const/4 v8, 0x0

    goto :goto_7

    .line 2073
    :catch_3
    move-exception v7

    .line 2074
    .restart local v7    # "e":Landroid/os/RemoteException;
    const-string v26, "BluetoothManagerService"

    const-string v28, "Unable to call configHciSnoopLog"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 2084
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v26

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->setGetNameAddressOnly(Z)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 2087
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;
    invoke-static/range {v28 .. v28}, Lcom/android/server/BluetoothManagerService;->access$4000(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 2092
    :goto_9
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceUpCallback()V
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$4100(Lcom/android/server/BluetoothManagerService;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 2096
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v26

    if-nez v26, :cond_1d

    .line 2097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/bluetooth/IBluetooth;->enable()Z

    move-result v26

    if-nez v26, :cond_1c

    .line 2098
    const-string v26, "BluetoothManagerService"

    const-string v28, "IBluetooth.enable() returned false"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 2114
    :goto_a
    :try_start_15
    monitor-exit v27

    goto/16 :goto_0

    .line 2088
    :catch_4
    move-exception v17

    .line 2089
    .restart local v17    # "re":Landroid/os/RemoteException;
    const-string v26, "BluetoothManagerService"

    const-string v28, "Unable to register BluetoothCallback"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    goto :goto_9

    .line 2100
    .end local v17    # "re":Landroid/os/RemoteException;
    :cond_1c
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v28

    # setter for: Lcom/android/server/BluetoothManagerService;->mRpaGeneration:Z
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$4202(Lcom/android/server/BluetoothManagerService;Z)Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    goto :goto_a

    .line 2111
    :catch_5
    move-exception v7

    .line 2112
    .restart local v7    # "e":Landroid/os/RemoteException;
    :try_start_17
    const-string v26, "BluetoothManagerService"

    const-string v28, "Unable to call enable()"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    goto :goto_a

    .line 2105
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_1d
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/bluetooth/IBluetooth;->enableNoAutoConnect()Z

    move-result v26

    if-nez v26, :cond_1e

    .line 2106
    const-string v26, "BluetoothManagerService"

    const-string v28, "IBluetooth.enableNoAutoConnect() returned false"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 2108
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v28

    # setter for: Lcom/android/server/BluetoothManagerService;->mRpaGeneration:Z
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$4202(Lcom/android/server/BluetoothManagerService;Z)Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_5
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    goto :goto_a

    .line 2125
    .end local v22    # "service":Landroid/os/IBinder;
    :sswitch_d
    const-string v26, "BluetoothManagerService"

    const-string v27, "MESSAGE_TIMEOUT_BIND"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v27

    monitor-enter v27

    .line 2127
    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    # setter for: Lcom/android/server/BluetoothManagerService;->mBinding:Z
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$2802(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2128
    monitor-exit v27

    goto/16 :goto_0

    :catchall_5
    move-exception v26

    monitor-exit v27
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    throw v26

    .line 2133
    :sswitch_e
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 2134
    .local v14, "prevState":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    .line 2135
    .local v13, "newState":I
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v26

    if-eqz v26, :cond_1f

    const-string v26, "BluetoothManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "MESSAGE_BLUETOOTH_STATE_CHANGE: prevState = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", newState="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    # setter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static {v0, v13}, Lcom/android/server/BluetoothManagerService;->access$4302(Lcom/android/server/BluetoothManagerService;I)I

    .line 2138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->isBleAppPresent()Z

    move-result v26

    if-nez v26, :cond_20

    const/16 v26, 0xf

    move/from16 v0, v26

    if-ne v14, v0, :cond_20

    const/16 v26, 0x10

    move/from16 v0, v26

    if-ne v13, v0, :cond_20

    .line 2140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    # setter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->access$4402(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2142
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    # invokes: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static {v0, v14, v13}, Lcom/android/server/BluetoothManagerService;->access$4500(Lcom/android/server/BluetoothManagerService;II)V

    .line 2145
    const/16 v26, 0xe

    move/from16 v0, v26

    if-ne v14, v0, :cond_21

    const/16 v26, 0xa

    move/from16 v0, v26

    if-ne v13, v0, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    if-eqz v26, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$4400(Lcom/android/server/BluetoothManagerService;)Z

    move-result v26

    if-eqz v26, :cond_21

    .line 2148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->recoverBluetoothServiceFromError()V
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$4600(Lcom/android/server/BluetoothManagerService;)V

    .line 2150
    :cond_21
    const/16 v26, 0xb

    move/from16 v0, v26

    if-ne v14, v0, :cond_22

    const/16 v26, 0xf

    move/from16 v0, v26

    if-ne v13, v0, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    if-eqz v26, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$4400(Lcom/android/server/BluetoothManagerService;)Z

    move-result v26

    if-eqz v26, :cond_22

    .line 2153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->recoverBluetoothServiceFromError()V
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$4600(Lcom/android/server/BluetoothManagerService;)V

    .line 2155
    :cond_22
    const/16 v26, 0xc

    move/from16 v0, v26

    if-eq v13, v0, :cond_23

    const/16 v26, 0xf

    move/from16 v0, v26

    if-ne v13, v0, :cond_1

    .line 2158
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$4700(Lcom/android/server/BluetoothManagerService;)I

    move-result v26

    if-eqz v26, :cond_1

    .line 2159
    const-string v26, "BluetoothManagerService"

    const-string v27, "bluetooth is recovered from error"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    # setter for: Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I
    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->access$4702(Lcom/android/server/BluetoothManagerService;I)I

    goto/16 :goto_0

    .line 2167
    .end local v13    # "newState":I
    .end local v14    # "prevState":I
    :sswitch_f
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 2168
    .restart local v14    # "prevState":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    .line 2169
    .restart local v13    # "newState":I
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v26

    if-eqz v26, :cond_24

    const-string v26, "BluetoothManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "MESSAGE_GOOGLE_BLE_STATE_CHANGE: prevState = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", newState="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    # invokes: Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V
    invoke-static {v0, v14, v13}, Lcom/android/server/BluetoothManagerService;->access$4800(Lcom/android/server/BluetoothManagerService;II)V

    goto/16 :goto_0

    .line 2175
    .end local v13    # "newState":I
    .end local v14    # "prevState":I
    :sswitch_10
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 2176
    .restart local v14    # "prevState":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    .line 2177
    .restart local v13    # "newState":I
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v26

    if-eqz v26, :cond_25

    const-string v26, "BluetoothManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "MESSAGE_SAMSUNG_BLE_STATE_CHANGE: prevState = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", newState="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    # invokes: Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V
    invoke-static {v0, v14, v13}, Lcom/android/server/BluetoothManagerService;->access$4900(Lcom/android/server/BluetoothManagerService;II)V

    goto/16 :goto_0

    .line 2183
    .end local v13    # "newState":I
    .end local v14    # "prevState":I
    :sswitch_11
    const-string v26, "BluetoothManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v27

    monitor-enter v27

    .line 2185
    :try_start_1a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_2b

    .line 2187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    if-nez v26, :cond_26

    monitor-exit v27

    goto/16 :goto_0

    .line 2196
    :catchall_6
    move-exception v26

    monitor-exit v27
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    throw v26

    .line 2188
    :cond_26
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    # setter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$1202(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 2196
    monitor-exit v27
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    .line 2198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$4400(Lcom/android/server/BluetoothManagerService;)Z

    move-result v26

    if-eqz v26, :cond_27

    .line 2199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    # setter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->access$4402(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v27, 0x2a

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    .line 2203
    .local v19, "restartMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const-wide/16 v28, 0xc8

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2207
    .end local v19    # "restartMsg":Landroid/os/Message;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v26

    if-nez v26, :cond_1

    .line 2208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$5000(Lcom/android/server/BluetoothManagerService;)V

    .line 2212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$4300(Lcom/android/server/BluetoothManagerService;)I

    move-result v26

    const/16 v27, 0xb

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$4300(Lcom/android/server/BluetoothManagerService;)I

    move-result v26

    const/16 v27, 0xc

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_29

    .line 2214
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0xc

    const/16 v28, 0xd

    # invokes: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->access$4500(Lcom/android/server/BluetoothManagerService;II)V

    .line 2216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0xd

    # setter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->access$4302(Lcom/android/server/BluetoothManagerService;I)I

    .line 2218
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$4300(Lcom/android/server/BluetoothManagerService;)I

    move-result v26

    const/16 v27, 0xd

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2a

    .line 2219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0xd

    const/16 v28, 0xa

    # invokes: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->access$4500(Lcom/android/server/BluetoothManagerService;II)V

    .line 2223
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v27, 0x3c

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0xa

    # setter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->access$4302(Lcom/android/server/BluetoothManagerService;I)I

    goto/16 :goto_0

    .line 2189
    :cond_2b
    :try_start_1c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    const/16 v28, 0x2

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_2c

    .line 2190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    # setter for: Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$3702(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    .line 2191
    monitor-exit v27

    goto/16 :goto_0

    .line 2193
    :cond_2c
    const-string v26, "BluetoothManagerService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Bad msg.arg1: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    monitor-exit v27
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    goto/16 :goto_0

    .line 2230
    :sswitch_12
    const-string v26, "BluetoothManagerService"

    const-string v27, "MESSAGE_RESTART_BLUETOOTH_SERVICE: Restart IBluetooth service"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z
    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v27

    # invokes: Lcom/android/server/BluetoothManagerService;->handleEnable(Z)V
    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->access$3000(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_0

    .line 2241
    :sswitch_13
    const-string v26, "BluetoothManagerService"

    const-string v27, "MESSAGE_TIMEOUT_UNBIND"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v27

    monitor-enter v27

    .line 2243
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    # setter for: Lcom/android/server/BluetoothManagerService;->mUnbinding:Z
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$5102(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2244
    monitor-exit v27

    goto/16 :goto_0

    :catchall_7
    move-exception v26

    monitor-exit v27
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    throw v26

    .line 2250
    :sswitch_14
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v26

    if-eqz v26, :cond_2d

    .line 2251
    const-string v26, "BluetoothManagerService"

    const-string v27, "MESSAGE_USER_SWITCHED"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v27, 0x12c

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mEnable:Z
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$4400(Lcom/android/server/BluetoothManagerService;)Z

    move-result v26

    if-eqz v26, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    if-eqz v26, :cond_33

    .line 2256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v27

    monitor-enter v27

    .line 2257
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    move-result-object v26

    if-eqz v26, :cond_2e

    .line 2260
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;
    invoke-static/range {v28 .. v28}, Lcom/android/server/BluetoothManagerService;->access$4000(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_6
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    .line 2265
    :cond_2e
    :goto_b
    :try_start_20
    monitor-exit v27
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    .line 2267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$4300(Lcom/android/server/BluetoothManagerService;)I

    move-result v26

    const/16 v27, 0xd

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2f

    .line 2269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->access$4300(Lcom/android/server/BluetoothManagerService;)I

    move-result v27

    const/16 v28, 0xa

    # invokes: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->access$4500(Lcom/android/server/BluetoothManagerService;II)V

    .line 2270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0xa

    # setter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->access$4302(Lcom/android/server/BluetoothManagerService;I)I

    .line 2272
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$4300(Lcom/android/server/BluetoothManagerService;)I

    move-result v26

    const/16 v27, 0xa

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_30

    .line 2273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->access$4300(Lcom/android/server/BluetoothManagerService;)I

    move-result v27

    const/16 v28, 0xb

    # invokes: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->access$4500(Lcom/android/server/BluetoothManagerService;II)V

    .line 2274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0xb

    # setter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->access$4302(Lcom/android/server/BluetoothManagerService;I)I

    .line 2277
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    const/16 v28, 0x0

    # invokes: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z
    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->access$2900(Lcom/android/server/BluetoothManagerService;ZZ)Z

    .line 2279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$4300(Lcom/android/server/BluetoothManagerService;)I

    move-result v26

    const/16 v27, 0xb

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_31

    .line 2280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->access$4300(Lcom/android/server/BluetoothManagerService;)I

    move-result v27

    const/16 v28, 0xc

    # invokes: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->access$4500(Lcom/android/server/BluetoothManagerService;II)V

    .line 2283
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->unbindAllBluetoothProfileServices()V
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$5200(Lcom/android/server/BluetoothManagerService;)V

    .line 2285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->handleDisable()V
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$3100(Lcom/android/server/BluetoothManagerService;)V

    .line 2287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0xc

    const/16 v28, 0xd

    # invokes: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->access$4500(Lcom/android/server/BluetoothManagerService;II)V

    .line 2290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x1

    # invokes: Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z
    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->access$2900(Lcom/android/server/BluetoothManagerService;ZZ)Z

    .line 2292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0xd

    const/16 v28, 0xa

    # invokes: Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V
    invoke-static/range {v26 .. v28}, Lcom/android/server/BluetoothManagerService;->access$4500(Lcom/android/server/BluetoothManagerService;II)V

    .line 2294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$5000(Lcom/android/server/BluetoothManagerService;)V

    .line 2295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v27

    monitor-enter v27

    .line 2296
    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    if-eqz v26, :cond_32

    .line 2297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    # setter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$1202(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 2299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$5300(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    invoke-static/range {v28 .. v28}, Lcom/android/server/BluetoothManagerService;->access$2700(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2301
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    # setter for: Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$3702(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    .line 2302
    monitor-exit v27
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    .line 2303
    const-wide/16 v26, 0x64

    invoke-static/range {v26 .. v27}, Landroid/os/SystemClock;->sleep(J)V

    .line 2305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v27, 0x3c

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    const/16 v27, 0xa

    # setter for: Lcom/android/server/BluetoothManagerService;->mState:I
    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->access$4302(Lcom/android/server/BluetoothManagerService;I)I

    .line 2308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z
    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v27

    # invokes: Lcom/android/server/BluetoothManagerService;->handleEnable(Z)V
    invoke-static/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService;->access$3000(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_0

    .line 2261
    :catch_6
    move-exception v17

    .line 2262
    .restart local v17    # "re":Landroid/os/RemoteException;
    :try_start_22
    const-string v26, "BluetoothManagerService"

    const-string v28, "Unable to unregister"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 2265
    .end local v17    # "re":Landroid/os/RemoteException;
    :catchall_8
    move-exception v26

    monitor-exit v27
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    throw v26

    .line 2302
    :catchall_9
    move-exception v26

    :try_start_23
    monitor-exit v27
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    throw v26

    .line 2309
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBinding:Z
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$2800(Lcom/android/server/BluetoothManagerService;)Z

    move-result v26

    if-nez v26, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v26

    if-eqz v26, :cond_1

    .line 2310
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v27, 0x12c

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    .line 2311
    .local v25, "userMsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 2314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const-wide/16 v28, 0xc8

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2315
    # getter for: Lcom/android/server/BluetoothManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$100()Z

    move-result v26

    if-eqz v26, :cond_1

    .line 2316
    const-string v26, "BluetoothManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "delay MESSAGE_USER_SWITCHED "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v25

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2324
    .end local v25    # "userMsg":Landroid/os/Message;
    :sswitch_15
    # getter for: Lcom/android/server/BluetoothManagerService;->mPolicy:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$5400()I

    move-result v26

    if-nez v26, :cond_36

    .line 2325
    new-instance v11, Landroid/content/Intent;

    const-string v26, "com.samsung.server.BT_IT_POLICY"

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2326
    .local v11, "in":Landroid/content/Intent;
    const-string v26, "ToastMsg"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->access$5300(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v27

    const v28, 0x10408a7

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2327
    const/high16 v26, 0x4000000

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$5300(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v26

    sget-object v27, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v28, "android.permission.BLUETOOTH"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2338
    .end local v11    # "in":Landroid/content/Intent;
    :cond_35
    :goto_c
    const-string v26, "BluetoothManagerService"

    const-string/jumbo v27, "mHandler.removeMessages(MESSAGE_BT_IT_POLICY"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v27, 0x5

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 2330
    :cond_36
    # getter for: Lcom/android/server/BluetoothManagerService;->mPolicy:I
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->access$5400()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_35

    .line 2331
    new-instance v11, Landroid/content/Intent;

    const-string v26, "com.samsung.server.BT_IT_POLICY"

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2332
    .restart local v11    # "in":Landroid/content/Intent;
    const-string v26, "ToastMsg"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/android/server/BluetoothManagerService;->access$5300(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v27

    const v28, 0x10408a8

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2333
    const/high16 v26, 0x4000000

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$5300(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v26

    sget-object v27, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v28, "android.permission.BLUETOOTH"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_c

    .line 2344
    .end local v11    # "in":Landroid/content/Intent;
    :sswitch_16
    const-string v26, "BluetoothManagerService"

    const-string/jumbo v27, "mHandler.removeMessages(MESSAGE_BT_ENABLE_SECURITY_POPUP"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v26

    const/16 v27, 0x2bc

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    move-object/from16 v26, v0

    # invokes: Lcom/android/server/BluetoothManagerService;->enablePopupForBluetooth()V
    invoke-static/range {v26 .. v26}, Lcom/android/server/BluetoothManagerService;->access$5500(Lcom/android/server/BluetoothManagerService;)V

    goto/16 :goto_0

    .line 1852
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x5 -> :sswitch_15
        0x14 -> :sswitch_4
        0x15 -> :sswitch_5
        0x1e -> :sswitch_6
        0x1f -> :sswitch_7
        0x28 -> :sswitch_c
        0x29 -> :sswitch_11
        0x2a -> :sswitch_12
        0x3c -> :sswitch_e
        0x64 -> :sswitch_d
        0x65 -> :sswitch_13
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0x12c -> :sswitch_14
        0x190 -> :sswitch_a
        0x191 -> :sswitch_b
        0x2bc -> :sswitch_16
        0x2be -> :sswitch_f
        0x2bf -> :sswitch_10
        0x3fa -> :sswitch_8
        0x3fb -> :sswitch_9
    .end sparse-switch
.end method
