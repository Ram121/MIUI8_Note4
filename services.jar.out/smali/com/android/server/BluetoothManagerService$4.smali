.class Lcom/android/server/BluetoothManagerService$4;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BluetoothManagerService;->enablePopupForBluetooth()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    .prologue
    .line 2942
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$4;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2945
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    .line 2946
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$4;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2948
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$4;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$4;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 2949
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$4;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->onLeServiceUp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2960
    :cond_1
    :goto_0
    return-void

    .line 2952
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothManagerService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2954
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$4;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v1}, Lcom/android/server/BluetoothManagerService;->enable()Z

    .line 2958
    :goto_1
    if-eqz p1, :cond_1

    .line 2959
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 2956
    :cond_3
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$4;->this$0:Lcom/android/server/BluetoothManagerService;

    # invokes: Lcom/android/server/BluetoothManagerService;->cancelChinaPopupState()V
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$5600(Lcom/android/server/BluetoothManagerService;)V

    goto :goto_1
.end method
