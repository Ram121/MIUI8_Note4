.class Landroid/os/DVFSHelper$ModelISLAQUAD;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelISLAQUAD"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 2

    .prologue
    const v1, 0xf4240

    iput-object p1, p0, Landroid/os/DVFSHelper$ModelISLAQUAD;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    const v0, 0x13d620

    iput v0, p0, Landroid/os/DVFSHelper$ModelISLAQUAD;->AMS_RESUME_ARM_FREQ:I

    const/16 v0, 0x258

    sput v0, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    const v0, 0xdbba0

    iput v0, p0, Landroid/os/DVFSHelper$ModelISLAQUAD;->LIST_SCROLL_ARM_FREQ:I

    iput v1, p0, Landroid/os/DVFSHelper$ModelISLAQUAD;->GALLERY_TOUCH_ARM_FREQ:I

    iput v1, p0, Landroid/os/DVFSHelper$ModelISLAQUAD;->GALLERY_TOUCH_ARM_FREQ:I

    iput v1, p0, Landroid/os/DVFSHelper$ModelISLAQUAD;->LAUNCHER_TOUCH_ARM_FREQ:I

    const/16 v0, 0x5dc

    sput v0, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    iput v1, p0, Landroid/os/DVFSHelper$ModelISLAQUAD;->DEVICE_WAKEUP_ARM_FREQ:I

    return-void
.end method
