.class Lcom/android/server/display/AutomaticBrightnessController$7;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Lcom/android/server/twilight/TwilightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    .prologue
    .line 1529
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$7;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTwilightStateChanged()V
    .locals 2

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$7;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V
    invoke-static {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$3300(Lcom/android/server/display/AutomaticBrightnessController;Z)V

    .line 1533
    return-void
.end method
