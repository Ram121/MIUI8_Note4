.class public Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;
.super Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;
.source "AirButtonGlobalMenuView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;
    }
.end annotation


# static fields
.field private static final FOCUS_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/Air_Command_Hover_Focus.ogg"

.field private static final HAS_PENWINDOW_H:Z

.field private static final IS_AMOLED_DISPLAY:Z = true

.field public static final PRODUCT_NAME:Ljava/lang/String;

.field private static mDescriptionSize:I

.field private static mDescriptionSmallSize:I

.field private static mGlobalMenuVibrator:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;

.field private static sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

.field private static sCenterImage:Landroid/widget/ImageView;

.field private static sDescriptionViews:[Landroid/widget/TextView;

.field private static sFocusSoundId:I

.field private static sFocusedImage:Landroid/widget/ImageView;

.field private static sMenuImages:[Landroid/widget/ImageView;


# instance fields
.field private CENTER_IMAGE_DURATION:I

.field private DESCRIPTION_DURATION:I

.field private FOCUS_DURATION:I

.field private MENU_ICON_DURATION:I

.field private MENU_ICON_INTERVAL:I

.field private START_DELAY:I

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAppCount:I

.field private mBgHalfSize:F

.field private mCenterX:F

.field private mCenterY:F

.field private mHelpPopupLayout:Landroid/widget/LinearLayout;

.field private mHideDescriptionAnimation:Landroid/animation/ObjectAnimator;

.field private mHideFocusAnimation:Landroid/animation/ObjectAnimator;

.field private mIsTalkbackEnabled:Z

.field private mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

.field private mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

.field private mNewHelpPopupLayout2:Landroid/widget/RelativeLayout;

.field private mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

.field private mShowFocusAnimation:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    sput-object v2, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    sput-object v2, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    sput-object v2, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    sput-object v2, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    sput-object v2, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    sput v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mDescriptionSize:I

    sput v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mDescriptionSmallSize:I

    const/4 v1, -0x1

    sput v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusSoundId:I

    sput-object v2, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mGlobalMenuVibrator:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->PRODUCT_NAME:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->PRODUCT_NAME:Ljava/lang/String;

    const-string v2, "hlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->PRODUCT_NAME:Ljava/lang/String;

    const-string v2, "ha3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->PRODUCT_NAME:Ljava/lang/String;

    const-string v2, "h3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->PRODUCT_NAME:Ljava/lang/String;

    const-string v2, "hllte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->PRODUCT_NAME:Ljava/lang/String;

    const-string v2, "hl3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->PRODUCT_NAME:Ljava/lang/String;

    const-string v2, "SC-01F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->PRODUCT_NAME:Ljava/lang/String;

    const-string v2, "SC-02F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->PRODUCT_NAME:Ljava/lang/String;

    const-string v2, "SCL22"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->PRODUCT_NAME:Ljava/lang/String;

    const-string v2, "htdlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->PRODUCT_NAME:Ljava/lang/String;

    const-string v2, "frescolte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "true"

    const-string v2, "ro.aircommand.morph.usp"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    sput-boolean v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->HAS_PENWINDOW_H:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;Z)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;
    .param p3, "attrs"    # Lcom/samsung/android/airbutton/Attributes;
    .param p4, "isSpenDetached"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;-><init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V

    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsTalkbackEnabled:Z

    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    const/16 v5, 0xc8

    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->START_DELAY:I

    const/16 v5, 0x32

    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->MENU_ICON_INTERVAL:I

    const/16 v5, 0x78

    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->MENU_ICON_DURATION:I

    const/16 v5, 0xc8

    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->CENTER_IMAGE_DURATION:I

    const/16 v5, 0xc8

    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->FOCUS_DURATION:I

    const/16 v5, 0x96

    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->DESCRIPTION_DURATION:I

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideDescriptionAnimation:Landroid/animation/ObjectAnimator;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout2:Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sAirbuttonSounds:Landroid/media/SoundPool;

    if-nez v5, :cond_0

    new-instance v5, Landroid/media/SoundPool;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sAirbuttonSounds:Landroid/media/SoundPool;

    :cond_0
    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusSoundId:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sAirbuttonSounds:Landroid/media/SoundPool;

    const-string v6, "/system/media/audio/ui/Air_Command_Hover_Focus.ogg"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusSoundId:I

    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusSoundId:I

    if-nez v5, :cond_1

    const-string v5, "AriButtonGlobalMenuView"

    const-string v6, "failed to load sound from /system/media/audio/ui/Air_Command_Hover_Focus.ogg"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mGlobalMenuVibrator:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;

    if-nez v5, :cond_2

    new-instance v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;

    invoke-direct {v5, p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;-><init>(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)V

    sput-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mGlobalMenuVibrator:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;

    :cond_2
    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    const/4 v5, 0x5

    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    :cond_3
    :goto_0
    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    const/4 v6, 0x3

    if-lt v5, v6, :cond_4

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "do_not_show_guidepopup_gac"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_c

    iget v5, p3, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p3, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    iget v5, p3, Lcom/samsung/android/airbutton/Attributes;->density:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_a

    iget v5, p3, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p3, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->createViews()V

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "do_not_show_guidepopup_gac"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_7

    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_e

    if-eqz p4, :cond_e

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    if-nez v5, :cond_6

    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .local v1, "mInflater":Landroid/view/LayoutInflater;
    if-eqz v1, :cond_5

    const v5, 0x1090083

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_6

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .end local v1    # "mInflater":Landroid/view/LayoutInflater;
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "do_not_show_guidepopup_gac"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_7
    :goto_2
    return-void

    :cond_8
    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    const/4 v6, 0x3

    if-lt v5, v6, :cond_3

    sget-boolean v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->HAS_PENWINDOW_H:Z

    if-eqz v5, :cond_9

    const/4 v5, 0x5

    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    goto/16 :goto_0

    :cond_9
    const/4 v5, 0x4

    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    goto/16 :goto_0

    :cond_a
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    iget v5, p3, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/lit16 v5, v5, 0xb3

    iput v5, p3, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    goto/16 :goto_1

    :cond_b
    iget v5, p3, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/lit16 v5, v5, 0x93

    iput v5, p3, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    goto/16 :goto_1

    :cond_c
    if-eqz p4, :cond_4

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d

    iget v5, p3, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p3, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    iget v5, p3, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    div-int/lit8 v5, v5, 0x2

    const/high16 v6, 0x42e80000    # 116.0f

    iget v7, p3, Lcom/samsung/android/airbutton/Attributes;->density:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, p3, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    goto/16 :goto_1

    :cond_d
    iget v5, p3, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p3, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    iget v5, p3, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    div-int/lit8 v5, v5, 0x2

    const/high16 v6, 0x42a40000    # 82.0f

    iget v7, p3, Lcom/samsung/android/airbutton/Attributes;->density:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, p3, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    goto/16 :goto_1

    :cond_e
    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    const/4 v6, 0x3

    if-lt v5, v6, :cond_7

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    if-nez v5, :cond_11

    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .local v2, "mInflater2":Landroid/view/LayoutInflater;
    if-eqz v2, :cond_f

    const v5, 0x1090084

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    :cond_f
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setX(F)V

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setY(F)V

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v5}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    const v6, 0x10203e5

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .local v0, "img":Landroid/widget/Button;
    sget-boolean v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->HAS_PENWINDOW_H:Z

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout2:Landroid/widget/RelativeLayout;

    if-nez v5, :cond_10

    if-eqz v2, :cond_10

    const v5, 0x1090085

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout2:Landroid/widget/RelativeLayout;

    :cond_10
    sget-boolean v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->HAS_PENWINDOW_H:Z

    if-nez v5, :cond_12

    new-instance v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$1;-><init>(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    const v6, 0x10203e4

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .local v4, "textView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    const v6, 0x104087e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v0    # "img":Landroid/widget/Button;
    .end local v2    # "mInflater2":Landroid/view/LayoutInflater;
    .end local v4    # "textView":Landroid/widget/TextView;
    :cond_11
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "do_not_show_guidepopup_gac"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .restart local v0    # "img":Landroid/widget/Button;
    .restart local v2    # "mInflater2":Landroid/view/LayoutInflater;
    :cond_12
    new-instance v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2;-><init>(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout2:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;
    .param p1, "x1"    # Landroid/widget/RelativeLayout;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout2:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private adjustCenterPosition()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .local v2, "r":Landroid/content/res/Resources;
    const v3, 0x10501e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    int-to-float v3, v3

    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    int-to-float v3, v3

    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v4, 0xa0

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    :cond_0
    const/4 v0, 0x0

    .local v0, "cocktailBarWidth":I
    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v1

    .local v1, "mgr":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->isCocktailBarShifted()Z

    move-result v3

    if-nez v3, :cond_1

    const v3, 0x10500a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_1
    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    sub-float/2addr v3, v4

    cmpg-float v3, v3, v5

    if-gez v3, :cond_4

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    :cond_2
    :goto_0
    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    sub-float/2addr v3, v4

    cmpg-float v3, v3, v5

    if-gez v3, :cond_5

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, v4, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    sub-int/2addr v4, v0

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, v4, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    goto :goto_1
.end method

.method private checkTalkbackEnable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, "talkbackEnabled":Z
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "accesibilityService":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "(?i).*talkback.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method private createViews()V
    .locals 15

    .prologue
    const/4 v8, 0x4

    const/4 v6, 0x1

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v7, 0x0

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    invoke-virtual {v5}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    invoke-virtual {v5}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v9, -0x2

    invoke-direct {v3, v5, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->checkTalkbackEnable()Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsTalkbackEnabled:Z

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    if-nez v5, :cond_1

    new-instance v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    iget-object v9, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v9}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    :cond_1
    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    invoke-virtual {v5, v3}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsTalkbackEnabled:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    invoke-virtual {v5, v6}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->setFocusable(Z)V

    :cond_2
    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    invoke-virtual {p0, v5}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->addView(Landroid/view/View;)V

    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-lt v5, v14, :cond_4

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    if-nez v5, :cond_3

    new-instance v5, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const v9, 0x10800e0

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const v9, 0x10800df

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->addView(Landroid/view/View;)V

    :cond_4
    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    if-nez v5, :cond_5

    new-instance v5, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-ne v5, v13, :cond_6

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    const v9, 0x10800e1

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    :goto_0
    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->knox_getProKioskState()Z

    move-result v1

    .local v1, "isProKioskState":Z
    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    if-nez v5, :cond_8

    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    new-array v5, v5, [Landroid/widget/ImageView;

    sput-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_1
    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    if-ge v0, v5, :cond_7

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    new-instance v9, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v9, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "idx":I
    .end local v1    # "isProKioskState":Z
    :cond_6
    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    const v9, 0x10800e2

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .restart local v0    # "idx":I
    .restart local v1    # "isProKioskState":Z
    :cond_7
    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v5, v5, v7

    const v9, 0x10800e8

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-ne v5, v13, :cond_9

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v5, v5, v6

    const v9, 0x10800e7

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v5, v5, v13

    const v9, 0x10800e4

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v5, v5, v14

    const v9, 0x10800e5

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v5, v5, v8

    const v9, 0x10800e6

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .end local v0    # "idx":I
    :cond_8
    :goto_2
    const/4 v0, 0x0

    .restart local v0    # "idx":I
    :goto_3
    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    if-ge v0, v5, :cond_a

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v5, v5, v0

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v5, v5, v0

    invoke-virtual {p0, v5}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-lt v5, v14, :cond_8

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v5, v5, v6

    const v9, 0x10800e7

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v5, v5, v13

    const v9, 0x10800e3

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v5, v5, v14

    const v9, 0x10800e4

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-boolean v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->HAS_PENWINDOW_H:Z

    if-eqz v5, :cond_8

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v5, v5, v8

    const v9, 0x10800e6

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_a
    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v9, v5, v7

    if-nez v1, :cond_e

    move v5, v6

    :goto_4
    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v9, v5, v7

    if-eqz v1, :cond_f

    move v5, v8

    :goto_5
    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-ne v5, v13, :cond_12

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v9, v5, v13

    if-nez v1, :cond_10

    move v5, v6

    :goto_6
    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v9, v5, v13

    if-eqz v1, :cond_11

    move v5, v8

    :goto_7
    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    :goto_8
    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-ne v5, v13, :cond_d

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    if-nez v5, :cond_c

    new-instance v5, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const v9, 0x10800e0

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const v9, 0x10800df

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_c
    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->addView(Landroid/view/View;)V

    :cond_d
    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    if-nez v5, :cond_15

    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [Landroid/widget/TextView;

    sput-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .local v4, "r":Landroid/content/res/Resources;
    const v5, 0x10501e4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mDescriptionSize:I

    const v5, 0x10501e5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mDescriptionSmallSize:I

    const/4 v0, 0x0

    :goto_9
    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    add-int/lit8 v5, v5, 0x1

    if-ge v0, v5, :cond_15

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    new-instance v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v9, v5, v0

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v5, v5, v0

    const/16 v9, 0x11

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setGravity(I)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v5, v5, v0

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->enableMultiSelection(Z)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v5, v5, v0

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setHoverPopupType(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .end local v4    # "r":Landroid/content/res/Resources;
    :cond_e
    move v5, v7

    goto/16 :goto_4

    :cond_f
    move v5, v7

    goto/16 :goto_5

    :cond_10
    move v5, v7

    goto/16 :goto_6

    :cond_11
    move v5, v7

    goto/16 :goto_7

    :cond_12
    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-lt v5, v14, :cond_b

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v9, v5, v14

    if-nez v1, :cond_13

    move v5, v6

    :goto_a
    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v9, v5, v14

    if-eqz v1, :cond_14

    move v5, v8

    :goto_b
    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_13
    move v5, v7

    goto :goto_a

    :cond_14
    move v5, v7

    goto :goto_b

    :cond_15
    const-string v5, "sans-serif-light"

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .local v2, "light":Landroid/graphics/Typeface;
    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v5, v5, v7

    const v9, 0x1040874

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-ne v5, v13, :cond_16

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v5, v5, v6

    const v9, 0x1040875

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v5, v5, v13

    const v9, 0x1040876

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v5, v5, v14

    const v9, 0x1040877

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v5, v5, v8

    const v9, 0x1040879

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    iget v9, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    aget-object v5, v5, v9

    const v9, 0x104087c

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    :goto_c
    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    add-int/lit8 v5, v5, 0x1

    if-ge v0, v5, :cond_18

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v5, v5, v0

    sget v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mDescriptionSize:I

    int-to-float v9, v9

    invoke-virtual {v5, v7, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v5, v5, v0

    invoke-virtual {v5, v2, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v5, v5, v0

    const/16 v9, 0xff

    const/16 v10, 0xf5

    const/16 v11, 0xf5

    const/16 v12, 0xf5

    invoke-static {v9, v10, v11, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v5, v5, v0

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v5, v5, v0

    invoke-virtual {p0, v5}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_16
    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-lt v5, v14, :cond_18

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v5, v5, v6

    const v9, 0x104087b

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v5, v5, v13

    const v9, 0x104087a

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v5, v5, v14

    const v9, 0x1040876

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    sget-boolean v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->HAS_PENWINDOW_H:Z

    if-eqz v5, :cond_17

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v5, v5, v8

    const v9, 0x1040879

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    :cond_17
    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    iget v9, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    aget-object v5, v5, v9

    const v9, 0x104087c

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    :goto_d
    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    add-int/lit8 v5, v5, 0x1

    if-ge v0, v5, :cond_18

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v5, v5, v0

    sget v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mDescriptionSize:I

    int-to-float v9, v9

    invoke-virtual {v5, v7, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v5, v5, v0

    invoke-virtual {v5, v2, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v5, v5, v0

    const/16 v9, 0xff

    const/16 v10, 0xf5

    const/16 v11, 0xf5

    const/16 v12, 0xf5

    invoke-static {v9, v10, v11, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v5, v5, v0

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v5, v5, v0

    invoke-virtual {p0, v5}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_18
    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v9, v5, v7

    if-nez v1, :cond_1b

    move v5, v6

    :goto_e
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v9, v5, v7

    if-eqz v1, :cond_1c

    move v5, v8

    :goto_f
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setVisibility(I)V

    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-ne v5, v13, :cond_1f

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v5, v5, v13

    if-nez v1, :cond_1d

    :goto_10
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v5, v5, v13

    if-eqz v1, :cond_1e

    :goto_11
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_19
    :goto_12
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->adjustCenterPosition()V

    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->setAllViewDelta()V

    iget-boolean v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsTalkbackEnabled:Z

    if-eqz v5, :cond_1a

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    :cond_1a
    return-void

    :cond_1b
    move v5, v7

    goto :goto_e

    :cond_1c
    move v5, v7

    goto :goto_f

    :cond_1d
    move v6, v7

    goto :goto_10

    :cond_1e
    move v8, v7

    goto :goto_11

    :cond_1f
    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-lt v5, v14, :cond_19

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v5, v5, v14

    if-nez v1, :cond_20

    :goto_13
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v5, v5, v14

    if-eqz v1, :cond_21

    :goto_14
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_12

    :cond_20
    move v6, v7

    goto :goto_13

    :cond_21
    move v8, v7

    goto :goto_14
.end method

.method private getAngle(DD)D
    .locals 9
    .param p1, "pointX"    # D
    .param p3, "pointY"    # D

    .prologue
    const-wide/16 v6, 0x0

    div-double v2, p3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    const-wide v4, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v0, v2, v4

    .local v0, "angle":D
    cmpg-double v2, p1, v6

    if-gez v2, :cond_1

    const-wide v2, 0x4066800000000000L    # 180.0

    add-double/2addr v0, v2

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    cmpg-double v2, p3, v6

    if-gez v2, :cond_0

    const-wide v2, 0x4076800000000000L    # 360.0

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method private getDistanceFromCenter(DD)D
    .locals 11
    .param p1, "pointX"    # D
    .param p3, "pointY"    # D

    .prologue
    const-wide/16 v2, 0x0

    move-object v1, p0

    move-wide v4, v2

    move-wide v6, p1

    move-wide v8, p3

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->getDistance(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private getItemIndex(Landroid/view/MotionEvent;)I
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    sub-float v0, v4, v5

    .local v0, "adjustedX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    sub-float v1, v4, v5

    .local v1, "adjustedY":F
    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    float-to-double v4, v4

    float-to-double v6, v0

    float-to-double v8, v1

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->getDistanceFromCenter(DD)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_10

    float-to-double v4, v0

    float-to-double v6, v1

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->getAngle(DD)D

    move-result-wide v2

    .local v2, "angle":D
    sget v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    const-wide/16 v4, 0x0

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_0

    const-wide v4, 0x4044266666666666L    # 40.3

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_0

    const/4 v4, 0x4

    .end local v2    # "angle":D
    :goto_0
    return v4

    .restart local v2    # "angle":D
    :cond_0
    const-wide v4, 0x4075cccccccccccdL    # 348.8

    cmpg-double v4, v4, v2

    if-gez v4, :cond_1

    const-wide v4, 0x4076800000000000L    # 360.0

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const-wide v4, 0x406629999999999aL    # 177.3

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_2

    const-wide v4, 0x406b89999999999aL    # 220.3

    cmpg-double v4, v2, v4

    if-gez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const-wide v4, 0x406b89999999999aL    # 220.3

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_3

    const-wide v4, 0x40707ccccccccccdL    # 263.8

    cmpg-double v4, v2, v4

    if-gez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const-wide v4, 0x40707ccccccccccdL    # 263.8

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_4

    const-wide v4, 0x4073200000000000L    # 306.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_4

    const/4 v4, 0x2

    goto :goto_0

    :cond_4
    const-wide v4, 0x4073200000000000L    # 306.0

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_10

    const-wide v4, 0x4075cccccccccccdL    # 348.8

    cmpg-double v4, v2, v4

    if-gez v4, :cond_10

    const/4 v4, 0x3

    goto :goto_0

    :cond_5
    sget v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_b

    sget-boolean v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->HAS_PENWINDOW_H:Z

    if-eqz v4, :cond_b

    const-wide/16 v4, 0x0

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_6

    const-wide v4, 0x4044266666666666L    # 40.3

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_6

    const/4 v4, 0x4

    goto :goto_0

    :cond_6
    const-wide v4, 0x4075cccccccccccdL    # 348.8

    cmpg-double v4, v4, v2

    if-gez v4, :cond_7

    const-wide v4, 0x4076800000000000L    # 360.0

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_7

    const/4 v4, 0x4

    goto/16 :goto_0

    :cond_7
    const-wide v4, 0x406629999999999aL    # 177.3

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_8

    const-wide v4, 0x406b89999999999aL    # 220.3

    cmpg-double v4, v2, v4

    if-gez v4, :cond_8

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_8
    const-wide v4, 0x406b89999999999aL    # 220.3

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_9

    const-wide v4, 0x40707ccccccccccdL    # 263.8

    cmpg-double v4, v2, v4

    if-gez v4, :cond_9

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_9
    const-wide v4, 0x40707ccccccccccdL    # 263.8

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_a

    const-wide v4, 0x4073200000000000L    # 306.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_a

    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_a
    const-wide v4, 0x4073200000000000L    # 306.0

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_10

    const-wide v4, 0x4075cccccccccccdL    # 348.8

    cmpg-double v4, v2, v4

    if-gez v4, :cond_10

    const/4 v4, 0x3

    goto/16 :goto_0

    :cond_b
    const-wide/16 v4, 0x0

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_c

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_c

    const/4 v4, 0x3

    goto/16 :goto_0

    :cond_c
    const-wide v4, 0x4075900000000000L    # 345.0

    cmpg-double v4, v4, v2

    if-gez v4, :cond_d

    const-wide v4, 0x4076800000000000L    # 360.0

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_d

    const/4 v4, 0x3

    goto/16 :goto_0

    :cond_d
    const-wide v4, 0x4066800000000000L    # 180.0

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_e

    const-wide v4, 0x406d600000000000L    # 235.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_e

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_e
    const-wide v4, 0x406d600000000000L    # 235.0

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_f

    const-wide v4, 0x4072200000000000L    # 290.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_f

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_f
    const-wide v4, 0x4072200000000000L    # 290.0

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_10

    const-wide v4, 0x4075900000000000L    # 345.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_10

    const/4 v4, 0x2

    goto/16 :goto_0

    .end local v2    # "angle":D
    :cond_10
    const/4 v4, -0x1

    goto/16 :goto_0
.end method

.method private knox_getProKioskState()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .local v1, "proKioskState":Z
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getKnoxCustomManager()Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v0

    .local v0, "knoxCustomManager":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private playFocusAnimation(II)V
    .locals 7
    .param p1, "previousIdx"    # I
    .param p2, "currentIdx"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x4

    const v0, -0x3fd33333    # -2.7f

    .local v0, "baseAngle":F
    sget v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-ne v1, v2, :cond_4

    if-ne p2, v6, :cond_1

    const v0, 0x42213333    # 40.3f

    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_b

    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playShowFocusAnimation()V

    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, p2, v5}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playShowDescriptionAnimation(IZ)V

    :goto_1
    return-void

    :cond_1
    if-ne p2, v2, :cond_2

    const v0, 0x42a7999a    # 83.8f

    goto :goto_0

    :cond_2
    if-ne p2, v4, :cond_3

    const/high16 v0, 0x42fc0000    # 126.0f

    goto :goto_0

    :cond_3
    if-ne p2, v3, :cond_0

    const v0, 0x4328cccd    # 168.8f

    goto :goto_0

    :cond_4
    sget v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-lt v1, v4, :cond_8

    sget-boolean v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->HAS_PENWINDOW_H:Z

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    if-ne p2, v6, :cond_5

    const/high16 v0, 0x422c0000    # 43.0f

    goto :goto_0

    :cond_5
    if-ne p2, v2, :cond_6

    const/high16 v0, 0x42ad0000    # 86.5f

    goto :goto_0

    :cond_6
    if-ne p2, v4, :cond_7

    const v0, 0x4300b333    # 128.7f

    goto :goto_0

    :cond_7
    if-ne p2, v3, :cond_0

    const v0, 0x432b8000    # 171.5f

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    if-ne p2, v6, :cond_9

    const/high16 v0, 0x425c0000    # 55.0f

    goto :goto_0

    :cond_9
    if-ne p2, v2, :cond_a

    const/high16 v0, 0x42dc0000    # 110.0f

    goto :goto_0

    :cond_a
    if-ne p2, v4, :cond_0

    const/high16 v0, 0x43210000    # 161.0f

    goto :goto_0

    :cond_b
    const/4 v1, -0x1

    if-ne p2, v1, :cond_d

    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playHideFocusAnimation()V

    if-ltz p1, :cond_c

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    if-ge p1, v1, :cond_c

    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_c
    invoke-direct {p0, p2, v5}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playShowDescriptionAnimation(IZ)V

    goto :goto_1

    :cond_d
    invoke-direct {p0, v0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playMoveFocusAnimation(F)V

    if-ltz p1, :cond_e

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    if-ge p1, v1, :cond_e

    sget-object v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_e
    invoke-direct {p0, p2, v5}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playShowDescriptionAnimation(IZ)V

    goto :goto_1
.end method

.method private playFocusSound()V
    .locals 7

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsSpenSoundOn:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sAirbuttonSounds:Landroid/media/SoundPool;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mStreamSoundId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sAirbuttonSounds:Landroid/media/SoundPool;

    sget v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusSoundId:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mStreamSoundId:I

    goto :goto_0
.end method

.method private playHideDescriptionAnimation(I)V
    .locals 8
    .param p1, "viewIdx"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, -0x1

    const/4 v5, 0x0

    if-lt p1, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    if-gt v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_2
    if-ne p1, v1, :cond_3

    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    aget-object v0, v0, v1

    const-string v1, "alpha"

    new-array v2, v2, [F

    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getAlpha()F

    move-result v3

    aput v3, v2, v6

    aput v5, v2, v7

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideDescriptionAnimation:Landroid/animation/ObjectAnimator;

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideDescriptionAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->DESCRIPTION_DURATION:I

    div-int/lit8 v1, v1, 0x2

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideDescriptionAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    const-string v1, "alpha"

    new-array v2, v2, [F

    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/widget/TextView;->getAlpha()F

    move-result v3

    aput v3, v2, v6

    aput v5, v2, v7

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideDescriptionAnimation:Landroid/animation/ObjectAnimator;

    goto :goto_1
.end method

.method private playHideFocusAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getAlpha()F

    move-result v3

    aput v3, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->FOCUS_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private playMoveFocusAnimation(F)V
    .locals 6
    .param p1, "targetAngle"    # F

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    const-string v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getRotation()F

    move-result v3

    aput v3, v2, v4

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->FOCUS_DURATION:I

    add-int/lit8 v1, v1, -0x32

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mMoveFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playFocusSound()V

    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mGlobalMenuVibrator:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;

    if-eqz v0, :cond_2

    sget v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-lt v0, v5, :cond_2

    sget-boolean v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->HAS_PENWINDOW_H:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mGlobalMenuVibrator:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;

    invoke-virtual {v0, v5}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->playVibrator(I)V

    :cond_2
    return-void
.end method

.method private playShowDescriptionAnimation(IZ)V
    .locals 5
    .param p1, "viewIdx"    # I
    .param p2, "isStartGAC"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v4, -0x1

    if-lt p1, v4, :cond_0

    iget v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    if-gt v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_2
    if-ne p1, v4, :cond_4

    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    aget-object v0, v0, v1

    const-string v1, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$3;-><init>(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->DESCRIPTION_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :goto_1
    if-ne p1, v4, :cond_3

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->START_DELAY:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    const-string v1, "alpha"

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$4;-><init>(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowDescriptionAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->DESCRIPTION_DURATION:I

    div-int/lit8 v1, v1, 0x2

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private playShowFocusAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHideFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    sget-object v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    sget-object v3, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getAlpha()F

    move-result v3

    aput v3, v2, v4

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->FOCUS_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mShowFocusAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private setAllViewDelta()V
    .locals 13

    .prologue
    iget-object v9, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .local v8, "r":Landroid/content/res/Resources;
    iget v9, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    sub-float v0, v9, v10

    .local v0, "bgImageX":F
    iget v9, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    sub-float v1, v9, v10

    .local v1, "bgImageY":F
    const v9, 0x10501de

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v6, v9

    .local v6, "focusedImageWidht":F
    const v9, 0x10501df

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v5, v9

    .local v5, "focusedImageHeight":F
    iget-object v9, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v10, 0xa0

    if-ne v9, v10, :cond_0

    const v9, 0x3dcccccd    # 0.1f

    sub-float/2addr v1, v9

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v6, v9

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v5, v9

    :cond_0
    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    invoke-virtual {v9, v0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->setX(F)V

    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    invoke-virtual {v9, v1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->setY(F)V

    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    sub-float/2addr v10, v6

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setX(F)V

    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    sub-float/2addr v10, v5

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setY(F)V

    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setPivotX(F)V

    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setPivotY(F)V

    const/4 v7, 0x0

    .local v7, "idx":I
    :goto_0
    iget v9, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    if-ge v7, v9, :cond_1

    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v9, v9, v7

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    const v11, 0x10501d4

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    const v11, 0x10501ce

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setX(F)V

    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    const v11, 0x10501d5

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    const v11, 0x10501cf

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setY(F)V

    sget v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_2

    sget-boolean v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->HAS_PENWINDOW_H:Z

    if-eqz v9, :cond_4

    :cond_2
    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    const v11, 0x10501d6

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    const v11, 0x10501d0

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setX(F)V

    :goto_1
    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    const v11, 0x10501d7

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    const v11, 0x10501d1

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setY(F)V

    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    const v11, 0x10501d8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setX(F)V

    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    const v11, 0x10501d9

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    const v11, 0x10501d2

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setY(F)V

    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v10, 0x3

    aget-object v9, v9, v10

    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    const v11, 0x10501da

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setX(F)V

    sget v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_3

    sget-boolean v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->HAS_PENWINDOW_H:Z

    if-eqz v9, :cond_5

    :cond_3
    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v10, 0x3

    aget-object v9, v9, v10

    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    const v11, 0x10501db

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    const v11, 0x10501d3

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setY(F)V

    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v10, 0x4

    aget-object v9, v9, v10

    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    const v11, 0x10501dc

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setX(F)V

    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v10, 0x4

    aget-object v9, v9, v10

    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    const v11, 0x10501dd

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setY(F)V

    :goto_2
    const v9, 0x10501e1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .local v2, "centerImageSize":I
    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    int-to-float v11, v2

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setX(F)V

    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    int-to-float v11, v2

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setY(F)V

    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    int-to-float v10, v2

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setPivotX(F)V

    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    int-to-float v10, v2

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setPivotY(F)V

    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleX(F)V

    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleY(F)V

    const v9, 0x10501e2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .local v4, "descriptionWidth":I
    const v9, 0x10501e3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .local v3, "descriptionHeight":I
    const/4 v7, 0x0

    :goto_3
    iget v9, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    add-int/lit8 v9, v9, 0x1

    if-ge v7, v9, :cond_6

    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v9, v9, v7

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v9, v9, v7

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setWidth(I)V

    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v9, v9, v7

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setHeight(I)V

    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v9, v9, v7

    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    int-to-float v11, v4

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setX(F)V

    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v9, v9, v7

    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    int-to-float v11, v3

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setY(F)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .end local v2    # "centerImageSize":I
    .end local v3    # "descriptionHeight":I
    .end local v4    # "descriptionWidth":I
    :cond_4
    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterX:F

    const v11, 0x10501d6

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    const v11, 0x10501d0

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setX(F)V

    goto/16 :goto_1

    :cond_5
    sget-object v9, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    const/4 v10, 0x3

    aget-object v9, v9, v10

    iget v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mCenterY:F

    const v11, 0x10501db

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setY(F)V

    goto/16 :goto_2

    .restart local v2    # "centerImageSize":I
    .restart local v3    # "descriptionHeight":I
    .restart local v4    # "descriptionWidth":I
    :cond_6
    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v9, 0x104087c

    const v8, 0x1040876

    const/4 v5, 0x3

    const/4 v7, -0x1

    const/4 v6, 0x2

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :goto_0
    return v4

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout2:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->knox_getProKioskState()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->getItemIndex(Landroid/view/MotionEvent;)I

    move-result v3

    .local v3, "idx":I
    if-eqz v3, :cond_3

    if-ne v3, v6, :cond_2

    sget v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-eq v4, v6, :cond_3

    :cond_2
    if-ne v3, v5, :cond_4

    sget v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-lt v4, v5, :cond_4

    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    .end local v3    # "idx":I
    :cond_4
    const/4 v2, 0x0

    .local v2, "descriptionText":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsHoverEventEnabled:Z

    if-eqz v4, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_e

    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->getItemIndex(Landroid/view/MotionEvent;)I

    move-result v1

    .local v1, "currentViewIdx":I
    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mFocusedViewIdx:I

    if-eq v1, v4, :cond_6

    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mFocusedViewIdx:I

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playFocusAnimation(II)V

    iget-boolean v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsTalkbackEnabled:Z

    if-eqz v4, :cond_6

    const/16 v4, 0x80

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .local v0, "TalkbackEvent":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->requestAccessibilityFocus()Z

    packed-switch v1, :pswitch_data_0

    const/4 v2, 0x0

    :cond_5
    :goto_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .end local v0    # "TalkbackEvent":Landroid/view/accessibility/AccessibilityEvent;
    :cond_6
    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mFocusedViewIdx:I

    .end local v1    # "currentViewIdx":I
    :cond_7
    :goto_2
    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .restart local v0    # "TalkbackEvent":Landroid/view/accessibility/AccessibilityEvent;
    .restart local v1    # "currentViewIdx":I
    :pswitch_0
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    const v5, 0x1040874

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    const-string v6, " "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_1
    sget v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-ne v4, v6, :cond_8

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    const v5, 0x1040875

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    const-string v6, " "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_8
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    const v5, 0x104087b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    const-string v6, " "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_2
    sget v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-ne v4, v6, :cond_9

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    const-string v6, " "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_9
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    const v5, 0x104087a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    const-string v6, " "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_3
    sget v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-ne v4, v6, :cond_a

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    const v5, 0x1040877

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    const-string v6, " "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_a
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    const-string v6, " "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_4
    sget v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-eq v4, v6, :cond_b

    sget-boolean v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->HAS_PENWINDOW_H:Z

    if-eqz v4, :cond_c

    :cond_b
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    const v5, 0x1040879

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    const-string v6, " "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_c
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    const-string v6, " "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_5
    sget v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-eq v4, v6, :cond_d

    sget-boolean v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->HAS_PENWINDOW_H:Z

    if-eqz v4, :cond_5

    :cond_d
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    const-string v6, " "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .end local v0    # "TalkbackEvent":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "currentViewIdx":I
    :cond_e
    iget-boolean v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsHoverEventEnabled:Z

    if-eqz v4, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_7

    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mFocusedViewIdx:I

    if-eq v4, v7, :cond_7

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIm:Landroid/hardware/input/InputManager;

    if-nez v4, :cond_f

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIm:Landroid/hardware/input/InputManager;

    :cond_f
    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIm:Landroid/hardware/input/InputManager;

    if-eqz v4, :cond_10

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIm:Landroid/hardware/input/InputManager;

    if-eqz v4, :cond_7

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIm:Landroid/hardware/input/InputManager;

    const/16 v5, -0x100

    const/16 v6, 0x140

    invoke-virtual {v4, v7, v5, v6}, Landroid/hardware/input/InputManager;->getScanCodeState(III)I

    move-result v4

    if-nez v4, :cond_7

    :cond_10
    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mFocusedViewIdx:I

    invoke-direct {p0, v4, v7}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playFocusAnimation(II)V

    iput v7, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mFocusedViewIdx:I

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected generateAndPlayFinishAnimation()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    iget v6, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    add-int/lit8 v4, v6, -0x1

    .local v4, "idx":I
    :goto_0
    if-ltz v4, :cond_0

    sget-object v6, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v6, v6, v4

    const-string v7, "alpha"

    new-array v8, v9, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "animator":Landroid/animation/ObjectAnimator;
    iget v6, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v4

    iget v7, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->MENU_ICON_INTERVAL:I

    mul-int/2addr v6, v7

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget v6, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->MENU_ICON_DURATION:I

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :cond_0
    sget-object v6, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sFocusedImage:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mFocusedViewIdx:I

    .local v5, "viewIdx":I
    invoke-direct {p0, v5}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playHideDescriptionAnimation(I)V

    sget-object v6, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const-string v7, "scaleX"

    new-array v8, v9, [F

    fill-array-data v8, :array_1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .local v2, "centerScaleX":Landroid/animation/ObjectAnimator;
    sget-object v6, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const-string v7, "scaleY"

    new-array v8, v9, [F

    fill-array-data v8, :array_2

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .local v3, "centerScaleY":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .local v1, "animators":Landroid/animation/AnimatorSet;
    new-array v6, v9, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget v6, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->CENTER_IMAGE_DURATION:I

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    sget-object v6, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    iget v7, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->START_DELAY:I

    div-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mFinishAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->startCloseAnimation(ILandroid/animation/Animator$AnimatorListener;)V

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->removeView(Landroid/view/View;)V

    iput-object v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v6}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->removeView(Landroid/view/View;)V

    iput-object v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout2:Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v6}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->removeView(Landroid/view/View;)V

    iput-object v10, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout2:Landroid/widget/RelativeLayout;

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playCloseSound()V

    sget-object v6, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mGlobalMenuVibrator:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;

    if-eqz v6, :cond_4

    sget v6, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    const/4 v7, 0x3

    if-lt v6, v7, :cond_4

    sget-boolean v6, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->HAS_PENWINDOW_H:Z

    if-nez v6, :cond_4

    sget-object v6, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mGlobalMenuVibrator:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;

    invoke-virtual {v6, v9}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->playVibrator(I)V

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected generateAndPlayStartAnimation()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const-string v6, "scaleX"

    new-array v7, v8, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .local v2, "centerScaleX":Landroid/animation/ObjectAnimator;
    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sCenterImage:Landroid/widget/ImageView;

    const-string v6, "scaleY"

    new-array v7, v8, [F

    fill-array-data v7, :array_1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .local v3, "centerScaleY":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .local v1, "animators":Landroid/animation/AnimatorSet;
    new-array v5, v8, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    aput-object v3, v5, v9

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->START_DELAY:I

    int-to-long v6, v5

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->CENTER_IMAGE_DURATION:I

    int-to-long v6, v5

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mStartAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    const/4 v0, 0x0

    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const/4 v4, 0x0

    .local v4, "idx":I
    :goto_0
    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    if-ge v4, v5, :cond_1

    if-eqz v4, :cond_0

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v5, v5, v4

    const-string v6, "alpha"

    new-array v7, v8, [F

    fill-array-data v7, :array_2

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->START_DELAY:I

    iget v6, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->MENU_ICON_INTERVAL:I

    mul-int/2addr v6, v4

    add-int/2addr v5, v6

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->MENU_ICON_DURATION:I

    div-int/lit8 v5, v5, 0x2

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sMenuImages:[Landroid/widget/ImageView;

    aget-object v5, v5, v4

    const-string v6, "alpha"

    new-array v7, v8, [F

    fill-array-data v7, :array_3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->START_DELAY:I

    iget v6, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->MENU_ICON_DURATION:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    :cond_1
    const/4 v5, -0x1

    invoke-direct {p0, v5, v9}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playShowDescriptionAnimation(IZ)V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sBgImage:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;

    invoke-virtual {v5}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;->startOpenAnimation()V

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->playOpenSound()V

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mGlobalMenuVibrator:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;

    if-eqz v5, :cond_2

    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    const/4 v6, 0x3

    if-lt v5, v6, :cond_2

    sget-boolean v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->HAS_PENWINDOW_H:Z

    if-nez v5, :cond_2

    sget-object v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mGlobalMenuVibrator:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;

    invoke-virtual {v5, v9}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->playVibrator(I)V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected initAllViewDelta()V
    .locals 0

    .prologue
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayoutChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    iget-boolean v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsStartUp:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, v4, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v1, v4

    .local v1, "helpPopupY":F
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .local v3, "r":Landroid/content/res/Resources;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mBgHalfSize:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    .end local v3    # "r":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mHelpPopupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setY(F)V

    .end local v1    # "helpPopupY":F
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->generateAndPlayStartAnimation()V

    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_1
    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mAppCount:I

    add-int/lit8 v4, v4, 0x1

    if-ge v2, v4, :cond_4

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_2

    sget-object v4, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->sDescriptionViews:[Landroid/widget/TextView;

    aget-object v4, v4, v2

    sget v5, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mDescriptionSmallSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "idx":I
    .restart local v1    # "helpPopupY":F
    .restart local v3    # "r":Landroid/content/res/Resources;
    :cond_3
    if-eqz v3, :cond_0

    const v4, 0x10501e6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .local v0, "bottomMargin":I
    int-to-float v4, v0

    sub-float/2addr v1, v4

    goto :goto_0

    .end local v0    # "bottomMargin":I
    .end local v1    # "helpPopupY":F
    .end local v3    # "r":Landroid/content/res/Resources;
    .restart local v2    # "idx":I
    :cond_4
    iput-boolean v6, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsStartUp:Z

    .end local v2    # "idx":I
    :cond_5
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    return-void
.end method

.method protected onTouchDown(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout2:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->getItemIndex(Landroid/view/MotionEvent;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->onFinishing()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->knox_getProKioskState()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->getItemIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .local v0, "idx":I
    if-eqz v0, :cond_0

    if-ne v0, v3, :cond_4

    sget v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-eq v1, v3, :cond_0

    :cond_4
    if-ne v0, v4, :cond_5

    sget v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-ge v1, v4, :cond_0

    .end local v0    # "idx":I
    :cond_5
    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout2:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->knox_getProKioskState()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->getItemIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .local v0, "idx":I
    if-eqz v0, :cond_4

    if-ne v0, v3, :cond_3

    sget v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-eq v1, v3, :cond_4

    :cond_3
    if-ne v0, v4, :cond_5

    sget v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-lt v1, v4, :cond_5

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .end local v0    # "idx":I
    :cond_5
    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onTouchUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout2:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mIsReservedToFinish:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->getItemIndex(Landroid/view/MotionEvent;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mSelectedViewIdx:I

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->knox_getProKioskState()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->getItemIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .local v0, "idx":I
    if-eqz v0, :cond_0

    if-ne v0, v2, :cond_4

    sget v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-eq v1, v2, :cond_0

    :cond_4
    if-ne v0, v3, :cond_5

    sget v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mUspLevel:I

    if-ge v1, v3, :cond_0

    .end local v0    # "idx":I
    :cond_5
    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .param p1, "eventType"    # I

    .prologue
    return-void
.end method

.method protected showHoverEnterAnimation(I)V
    .locals 0
    .param p1, "viewIdx"    # I

    .prologue
    return-void
.end method

.method protected showHoverExitAnimation(I)V
    .locals 0
    .param p1, "viewIdx"    # I

    .prologue
    return-void
.end method
