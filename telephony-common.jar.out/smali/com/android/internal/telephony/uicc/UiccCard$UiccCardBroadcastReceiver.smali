.class Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UiccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiccCardBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 0

    .prologue
    .line 1085
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/UiccCard$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/UiccCard$1;

    .prologue
    .line 1085
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1088
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1089
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1090
    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LOADED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1091
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->InitUiccCarrierPrivilegeRules()V
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->access$900(Lcom/android/internal/telephony/uicc/UiccCard;)V

    .line 1094
    :cond_0
    return-void
.end method
