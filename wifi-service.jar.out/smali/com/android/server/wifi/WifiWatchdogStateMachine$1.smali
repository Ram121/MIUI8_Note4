.class Lcom/android/server/wifi/WifiWatchdogStateMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;->setupNetworkReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 1177
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v7, 0x21006

    const v8, 0x2103e

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1180
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1181
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1182
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v7, 0x21003

    const-string v8, "newRssi"

    const/16 v9, -0xc8

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v6, v7, v8, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1184
    const-string v6, "monitorNetworkPropertiesUpdate"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1185
    .local v5, "reason":I
    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 1188
    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1189
    const-string v6, "linkProperties"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .line 1190
    .local v1, "lp":Landroid/net/LinkProperties;
    if-eqz v1, :cond_1

    .line 1191
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v6, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1202(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 1192
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateDnsLinkProperty()V
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 1194
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v6

    const v7, 0x21043

    invoke-static {v6, v7, v5, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1197
    .end local v1    # "lp":Landroid/net/LinkProperties;
    :cond_2
    const-string v6, "DhcpSession"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1198
    .local v2, "mDhcpSessionState":Ljava/lang/String;
    if-eqz v2, :cond_3

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1199
    const-string v6, "start"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1200
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsInDhcpSession:Z
    invoke-static {v6, v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 1201
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v6

    const v7, 0x21044

    invoke-static {v6, v7, v5, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1286
    .end local v2    # "mDhcpSessionState":Ljava/lang/String;
    .end local v5    # "reason":I
    :cond_3
    :goto_0
    return-void

    .line 1203
    .restart local v2    # "mDhcpSessionState":Ljava/lang/String;
    .restart local v5    # "reason":I
    :cond_4
    const-string v6, "complete"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsInDhcpSession:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1204
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsInDhcpSession:Z
    invoke-static {v6, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1402(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 1205
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v6

    const v7, 0x21045

    invoke-static {v6, v7, v5, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1208
    .end local v2    # "mDhcpSessionState":Ljava/lang/String;
    .end local v5    # "reason":I
    :cond_5
    const-string v6, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1209
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v7, 0x21004

    invoke-virtual {v6, v7, p2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1210
    :cond_6
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1211
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v7, 0x21002

    invoke-virtual {v6, v7, p2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1212
    :cond_7
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1213
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v7, 0x21008

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1214
    :cond_8
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1215
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v7, 0x21009

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1216
    :cond_9
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1217
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v7, 0x21005

    const-string v8, "wifi_state"

    const/4 v9, 0x4

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(II)V

    goto/16 :goto_0

    .line 1219
    :cond_a
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1220
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1221
    :cond_b
    const-string v6, "com.android.intent.action.DATAUSAGE_REACH_TO_LIMIT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1222
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1225
    :cond_c
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1226
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 1227
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v4, 0x0

    .line 1228
    .local v4, "previousState":Z
    if-eqz v3, :cond_3

    .line 1229
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_f

    .line 1230
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TYPE_MOBILE_HIPRI received. isConnected="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1232
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsMobileHipriConnected:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    .line 1233
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsMobileHipriConnected:Z
    invoke-static {v6, v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1502(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 1234
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsMobileHipriConnected:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v6

    if-eq v4, v6, :cond_3

    .line 1235
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "EVENT_MOBILE_HIPRI_CONNECTED"

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1236
    :cond_d
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v7, 0x21040

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1239
    :cond_e
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsMobileHipriConnected:Z
    invoke-static {v6, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1502(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    goto/16 :goto_0

    .line 1241
    :cond_f
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-nez v6, :cond_3

    .line 1242
    const-string v6, "WifiWatchdogStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TYPE_MOBILE received. isConnected="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1244
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsMobileConnected:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    .line 1245
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsMobileConnected:Z
    invoke-static {v6, v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1702(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 1246
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsMobileConnected:Z
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v6

    if-eq v4, v6, :cond_3

    .line 1247
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000()Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "EVENT_MOBILE_CONNECTED"

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1248
    :cond_10
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v7, 0x2103f

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1251
    :cond_11
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsMobileConnected:Z
    invoke-static {v6, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1702(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    goto/16 :goto_0

    .line 1256
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v4    # "previousState":Z
    :cond_12
    const-string v6, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v6

    if-nez v6, :cond_15

    .line 1257
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v6, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1802(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 1258
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    move-result-object v7

    if-ne v6, v7, :cond_13

    .line 1259
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v6, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1261
    :cond_13
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v6

    const/16 v7, 0xd

    if-eq v6, v7, :cond_14

    .line 1262
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1264
    :cond_14
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$400(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1267
    :cond_15
    const-string v6, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    if-eqz v6, :cond_17

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$100(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 1269
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300()Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string v7, "Network country change is detected."

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2400(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1270
    :cond_16
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->updateCountryIsoCode()V
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    .line 1271
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1272
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mParam:Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine$ParameterManager;->setUrlList()V

    goto/16 :goto_0

    .line 1274
    :cond_17
    const-string v6, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1275
    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "OWNER is background"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mUserOwner:Z
    invoke-static {v6, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2702(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 1277
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->updatePoorNetworkParameters()V
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    goto/16 :goto_0

    .line 1278
    :cond_18
    const-string v6, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1279
    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "OWNER is foreground"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mUserOwner:Z
    invoke-static {v6, v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2702(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 1281
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->updatePoorNetworkParameters()V
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2800(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    goto/16 :goto_0

    .line 1282
    :cond_19
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1283
    const-string v6, "WifiWatchdogStateMachine"

    const-string v7, "ACTION_BOOT_COMPLETED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$1;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->registerForImsRegistration()V
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$2900(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V

    goto/16 :goto_0
.end method
