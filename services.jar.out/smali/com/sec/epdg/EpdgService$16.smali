.class Lcom/sec/epdg/EpdgService$16;
.super Lcom/sec/epdg/EpdgBroadcastReceiver;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    .prologue
    .line 1596
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$16;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public processFastPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1599
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public processSlowPath(Ljava/lang/Object;)V
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1605
    move-object v2, p1

    check-cast v2, Landroid/content/Intent;

    .line 1606
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "com.sec.commands.ipcall.setting"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1607
    .local v4, "settingType":I
    const-string v5, "com.sec.commands.ipcall.state"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1608
    .local v3, "on":Z
    const/4 v5, 0x7

    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2500()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 1610
    .local v1, "imsInterface":Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    if-nez v4, :cond_2

    .line 1611
    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isVoLTEFeatureEnabled()Z

    move-result v0

    .line 1612
    .local v0, "current":Z
    if-eq v0, v3, :cond_0

    .line 1614
    if-eqz v3, :cond_1

    .line 1615
    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setVoLTEFeatureEnable()V

    .line 1616
    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2500()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "voicecall_type"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1635
    .end local v0    # "current":Z
    :cond_0
    :goto_0
    return-void

    .line 1618
    .restart local v0    # "current":Z
    :cond_1
    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setVoLTEFeatureDisable()V

    .line 1619
    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2500()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "voicecall_type"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1622
    .end local v0    # "current":Z
    :cond_2
    if-ne v4, v8, :cond_4

    .line 1623
    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isLTEVideoCallEnabled()Z

    move-result v0

    .line 1624
    .restart local v0    # "current":Z
    if-eq v0, v3, :cond_0

    .line 1626
    if-eqz v3, :cond_3

    .line 1627
    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setLTEVideoCallEnable()V

    goto :goto_0

    .line 1629
    :cond_3
    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->setLTEVideoCallDisable()V

    goto :goto_0

    .line 1633
    .end local v0    # "current":Z
    :cond_4
    const-string v5, "[EPDGService]"

    const-string v6, "Received unknown command"

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
