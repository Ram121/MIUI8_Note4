.class Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector$1;
.super Landroid/os/Handler;
.source "AccessibilityInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector$1;->this$1:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector$1;->this$1:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    # invokes: Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->performSingleTap()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->access$500(Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
