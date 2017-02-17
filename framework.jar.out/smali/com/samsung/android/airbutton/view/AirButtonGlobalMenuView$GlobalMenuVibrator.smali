.class Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;
.super Ljava/lang/Object;
.source "AirButtonGlobalMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlobalMenuVibrator"
.end annotation


# instance fields
.field isHapticFeedbackEnabled:Z

.field private mVibrator:Landroid/os/SystemVibrator;

.field final synthetic this$0:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;


# direct methods
.method constructor <init>(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)V
    .locals 2

    .prologue
    .line 1158
    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->this$0:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->mVibrator:Landroid/os/SystemVibrator;

    .line 1156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->isHapticFeedbackEnabled:Z

    .line 1159
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->mVibrator:Landroid/os/SystemVibrator;

    if-nez v0, :cond_0

    .line 1160
    # getter for: Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->access$200(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->mVibrator:Landroid/os/SystemVibrator;

    .line 1162
    :cond_0
    return-void
.end method


# virtual methods
.method playVibrator(I)V
    .locals 0
    .param p1, "idx"    # I

    .prologue
    .line 1177
    return-void
.end method
