.class Landroid/os/DVFSHelper$ModelHRL;
.super Landroid/os/DVFSHelper$ModelJBP;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelHRL"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2112
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelHRL;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    .line 2113
    iput v0, p0, Landroid/os/DVFSHelper$ModelHRL;->GALLERY_TOUCH_ARM_FREQ:I

    .line 2114
    iput v0, p0, Landroid/os/DVFSHelper$ModelHRL;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 2115
    const v0, 0xb1bc0

    iput v0, p0, Landroid/os/DVFSHelper$ModelHRL;->LIST_SCROLL_ARM_FREQ:I

    .line 2116
    const v0, 0x1afa40

    iput v0, p0, Landroid/os/DVFSHelper$ModelHRL;->AMS_RESUME_ARM_FREQ:I

    .line 2117
    const v0, 0x1174c0

    iput v0, p0, Landroid/os/DVFSHelper$ModelHRL;->DEVICE_WAKEUP_ARM_FREQ:I

    .line 2118
    const/16 v0, 0x5dc

    sput v0, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    .line 2119
    return-void
.end method
