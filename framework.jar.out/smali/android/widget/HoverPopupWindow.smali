.class public Landroid/widget/HoverPopupWindow;
.super Ljava/lang/Object;
.source "HoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/HoverPopupWindow$Gravity;,
        Landroid/widget/HoverPopupWindow$HoverPopupContainer;,
        Landroid/widget/HoverPopupWindow$TouchablePopupContainer;,
        Landroid/widget/HoverPopupWindow$QuintEaseOut;,
        Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;,
        Landroid/widget/HoverPopupWindow$HoverPopupListener;
    }
.end annotation


# static fields
.field private static final AIRCOMMAND_MORPH_USP:Ljava/lang/String;

.field static final DEBUG:Z = false

.field private static final DEVICE_TYPE:Ljava/lang/String;

.field private static final HOVER_DETECT_TIME_MS:I = 0x12c

.field private static final MSG_DISMISS_POPUP:I = 0x2

.field private static final MSG_SHOW_POPUP:I = 0x1

.field private static final MSG_TIMEOUT:I = 0x1

.field private static final POPUP_TIMEOUT_MS:I = 0x2710

.field static final TAG:Ljava/lang/String; = "HoverPopupWindow"

.field private static final TIMEOUT_DELAY:I = 0x1f4

.field private static final TIMEOUT_DELAY_LONG:I = 0x7d0

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_TOOLTIP:I = 0x1

.field public static final TYPE_USER_CUSTOM:I = 0x3

.field public static final TYPE_WIDGET_DEFAULT:I = 0x2

.field private static final UI_THREAD_BUSY_TIME_MS:I = 0x3e8


# instance fields
.field private final ANCHORVIEW_COORDINATES_TYPE_NONE:I

.field private final ANCHORVIEW_COORDINATES_TYPE_SCREEN:I

.field private final ANCHORVIEW_COORDINATES_TYPE_WINDOW:I

.field private H:F

.field private final ID_TOOLTIP_VIEW:I

.field private final MARGIN_FOR_HOVER_RING:I

.field private MOVE_CENTER:I

.field private MOVE_LEFT:I

.field private MOVE_LEFT_TO_CENTER:I

.field private MOVE_RIGHT:I

.field private MOVE_RIGHT_TO_CENTER:I

.field private final SHOW_ANIMATION_DURATION:I

.field private TW:F

.field private W:F

.field private mAnchorRect:Landroid/graphics/Rect;

.field private mAnchorView:Landroid/view/View;

.field protected mAnimationStyle:I

.field private mCenterPoint:Landroid/graphics/PointF;

.field private mContainerLeftOnWindow:I

.field private mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

.field private mContentHeight:I

.field private mContentLP:Landroid/view/ViewGroup$LayoutParams;

.field private mContentResId:I

.field protected mContentText:Ljava/lang/CharSequence;

.field protected mContentView:Landroid/view/View;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mCoordinatesOfAnchorView:I

.field private mCoverManager:Lcom/samsung/android/cover/ICoverManager;

.field private mDirection:I

.field protected mDismissHandler:Landroid/os/Handler;

.field private mDismissPopupRunnable:Ljava/lang/Runnable;

.field private mDismissTouchableHPWOnActionUp:Z

.field private mDisplayFrame:Landroid/graphics/Rect;

.field private mDisplayFrameLeft:I

.field private mDisplayFrameRight:I

.field private mDisplayWidthToComputeAniWidth:I

.field private mEnabled:Z

.field private mFontScale:F

.field private mFullTextPopupRightLimit:I

.field private mGuideLineColor:I

.field protected mGuideLineFadeOffset:I

.field private mGuideRingDrawableId:I

.field private mHandler:Landroid/os/Handler;

.field private mHashCodeForViewState:I

.field protected mHoverDetectTimeMS:I

.field private mHoverPaddingBottom:I

.field private mHoverPaddingLeft:I

.field private mHoverPaddingRight:I

.field private mHoverPaddingTop:I

.field private mHoveringPointX:I

.field private mHoveringPointY:I

.field private mIsFHAnimationEnabled:Z

.field private mIsFHAnimationEnabledByApp:Z

.field private mIsFHGuideLineEnabled:Z

.field private mIsFHGuideLineEnabledByApp:Z

.field private mIsFHSoundAndHapticEnabled:Z

.field protected mIsGuideLineEnabled:Z

.field private mIsHoverPaddingEnabled:Z

.field private mIsInfoPickerMoveEabled:Z

.field private mIsInfoPickerMoveEabledByApp:Z

.field private mIsPopupTouchable:Z

.field private mIsProgressBar:Z

.field private mIsSPenPointChanged:Z

.field private mIsSetInfoPickerColorToAndMoreBottomImg:Z

.field private mIsShowMessageSent:Z

.field private mIsSkipPenPointEffect:Z

.field private mIsTryingShowPopup:Z

.field private mLeftPoint:Landroid/graphics/PointF;

.field private mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

.field private mNeedToMeasureContentView:Z

.field private mOverTopBoundary:Z

.field protected final mParentView:Landroid/view/View;

.field private mPenWindowStartPos:Landroid/graphics/Point;

.field private mPickerPadding:F

.field private mPickerXoffset:I

.field private mPopup:Landroid/widget/PopupWindow;

.field protected mPopupGravity:I

.field private mPopupOffsetX:I

.field private mPopupOffsetY:I

.field protected mPopupPosX:I

.field protected mPopupPosY:I

.field protected mPopupType:I

.field private mPreShowListener:Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

.field private mReferncedAnchorRect:Landroid/graphics/Rect;

.field private mRightPoint:Landroid/graphics/PointF;

.field protected mShowPopupAlways:Z

.field private mShowPopupRunnable:Ljava/lang/Runnable;

.field private mToolType:I

.field private mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

.field private mUspLevel:I

.field private mWindowGapX:I

.field private mWindowGapY:I

.field private misDialer:Z

.field private misGravityBottomUnder:Z

.field private objAnimationValue:F

.field private objAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 297
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/HoverPopupWindow;->DEVICE_TYPE:Ljava/lang/String;

    .line 299
    const-string/jumbo v0, "ro.aircommand.morph.usp"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/HoverPopupWindow;->AIRCOMMAND_MORPH_USP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "parentView"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/HoverPopupWindow;-><init>(Landroid/view/View;I)V

    .line 314
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 6
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const v0, 0x7010001

    iput v0, p0, Landroid/widget/HoverPopupWindow;->ID_TOOLTIP_VIEW:I

    .line 113
    const/16 v0, 0x8

    iput v0, p0, Landroid/widget/HoverPopupWindow;->MARGIN_FOR_HOVER_RING:I

    .line 121
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    .line 123
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    .line 173
    iput v1, p0, Landroid/widget/HoverPopupWindow;->ANCHORVIEW_COORDINATES_TYPE_NONE:I

    .line 174
    iput v3, p0, Landroid/widget/HoverPopupWindow;->ANCHORVIEW_COORDINATES_TYPE_WINDOW:I

    .line 175
    iput v5, p0, Landroid/widget/HoverPopupWindow;->ANCHORVIEW_COORDINATES_TYPE_SCREEN:I

    .line 193
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    .line 195
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    .line 197
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    .line 199
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    .line 201
    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 203
    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    .line 205
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 207
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 213
    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    .line 217
    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    .line 239
    iput v4, p0, Landroid/widget/HoverPopupWindow;->W:F

    .line 242
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Landroid/widget/HoverPopupWindow;->H:F

    .line 245
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Landroid/widget/HoverPopupWindow;->TW:F

    .line 247
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    .line 249
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    .line 251
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    .line 253
    const/high16 v0, 0x42580000    # 54.0f

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mPickerPadding:F

    .line 255
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mHandler:Landroid/os/Handler;

    .line 261
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/widget/HoverPopupWindow;->SHOW_ANIMATION_DURATION:I

    .line 263
    iput v1, p0, Landroid/widget/HoverPopupWindow;->MOVE_RIGHT:I

    .line 265
    iput v3, p0, Landroid/widget/HoverPopupWindow;->MOVE_LEFT:I

    .line 267
    iput v5, p0, Landroid/widget/HoverPopupWindow;->MOVE_CENTER:I

    .line 269
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    .line 271
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    .line 273
    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_CENTER:I

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mDirection:I

    .line 275
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    .line 277
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrameLeft:I

    .line 279
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrameRight:I

    .line 281
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mContainerLeftOnWindow:I

    .line 283
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mPickerXoffset:I

    .line 285
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    .line 287
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    .line 295
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    .line 300
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mFullTextPopupRightLimit:I

    .line 301
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    .line 303
    iput v4, p0, Landroid/widget/HoverPopupWindow;->mFontScale:F

    .line 304
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mUspLevel:I

    .line 324
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    .line 325
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    .line 326
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    .line 328
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->initInstance()V

    .line 329
    invoke-virtual {p0, p2}, Landroid/widget/HoverPopupWindow;->setInstanceByType(I)V

    .line 331
    new-instance v0, Landroid/widget/HoverPopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/HoverPopupWindow$1;-><init>(Landroid/widget/HoverPopupWindow;)V

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mHandler:Landroid/os/Handler;

    .line 410
    new-instance v0, Landroid/widget/HoverPopupWindow$2;

    invoke-direct {v0, p0}, Landroid/widget/HoverPopupWindow$2;-><init>(Landroid/widget/HoverPopupWindow;)V

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    .line 424
    return-void
.end method

.method static synthetic access$000(Landroid/widget/HoverPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    return v0
.end method

.method static synthetic access$100(Landroid/widget/HoverPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_LEFT:I

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/HoverPopupWindow;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, Landroid/widget/HoverPopupWindow;->objAnimationValue:F

    return v0
.end method

.method static synthetic access$1302(Landroid/widget/HoverPopupWindow;F)F
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # F

    .prologue
    .line 87
    iput p1, p0, Landroid/widget/HoverPopupWindow;->objAnimationValue:F

    return p1
.end method

.method static synthetic access$1400(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrameLeft:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrameRight:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/HoverPopupWindow;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->dismissPopup()V

    return-void
.end method

.method static synthetic access$1700(Landroid/widget/HoverPopupWindow;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->showPopup()V

    return-void
.end method

.method static synthetic access$1800(Landroid/widget/HoverPopupWindow;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/widget/HoverPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return v0
.end method

.method static synthetic access$200(Landroid/widget/HoverPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/HoverPopupWindow;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, Landroid/widget/HoverPopupWindow;->TW:F

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/HoverPopupWindow;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, Landroid/widget/HoverPopupWindow;->H:F

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/HoverPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/HoverPopupWindow;)Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/widget/HoverPopupWindow;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, Landroid/widget/HoverPopupWindow;->W:F

    return v0
.end method

.method static synthetic access$2502(Landroid/widget/HoverPopupWindow;F)F
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # F

    .prologue
    .line 87
    iput p1, p0, Landroid/widget/HoverPopupWindow;->W:F

    return p1
.end method

.method static synthetic access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$2602(Landroid/widget/HoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    .line 87
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$2702(Landroid/widget/HoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    .line 87
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$2802(Landroid/widget/HoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    .line 87
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$2900(Landroid/widget/HoverPopupWindow;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mPickerPadding:F

    return v0
.end method

.method static synthetic access$300(Landroid/widget/HoverPopupWindow;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mContainerLeftOnWindow:I

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/HoverPopupWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/widget/HoverPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/HoverPopupWindow;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mFullTextPopupRightLimit:I

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mPickerXoffset:I

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/HoverPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z

    return v0
.end method

.method static synthetic access$400(Landroid/widget/HoverPopupWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mDirection:I

    return v0
.end method

.method static synthetic access$602(Landroid/widget/HoverPopupWindow;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mDirection:I

    return p1
.end method

.method static synthetic access$700(Landroid/widget/HoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_RIGHT:I

    return v0
.end method

.method static synthetic access$800(Landroid/widget/HoverPopupWindow;II)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/HoverPopupWindow;->setAnimator(II)V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/HoverPopupWindow;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 31
    .param p1, "anchorRect"    # Landroid/graphics/Rect;
    .param p2, "displayFrame"    # Landroid/graphics/Rect;
    .param p3, "contentWidth"    # I
    .param p4, "contentHeight"    # I

    .prologue
    .line 1850
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    .line 1851
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    .line 1852
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    .line 1853
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    .line 1855
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 1856
    .local v12, "posX":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 1862
    .local v13, "posY":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    move/from16 v28, v0

    move/from16 v0, v28

    and-int/lit16 v8, v0, 0xf0f

    .line 1863
    .local v8, "hGravity":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    move/from16 v28, v0

    const v29, 0xf0f0

    and-int v21, v28, v29

    .line 1865
    .local v21, "vGravity":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x1050362

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    .line 1867
    .local v19, "tooltipShiftX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x1050363

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 1868
    .local v20, "tooltipTopMargin":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    move/from16 v28, v0

    if-nez v28, :cond_a

    .line 1870
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_9

    .line 1871
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    add-int v12, v28, v29

    .line 1872
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    add-int v13, v28, v29

    .line 1965
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_e

    .line 1966
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1967
    .local v4, "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v16

    .line 1968
    .local v16, "root":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    .line 1969
    .local v23, "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v9, 0x0

    .line 1970
    .local v9, "isSystemUiVisible":Z
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v28, v0

    if-eqz v28, :cond_1

    move-object/from16 v25, v23

    .line 1971
    check-cast v25, Landroid/view/WindowManager$LayoutParams;

    .line 1972
    .local v25, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v28, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v29, v0

    or-int v28, v28, v29

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x404

    move/from16 v28, v0

    if-nez v28, :cond_d

    const/4 v9, 0x1

    .line 1975
    .end local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_1
    const/16 v18, 0x0

    .line 1977
    .local v18, "statusBarHeight":I
    if-eqz v9, :cond_2

    .line 1978
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x1050017

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 1980
    :cond_2
    add-int v28, v13, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_3

    .line 1982
    const/16 v28, 0x5050

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    .line 1983
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    .line 1984
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v28

    div-int/lit8 v29, p3, 0x2

    sub-int v12, v28, v29

    .line 1985
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    move/from16 v28, v0

    add-int v12, v12, v28

    .line 2016
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v9    # "isSystemUiVisible":Z
    .end local v16    # "root":Landroid/view/View;
    .end local v18    # "statusBarHeight":I
    .end local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    :goto_2
    const-string v28, "HoverPopupWindow"

    const-string v29, "computePopupPositionInternal: check window boundary "

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->isScaleWindow()Z

    move-result v28

    if-nez v28, :cond_20

    .line 2018
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_14

    .line 2019
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 2020
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x105036b

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 2021
    .local v7, "fulltextAirviewShiftX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_12

    .line 2022
    if-gez v12, :cond_11

    .line 2023
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 2180
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v7    # "fulltextAirviewShiftX":I
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_31

    .line 2181
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 2182
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v16

    .line 2183
    .restart local v16    # "root":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    .line 2184
    .restart local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v9, 0x0

    .line 2185
    .restart local v9    # "isSystemUiVisible":Z
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v28, v0

    if-eqz v28, :cond_5

    move-object/from16 v25, v23

    .line 2186
    check-cast v25, Landroid/view/WindowManager$LayoutParams;

    .line 2187
    .restart local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v28, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v29, v0

    or-int v28, v28, v29

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x404

    move/from16 v28, v0

    if-nez v28, :cond_2a

    const/4 v9, 0x1

    .line 2190
    .end local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_5
    :goto_4
    const/16 v18, 0x0

    .line 2192
    .restart local v18    # "statusBarHeight":I
    if-eqz v9, :cond_6

    .line 2193
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x1050017

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 2195
    :cond_6
    move/from16 v0, v18

    if-ge v13, v0, :cond_2e

    .line 2198
    const/16 v28, 0x3030

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_2d

    .line 2199
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    move/from16 v1, p4

    if-lt v0, v1, :cond_2b

    .line 2200
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    .line 2201
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v28, v0

    add-int v13, v13, v28

    .line 2202
    const-string v28, "HoverPopupWindow"

    const-string v29, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    .line 2358
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v9    # "isSystemUiVisible":Z
    .end local v16    # "root":Landroid/view/View;
    .end local v18    # "statusBarHeight":I
    .end local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    .line 2359
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    .line 2362
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->isScaleWindow()Z

    move-result v28

    if-eqz v28, :cond_8

    .line 2363
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string/jumbo v29, "window"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/WindowManager;

    .line 2364
    .local v26, "wm":Landroid/view/WindowManager;
    if-eqz v26, :cond_8

    .line 2365
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2366
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-interface/range {v26 .. v26}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2367
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getHeight()I

    move-result v28

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v29, v0

    sub-int v27, v28, v29

    .line 2368
    .local v27, "yOffset":I
    if-lez v27, :cond_8

    .line 2369
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    move/from16 v28, v0

    sub-int v28, v28, v27

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    .line 2375
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v26    # "wm":Landroid/view/WindowManager;
    .end local v27    # "yOffset":I
    :cond_8
    return-void

    .line 1873
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 1874
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 1875
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    goto/16 :goto_0

    .line 1879
    :cond_a
    sparse-switch v8, :sswitch_data_0

    .line 1921
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 1926
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    move/from16 v28, v0

    add-int v12, v12, v28

    .line 1930
    sparse-switch v21, :sswitch_data_1

    .line 1952
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 1957
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v28, v0

    add-int v13, v13, v28

    goto/16 :goto_0

    .line 1881
    :sswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    sub-int v12, v28, p3

    .line 1882
    goto :goto_6

    .line 1885
    :sswitch_1
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->left:I

    .line 1886
    goto :goto_6

    .line 1889
    :sswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    .line 1890
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v28

    sub-int v28, v28, p3

    add-int v12, v28, v19

    goto :goto_6

    .line 1892
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v28

    sub-int v12, v28, p3

    .line 1894
    goto :goto_6

    .line 1897
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v28

    div-int/lit8 v29, p3, 0x2

    sub-int v12, v28, v29

    .line 1898
    goto :goto_6

    .line 1901
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    .line 1902
    goto :goto_6

    .line 1905
    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    sub-int v12, v28, p3

    .line 1906
    goto :goto_6

    .line 1909
    :sswitch_6
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->right:I

    .line 1910
    goto :goto_6

    .line 1913
    :sswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v28

    div-int/lit8 v29, p3, 0x2

    sub-int v12, v28, v29

    .line 1914
    goto :goto_6

    .line 1917
    :sswitch_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    move/from16 v28, v0

    div-int/lit8 v29, p3, 0x2

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    move/from16 v29, v0

    sub-int v12, v28, v29

    .line 1918
    goto :goto_6

    .line 1932
    :sswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    sub-int v13, v28, p4

    .line 1933
    goto :goto_7

    .line 1935
    :sswitch_a
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->top:I

    .line 1936
    goto :goto_7

    .line 1938
    :sswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v28

    div-int/lit8 v29, p4, 0x2

    sub-int v13, v28, v29

    .line 1939
    goto/16 :goto_7

    .line 1941
    :sswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v13, v28, p4

    .line 1942
    goto/16 :goto_7

    .line 1944
    :sswitch_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    .line 1945
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    add-int v13, v28, v20

    .line 1949
    :goto_8
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    goto/16 :goto_7

    .line 1947
    :cond_c
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_8

    .line 1972
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v9    # "isSystemUiVisible":Z
    .restart local v16    # "root":Landroid/view/View;
    .restart local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1989
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v9    # "isSystemUiVisible":Z
    .end local v16    # "root":Landroid/view/View;
    .end local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    .line 1990
    add-int v28, v13, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_3

    .line 1991
    const/16 v28, 0x5050

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    .line 1992
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    .line 1993
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1994
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, p4

    if-lt v0, v1, :cond_10

    .line 1995
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x1050017

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 1996
    .restart local v18    # "statusBarHeight":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    add-int v28, v13, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_3

    .line 1997
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v28

    div-int/lit8 v29, p3, 0x2

    sub-int v12, v28, v29

    .line 1998
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    move/from16 v28, v0

    add-int v12, v12, v28

    goto/16 :goto_2

    .line 2002
    .end local v18    # "statusBarHeight":I
    :cond_10
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v13

    add-int v28, v28, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_3

    .line 2003
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v28

    div-int/lit8 v29, p3, 0x2

    sub-int v12, v28, v29

    .line 2004
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    move/from16 v28, v0

    add-int v12, v12, v28

    goto/16 :goto_2

    .line 2024
    .restart local v7    # "fulltextAirviewShiftX":I
    :cond_11
    add-int v28, v12, p3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_4

    .line 2025
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    sub-int v28, v28, p3

    move/from16 v0, v28

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto/16 :goto_3

    .line 2028
    :cond_12
    if-gez v12, :cond_13

    .line 2029
    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto/16 :goto_3

    .line 2030
    :cond_13
    add-int v28, v12, p3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_4

    .line 2031
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    sub-int v28, v28, p3

    sub-int v28, v28, v7

    move/from16 v0, v28

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto/16 :goto_3

    .line 2034
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v7    # "fulltextAirviewShiftX":I
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    .line 2035
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 2036
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    add-int v28, v28, v12

    if-gtz v28, :cond_18

    .line 2037
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x105036b

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 2038
    .restart local v7    # "fulltextAirviewShiftX":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    sub-int v28, v28, p3

    move/from16 v0, v28

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 2040
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_16

    .line 2041
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 2045
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string/jumbo v28, "window"

    invoke-static/range {v28 .. v28}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v24

    .line 2048
    .local v24, "windowManager":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface/range {v24 .. v24}, Landroid/view/IWindowManager;->getCocktailBarFrame()Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2053
    .local v3, "cocktailRect":Landroid/graphics/Rect;
    :goto_a
    if-eqz v3, :cond_4

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    if-lez v28, :cond_4

    .line 2055
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v16

    .line 2056
    .restart local v16    # "root":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    .line 2057
    .restart local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v28, v0

    if-eqz v28, :cond_4

    move-object/from16 v25, v23

    .line 2058
    check-cast v25, Landroid/view/WindowManager$LayoutParams;

    .line 2059
    .restart local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v28, v0

    const/16 v29, 0x8ac

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_15

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v28, v0

    const/16 v29, 0x62

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_17

    .line 2061
    :cond_15
    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto/16 :goto_3

    .line 2043
    .end local v3    # "cocktailRect":Landroid/graphics/Rect;
    .end local v16    # "root":Landroid/view/View;
    .end local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v24    # "windowManager":Landroid/view/IWindowManager;
    .end local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_16
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    add-int v28, v28, v7

    move/from16 v0, v28

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_9

    .line 2049
    .restart local v24    # "windowManager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v5

    .line 2050
    .local v5, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 2051
    .restart local v3    # "cocktailRect":Landroid/graphics/Rect;
    const-string v28, "HoverPopupWindow"

    const-string/jumbo v29, "windowManager.getCocktailBarFrame() :: error occurred"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 2063
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v16    # "root":Landroid/view/View;
    .restart local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_17
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto/16 :goto_3

    .line 2067
    .end local v3    # "cocktailRect":Landroid/graphics/Rect;
    .end local v7    # "fulltextAirviewShiftX":I
    .end local v16    # "root":Landroid/view/View;
    .end local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v24    # "windowManager":Landroid/view/IWindowManager;
    .end local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_18
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    add-int v28, v28, v12

    add-int v28, v28, p3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_1c

    .line 2069
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x105036b

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 2071
    .restart local v7    # "fulltextAirviewShiftX":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string/jumbo v28, "window"

    invoke-static/range {v28 .. v28}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v24

    .line 2073
    .restart local v24    # "windowManager":Landroid/view/IWindowManager;
    invoke-interface/range {v24 .. v24}, Landroid/view/IWindowManager;->getCocktailBarFrame()Landroid/graphics/Rect;

    move-result-object v3

    .line 2074
    .restart local v3    # "cocktailRect":Landroid/graphics/Rect;
    if-eqz v3, :cond_1a

    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    if-lez v28, :cond_1a

    .line 2075
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string/jumbo v29, "window"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/WindowManager;

    .line 2077
    .restart local v26    # "wm":Landroid/view/WindowManager;
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2078
    .local v10, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface/range {v26 .. v26}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 2079
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_19

    .line 2080
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    sub-int v28, v28, p3

    move/from16 v0, v28

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 2084
    :goto_b
    add-int v28, v12, p3

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mFullTextPopupRightLimit:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 2093
    .end local v3    # "cocktailRect":Landroid/graphics/Rect;
    .end local v10    # "metrics":Landroid/util/DisplayMetrics;
    .end local v24    # "windowManager":Landroid/view/IWindowManager;
    .end local v26    # "wm":Landroid/view/WindowManager;
    :catch_1
    move-exception v5

    .line 2094
    .local v5, "e":Ljava/lang/Exception;
    const-string v28, "HoverPopupWindow"

    const-string v29, "HoverPopupWindow:computePopupPositionInternal : WINDOW_SERVICE remote exception occurred. "

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2082
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "cocktailRect":Landroid/graphics/Rect;
    .restart local v10    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v24    # "windowManager":Landroid/view/IWindowManager;
    .restart local v26    # "wm":Landroid/view/WindowManager;
    :cond_19
    :try_start_2
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    sub-int v28, v28, p3

    sub-int v28, v28, v7

    move/from16 v0, v28

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto :goto_b

    .line 2086
    .end local v10    # "metrics":Landroid/util/DisplayMetrics;
    .end local v26    # "wm":Landroid/view/WindowManager;
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1b

    .line 2087
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    sub-int v28, v28, p3

    move/from16 v0, v28

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 2091
    :goto_c
    add-int v28, v12, p3

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mFullTextPopupRightLimit:I

    goto/16 :goto_3

    .line 2089
    :cond_1b
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    sub-int v28, v28, p3

    sub-int v28, v28, v7

    move/from16 v0, v28

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v12

    goto :goto_c

    .line 2097
    .end local v3    # "cocktailRect":Landroid/graphics/Rect;
    .end local v7    # "fulltextAirviewShiftX":I
    .end local v24    # "windowManager":Landroid/view/IWindowManager;
    :cond_1c
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    if-lez v28, :cond_4

    .line 2098
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string/jumbo v28, "window"

    invoke-static/range {v28 .. v28}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v24

    .line 2101
    .restart local v24    # "windowManager":Landroid/view/IWindowManager;
    :try_start_3
    invoke-interface/range {v24 .. v24}, Landroid/view/IWindowManager;->getCocktailBarFrame()Landroid/graphics/Rect;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v3

    .line 2106
    .restart local v3    # "cocktailRect":Landroid/graphics/Rect;
    :goto_d
    if-eqz v3, :cond_1e

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    if-lez v28, :cond_1e

    .line 2107
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v16

    .line 2108
    .restart local v16    # "root":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    .line 2109
    .restart local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v28, v0

    if-eqz v28, :cond_1e

    move-object/from16 v25, v23

    .line 2110
    check-cast v25, Landroid/view/WindowManager$LayoutParams;

    .line 2111
    .restart local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v28, v0

    const/16 v29, 0x8ac

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_1d

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v28, v0

    const/16 v29, 0x62

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1f

    .line 2113
    :cond_1d
    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 2119
    .end local v16    # "root":Landroid/view/View;
    .end local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_1e
    :goto_e
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    sub-int v28, v28, p3

    move/from16 v0, v28

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto/16 :goto_3

    .line 2102
    .end local v3    # "cocktailRect":Landroid/graphics/Rect;
    :catch_2
    move-exception v5

    .line 2103
    .local v5, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 2104
    .restart local v3    # "cocktailRect":Landroid/graphics/Rect;
    const-string v28, "HoverPopupWindow"

    const-string/jumbo v29, "windowManager.getCocktailBarFrame() :: error occurred"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 2115
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v16    # "root":Landroid/view/View;
    .restart local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_1f
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_e

    .line 2127
    .end local v3    # "cocktailRect":Landroid/graphics/Rect;
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v16    # "root":Landroid/view/View;
    .end local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v24    # "windowManager":Landroid/view/IWindowManager;
    .end local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_20
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2128
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 2129
    sget-boolean v28, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v28, :cond_21

    .line 2131
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string/jumbo v29, "multiwindow_facade"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 2132
    .local v11, "mwFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    if-eqz v11, :cond_21

    .line 2133
    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v14

    .line 2134
    .local v14, "realDisplayInfo":Landroid/view/DisplayInfo;
    if-eqz v14, :cond_21

    .line 2135
    invoke-virtual {v14, v4}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;)V

    .line 2136
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v28

    move-object/from16 v0, v28

    iget v6, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 2137
    .local v6, "fontScale":F
    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    move/from16 v28, v0

    mul-float v28, v28, v6

    move/from16 v0, v28

    iput v0, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 2142
    .end local v6    # "fontScale":F
    .end local v11    # "mwFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .end local v14    # "realDisplayInfo":Landroid/view/DisplayInfo;
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_26

    .line 2143
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v28, v0

    if-eqz v28, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 2144
    .local v2, "anchorView":Landroid/view/View;
    :goto_f
    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v22

    .line 2145
    .local v22, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v22, :cond_4

    .line 2146
    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v17

    .line 2148
    .local v17, "scaleFactor":Landroid/graphics/PointF;
    if-gez v12, :cond_24

    .line 2149
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 2154
    :cond_22
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v28, v0

    if-eqz v28, :cond_4

    .line 2155
    int-to-float v0, v12

    move/from16 v28, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v28, v28, v29

    const/16 v29, 0x0

    cmpg-float v28, v28, v29

    if-gez v28, :cond_25

    .line 2156
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v29, v0

    div-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto/16 :goto_3

    .line 2143
    .end local v2    # "anchorView":Landroid/view/View;
    .end local v17    # "scaleFactor":Landroid/graphics/PointF;
    .end local v22    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_f

    .line 2150
    .restart local v2    # "anchorView":Landroid/view/View;
    .restart local v17    # "scaleFactor":Landroid/graphics/PointF;
    .restart local v22    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_24
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    add-int v29, v12, p3

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-int v28, v28, v29

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_22

    .line 2151
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto/16 :goto_10

    .line 2157
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    add-int v29, v12, p3

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-int v28, v28, v29

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_4

    .line 2158
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v29, v0

    div-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    sub-int v28, v28, p3

    move/from16 v0, v28

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto/16 :goto_3

    .line 2163
    .end local v2    # "anchorView":Landroid/view/View;
    .end local v17    # "scaleFactor":Landroid/graphics/PointF;
    .end local v22    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    .line 2164
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v28, v0

    if-eqz v28, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 2165
    .restart local v2    # "anchorView":Landroid/view/View;
    :goto_11
    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v22

    .line 2166
    .restart local v22    # "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v22, :cond_4

    .line 2167
    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v17

    .line 2169
    .restart local v17    # "scaleFactor":Landroid/graphics/PointF;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    int-to-float v0, v12

    move/from16 v29, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-int v28, v28, v29

    if-gez v28, :cond_28

    .line 2170
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 2164
    .end local v2    # "anchorView":Landroid/view/View;
    .end local v17    # "scaleFactor":Landroid/graphics/PointF;
    .end local v22    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_11

    .line 2171
    .restart local v2    # "anchorView":Landroid/view/View;
    .restart local v17    # "scaleFactor":Landroid/graphics/PointF;
    .restart local v22    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_28
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    add-int v29, v12, p3

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-int v28, v28, v29

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_29

    .line 2172
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v29, v0

    div-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    sub-int v28, v28, p3

    move/from16 v0, v28

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto/16 :goto_3

    .line 2173
    :cond_29
    add-int v28, v12, p3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_4

    .line 2174
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    sub-int v12, v28, p3

    goto/16 :goto_3

    .line 2187
    .end local v2    # "anchorView":Landroid/view/View;
    .end local v17    # "scaleFactor":Landroid/graphics/PointF;
    .end local v22    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v9    # "isSystemUiVisible":Z
    .restart local v16    # "root":Landroid/view/View;
    .restart local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_2a
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 2204
    .end local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .restart local v18    # "statusBarHeight":I
    :cond_2b
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v29, v29, v18

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_2c

    .line 2205
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    .line 2207
    const-string v28, "HoverPopupWindow"

    const-string v29, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_5

    .line 2211
    :cond_2c
    move/from16 v13, v18

    .line 2212
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    .line 2213
    const-string v28, "HoverPopupWindow"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "computePopupPositionInternal: #2: mOverTopBoundary = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2218
    :cond_2d
    const-string v28, "HoverPopupWindow"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "computePopupPositionInternal #2-1: mOverTopBoundary = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto/16 :goto_5

    .line 2221
    :cond_2e
    add-int v28, v13, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_30

    .line 2223
    const/16 v28, 0x5050

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_2f

    .line 2224
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, p4

    if-lt v0, v1, :cond_7

    .line 2225
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    sub-int v13, v28, p4

    .line 2226
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v28, v0

    sub-int v13, v13, v28

    .line 2228
    const-string v28, "HoverPopupWindow"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3: misGravityBottomUnder = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    .line 2230
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    .line 2231
    const-string v28, "HoverPopupWindow"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "computePopupPositionInternal: #4 set misGravityBottomUnder = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2235
    :cond_2f
    const-string v28, "HoverPopupWindow"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "computePopupPositionInternal: #5 set misGravityBottomUnder = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    sub-int v13, v28, p4

    goto/16 :goto_5

    .line 2240
    :cond_30
    const/16 v28, 0x3030

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    .line 2241
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    .line 2242
    const-string v28, "HoverPopupWindow"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "computePopupPositionInternal: #6 set mOverTopBoundary = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2245
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v9    # "isSystemUiVisible":Z
    .end local v16    # "root":Landroid/view/View;
    .end local v18    # "statusBarHeight":I
    .end local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_31
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    .line 2251
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v16

    .line 2252
    .restart local v16    # "root":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    .line 2253
    .restart local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v9, 0x0

    .line 2255
    .restart local v9    # "isSystemUiVisible":Z
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v28, v0

    if-eqz v28, :cond_32

    move-object/from16 v25, v23

    .line 2256
    check-cast v25, Landroid/view/WindowManager$LayoutParams;

    .line 2257
    .restart local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v28, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v29, v0

    or-int v28, v28, v29

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x404

    move/from16 v28, v0

    if-nez v28, :cond_35

    const/4 v9, 0x1

    .line 2260
    .end local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_32
    :goto_12
    const/16 v18, 0x0

    .line 2261
    .restart local v18    # "statusBarHeight":I
    const/4 v15, 0x0

    .line 2262
    .local v15, "realStatusBarHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x1050017

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 2263
    if-eqz v9, :cond_33

    .line 2264
    move/from16 v15, v18

    .line 2267
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 2268
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v13

    move/from16 v0, v28

    move/from16 v1, v18

    if-ge v0, v1, :cond_3b

    .line 2270
    const/16 v28, 0x3030

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_3a

    .line 2271
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    sub-int v28, v28, v18

    move/from16 v0, v28

    move/from16 v1, p4

    if-lt v0, v1, :cond_36

    .line 2272
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    .line 2273
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    sub-int v28, v28, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    move/from16 v1, p4

    if-lt v0, v1, :cond_34

    .line 2274
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v28, v0

    add-int v13, v13, v28

    .line 2276
    :cond_34
    const-string v28, "HoverPopupWindow"

    const-string v29, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_5

    .line 2257
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v15    # "realStatusBarHeight":I
    .end local v18    # "statusBarHeight":I
    .restart local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_35
    const/4 v9, 0x0

    goto/16 :goto_12

    .line 2278
    .end local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v15    # "realStatusBarHeight":I
    .restart local v18    # "statusBarHeight":I
    :cond_36
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    sub-int v28, v28, v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_37

    .line 2279
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    .line 2281
    const-string v28, "HoverPopupWindow"

    const-string v29, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_5

    .line 2284
    :cond_37
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    add-int v28, v28, v29

    sub-int v28, v28, p4

    sub-int v28, v28, v15

    if-lez v28, :cond_38

    .line 2286
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_5

    .line 2287
    :cond_38
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    add-int v29, v29, v30

    sub-int v28, v28, v29

    sub-int v28, v28, p4

    if-lez v28, :cond_39

    .line 2289
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    .line 2290
    const-string v28, "HoverPopupWindow"

    const-string v29, "computePopupPositionInternal: Set mOverTopBoundary = true #1-2"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_5

    .line 2293
    :cond_39
    move/from16 v13, v18

    .line 2294
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    .line 2295
    const-string v28, "HoverPopupWindow"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "computePopupPositionInternal: #2: mOverTopBoundary = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2299
    :cond_3a
    const-string v28, "HoverPopupWindow"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "computePopupPositionInternal #2-1: mOverTopBoundary = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    move/from16 v0, v18

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto/16 :goto_5

    .line 2302
    :cond_3b
    add-int v28, v13, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_40

    .line 2303
    const/16 v28, 0x5050

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_3e

    .line 2304
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, p4

    if-lt v0, v1, :cond_3d

    .line 2305
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, v18

    if-ne v0, v1, :cond_3c

    add-int v28, v13, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_3c

    .line 2307
    const-string v28, "HoverPopupWindow"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3-1: misGravityBottomUnder = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2309
    :cond_3c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    sub-int v13, v28, p4

    .line 2310
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v28, v0

    sub-int v13, v13, v28

    .line 2312
    const-string v28, "HoverPopupWindow"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3-2: misGravityBottomUnder = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    .line 2314
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    .line 2315
    const-string v28, "HoverPopupWindow"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "computePopupPositionInternal: #4 set misGravityBottomUnder = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2319
    :cond_3d
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v13

    add-int v28, v28, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_7

    .line 2322
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    sub-int v13, v28, p4

    .line 2323
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    move/from16 v28, v0

    sub-int v13, v13, v28

    .line 2324
    const-string v28, "HoverPopupWindow"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3-2: misGravityBottomUnder = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    .line 2326
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    .line 2327
    const-string v28, "HoverPopupWindow"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "computePopupPositionInternal: #4 set misGravityBottomUnder = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2332
    :cond_3e
    const-string v28, "HoverPopupWindow"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "computePopupPositionInternal: #5 set misGravityBottomUnder = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-eq v0, v15, :cond_3f

    .line 2334
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    sub-int v28, v28, p4

    move/from16 v0, v28

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto/16 :goto_5

    .line 2336
    :cond_3f
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v28, v28, p4

    move/from16 v0, v28

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto/16 :goto_5

    .line 2340
    :cond_40
    const/16 v28, 0x3030

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_42

    .line 2341
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    .line 2342
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    .line 2343
    move/from16 v0, v18

    if-ge v13, v0, :cond_41

    .line 2344
    add-int v28, v13, p4

    add-int v28, v28, v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_41

    .line 2345
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    .line 2346
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    .line 2349
    :cond_41
    const-string v28, "HoverPopupWindow"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "computePopupPositionInternal: #6 set mOverTopBoundary = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2351
    :cond_42
    move/from16 v0, v18

    if-ge v13, v0, :cond_7

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 2352
    move/from16 v13, v18

    goto/16 :goto_5

    .line 1879
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_1
        0x5 -> :sswitch_5
        0x101 -> :sswitch_7
        0x103 -> :sswitch_2
        0x105 -> :sswitch_4
        0x201 -> :sswitch_8
        0x303 -> :sswitch_0
        0x505 -> :sswitch_6
    .end sparse-switch

    .line 1930
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_b
        0x30 -> :sswitch_a
        0x50 -> :sswitch_c
        0x3030 -> :sswitch_9
        0x5050 -> :sswitch_d
    .end sparse-switch
.end method

.method private dismissPopup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2904
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 2907
    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2908
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2909
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 2910
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 2911
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    .line 2914
    :cond_1
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 2917
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2918
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 2920
    :cond_2
    return-void
.end method

.method private getStateHashCode()I
    .locals 4

    .prologue
    .line 2971
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    .line 2972
    .local v0, "hashCode":I
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 2974
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    shl-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 2981
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 2982
    .local v1, "location":[I
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2983
    const/4 v2, 0x0

    aget v2, v1, v2

    shl-int/lit8 v2, v2, 0x14

    const/4 v3, 0x1

    aget v3, v1, v3

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 2986
    .end local v1    # "location":[I
    :cond_0
    return v0
.end method

.method private getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1044
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 1048
    :goto_0
    return-object v0

    .line 1045
    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1046
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1048
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initCoverManager()V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    .line 498
    const-string v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    .line 499
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    .line 500
    const-string v0, "HoverPopupWindow"

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_0
    return-void
.end method

.method private isViewCoverClose()Z
    .locals 5

    .prologue
    .line 762
    const/4 v2, 0x1

    .line 763
    .local v2, "isCoverOpen":Z
    const/4 v0, 0x0

    .line 765
    .local v0, "coverState":Lcom/samsung/android/cover/CoverState;
    :try_start_0
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-eqz v3, :cond_0

    .line 766
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    invoke-interface {v3}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 773
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 770
    :catch_0
    move-exception v1

    .line 771
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "HoverPopupWindow"

    const-string v4, "RemoteException in getCoverState: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 773
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private makeToolTipContentView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x7010001

    .line 1309
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1311
    .local v3, "text":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1313
    iput-object v7, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 1334
    :goto_0
    return-void

    .line 1316
    :cond_0
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v1, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 1317
    .local v1, "fontScale":F
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, v6, :cond_1

    iget v4, p0, Landroid/widget/HoverPopupWindow;->mFontScale:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_5

    .line 1318
    :cond_1
    iget v4, p0, Landroid/widget/HoverPopupWindow;->mFontScale:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_2

    .line 1319
    iput v1, p0, Landroid/widget/HoverPopupWindow;->mFontScale:F

    .line 1322
    :cond_2
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v4, :cond_3

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v5, "gt5note"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    iget v4, p0, Landroid/widget/HoverPopupWindow;->mUspLevel:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_6

    .line 1323
    :cond_4
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v0, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1324
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1328
    .end local v0    # "context":Landroid/content/Context;
    .local v2, "inflater":Landroid/view/LayoutInflater;
    :goto_1
    const v4, 0x1090089

    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 1329
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1330
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setId(I)V

    .line 1332
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_5
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1326
    :cond_6
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .restart local v2    # "inflater":Landroid/view/LayoutInflater;
    goto :goto_1
.end method

.method private playSoundAndHapticFeedback()V
    .locals 3

    .prologue
    .line 1055
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1056
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1057
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIBRATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1058
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    const v2, 0xc359

    invoke-virtual {v1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1060
    :cond_0
    return-void
.end method

.method private pointInValidHoverArea(FF)Z
    .locals 2
    .param p1, "localX"    # F
    .param p2, "localY"    # F

    .prologue
    .line 2952
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingLeft:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingRight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingTop:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingBottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetTimeout()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2990
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 2991
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2992
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2997
    :cond_0
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "gt5note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v1, "noble"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2998
    :cond_1
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3003
    :cond_2
    :goto_0
    return-void

    .line 3000
    :cond_3
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private setAnimator(II)V
    .locals 5
    .param p1, "movelength"    # I
    .param p2, "direction"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 520
    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_LEFT:I

    if-eq p2, v0, :cond_0

    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_RIGHT:I

    if-ne p2, v0, :cond_1

    .line 521
    :cond_0
    new-array v0, v1, [F

    aput v2, v0, v3

    int-to-float v1, p1

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    .line 528
    :goto_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/HoverPopupWindow$QuintEaseOut;

    invoke-direct {v1}, Landroid/widget/HoverPopupWindow$QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 529
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 530
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/HoverPopupWindow$3;

    invoke-direct {v1, p0}, Landroid/widget/HoverPopupWindow$3;-><init>(Landroid/widget/HoverPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 551
    return-void

    .line 522
    :cond_1
    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    if-eq p2, v0, :cond_2

    iget v0, p0, Landroid/widget/HoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    if-ne p2, v0, :cond_3

    .line 523
    :cond_2
    new-array v0, v1, [F

    int-to-float v1, p1

    aput v1, v0, v3

    aput v2, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 525
    :cond_3
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private setPopupContent()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1254
    iget v4, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    packed-switch v4, :pswitch_data_0

    .line 1285
    iput-object v6, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 1290
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    if-eqz v4, :cond_1

    .line 1291
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    iget-object v5, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-interface {v4, v5, p0}, Landroid/widget/HoverPopupWindow$HoverPopupListener;->onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z

    .line 1294
    :cond_1
    return-void

    .line 1256
    :pswitch_0
    iput-object v6, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    .line 1259
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->makeToolTipContentView()V

    goto :goto_0

    .line 1262
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->makeDefaultContentView()V

    goto :goto_0

    .line 1265
    :pswitch_3
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_0

    .line 1266
    iget v4, p0, Landroid/widget/HoverPopupWindow;->mContentResId:I

    if-eqz v4, :cond_0

    .line 1269
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v4, :cond_2

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v5, "gt5note"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    iget v4, p0, Landroid/widget/HoverPopupWindow;->mUspLevel:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_4

    .line 1270
    :cond_3
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v0, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1271
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1276
    .end local v0    # "context":Landroid/content/Context;
    .local v2, "inflater":Landroid/view/LayoutInflater;
    :goto_1
    :try_start_0
    iget v4, p0, Landroid/widget/HoverPopupWindow;->mContentResId:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1277
    .local v3, "v":Landroid/view/View;
    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1278
    .end local v3    # "v":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 1279
    .local v1, "ie":Landroid/view/InflateException;
    iput-object v6, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    .line 1273
    .end local v1    # "ie":Landroid/view/InflateException;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_4
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .restart local v2    # "inflater":Landroid/view/LayoutInflater;
    goto :goto_1

    .line 1254
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPopup()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1168
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHashCodeForViewState:I

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getStateHashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1172
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mUspLevel:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1173
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 1174
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->show()V

    .line 1201
    :goto_0
    return-void

    .line 1176
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    goto :goto_0

    .line 1179
    :cond_1
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getIsDetachedFromWindow()Z

    move-result v0

    if-ne v0, v3, :cond_2

    .line 1180
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    goto :goto_0

    .line 1183
    :cond_2
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v0, :cond_3

    .line 1184
    invoke-virtual {p0, v3}, Landroid/widget/HoverPopupWindow;->showPenPointEffect(Z)V

    .line 1187
    :cond_3
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsSkipPenPointEffect:Z

    .line 1189
    invoke-virtual {p0, v2}, Landroid/widget/HoverPopupWindow;->setFHGuideLineEnabled(Z)V

    .line 1191
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_4

    .line 1192
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1195
    :cond_4
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->createPopupWindow()Landroid/widget/PopupWindow;

    .line 1196
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->setPopupContent()V

    .line 1197
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->updateHoverPopup()V

    goto :goto_0
.end method

.method private updateHoverPopup(Landroid/view/View;III)V
    .locals 5
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I

    .prologue
    const/4 v4, 0x0

    .line 2393
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1

    .line 2448
    :cond_0
    :goto_0
    return-void

    .line 2399
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/HoverPopupWindow;->computePopupPosition(Landroid/view/View;III)V

    .line 2401
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    if-nez v0, :cond_2

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    if-eqz v0, :cond_0

    .line 2407
    :cond_2
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    if-eqz v0, :cond_3

    .line 2408
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 2425
    :goto_1
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2431
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2432
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    iget v4, p0, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 2409
    :cond_3
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v0, :cond_4

    .line 2410
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_1

    .line 2422
    :cond_4
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_1

    .line 2435
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_6

    .line 2438
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_0

    .line 2441
    :cond_6
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, p1, v4, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method


# virtual methods
.method protected computePopupPosition(Landroid/view/View;III)V
    .locals 54
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "offX"    # I
    .param p4, "offY"    # I

    .prologue
    .line 1346
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 1839
    :cond_0
    :goto_0
    return-void

    .line 1350
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 1351
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 1352
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 1353
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 1355
    if-eqz p1, :cond_16

    move-object/from16 v14, p1

    .line 1356
    .local v14, "anchorView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v27

    .line 1359
    .local v27, "displayMetrics":Landroid/util/DisplayMetrics;
    const/4 v13, 0x0

    .line 1360
    .local v13, "anchorRect":Landroid/graphics/Rect;
    const/4 v4, 0x2

    new-array v12, v4, [I

    .line 1361
    .local v12, "anchorLocOnScr":[I
    const/4 v4, 0x2

    new-array v11, v4, [I

    .line 1362
    .local v11, "anchorLocInWindow":[I
    invoke-virtual {v14, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1363
    invoke-virtual {v14, v11}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1364
    invoke-virtual {v14}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/RenderNode;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v14}, Landroid/view/View;->getRotation()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    invoke-virtual {v14}, Landroid/view/View;->getRotationX()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    invoke-virtual {v14}, Landroid/view/View;->getRotationY()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3

    .line 1366
    :cond_2
    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v34, v0

    .line 1367
    .local v34, "identityMatrixOffset":[F
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v34, v5

    aput v6, v34, v4

    .line 1368
    invoke-virtual {v14}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1370
    invoke-virtual {v14}, Landroid/view/View;->getRotation()F

    move-result v4

    float-to-int v4, v4

    const/16 v5, 0xb4

    if-ne v4, v5, :cond_17

    .line 1371
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v11, v5

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    aput v5, v11, v4

    .line 1372
    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, v11, v5

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    aput v5, v11, v4

    .line 1374
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v12, v5

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    aput v5, v12, v4

    .line 1375
    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, v12, v5

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    aput v5, v12, v4

    .line 1386
    .end local v34    # "identityMatrixOffset":[F
    :cond_3
    :goto_2
    new-instance v26, Landroid/graphics/Rect;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Rect;-><init>()V

    .line 1388
    .local v26, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/view/View;->getWindowVisibleContentFrame(Landroid/graphics/Rect;)V

    .line 1389
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isScaleWindow()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1390
    invoke-virtual {v14}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v42

    .line 1391
    .local v42, "root":Landroid/view/View;
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v51

    .line 1392
    .local v51, "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v51

    instance-of v4, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_4

    move-object/from16 v53, v51

    .line 1393
    check-cast v53, Landroid/view/WindowManager$LayoutParams;

    .line 1394
    .local v53, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v53

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x62

    if-eq v4, v5, :cond_4

    .line 1395
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getBaseActivityToken()Landroid/os/IBinder;

    move-result-object v15

    .line 1396
    .local v15, "atoken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "multiwindow_facade"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 1397
    .local v39, "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    move-object/from16 v0, v39

    invoke-virtual {v0, v15}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackPosition(Landroid/os/IBinder;)Landroid/graphics/Point;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    .line 1398
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    if-eqz v4, :cond_18

    .line 1399
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 1407
    .end local v15    # "atoken":Landroid/os/IBinder;
    .end local v39    # "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .end local v42    # "root":Landroid/view/View;
    .end local v51    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v53    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v43

    .line 1408
    .local v43, "rootview":Landroid/view/View;
    const/16 v36, 0x0

    .line 1409
    .local v36, "isRootViewFullScreen":Z
    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getWidth()I

    move-result v45

    .line 1410
    .local v45, "rootviewWidth":I
    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getHeight()I

    move-result v44

    .line 1412
    .local v44, "rootviewHeight":I
    move-object/from16 v0, v27

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v0, v45

    if-ne v0, v4, :cond_5

    move-object/from16 v0, v27

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v0, v44

    if-ne v0, v4, :cond_5

    .line 1414
    const/16 v36, 0x1

    .line 1418
    :cond_5
    invoke-virtual {v14}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_19

    .line 1422
    const/4 v4, 0x0

    aget v4, v12, v4

    const/4 v5, 0x0

    aget v5, v11, v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    .line 1423
    const/4 v4, 0x1

    aget v4, v12, v4

    const/4 v5, 0x1

    aget v5, v11, v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    .line 1424
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    .line 1426
    new-instance v13, Landroid/graphics/Rect;

    .end local v13    # "anchorRect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    aget v4, v11, v4

    const/4 v5, 0x1

    aget v5, v11, v5

    const/4 v6, 0x0

    aget v6, v11, v6

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x1

    aget v7, v11, v7

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v13, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1454
    .restart local v13    # "anchorRect":Landroid/graphics/Rect;
    :cond_6
    :goto_4
    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_8

    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_8

    .line 1455
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v42

    .line 1456
    .restart local v42    # "root":Landroid/view/View;
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v51

    .line 1458
    .restart local v51    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v51

    instance-of v4, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_8

    move-object/from16 v53, v51

    .line 1459
    check-cast v53, Landroid/view/WindowManager$LayoutParams;

    .line 1460
    .restart local v53    # "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v53

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move-object/from16 v0, v53

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v4, v5

    and-int/lit16 v4, v4, 0x404

    if-nez v4, :cond_1a

    const/16 v37, 0x1

    .line 1462
    .local v37, "isSystemUiVisible":Z
    :goto_5
    const/16 v49, 0x0

    .line 1464
    .local v49, "statusBarHeight":I
    move-object/from16 v0, v53

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x200

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    if-eqz v37, :cond_7

    .line 1466
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v49

    .line 1469
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, v26

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 1470
    move/from16 v0, v49

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1471
    move-object/from16 v0, v27

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v26

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 1472
    move-object/from16 v0, v27

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v26

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 1478
    .end local v37    # "isSystemUiVisible":Z
    .end local v42    # "root":Landroid/view/View;
    .end local v49    # "statusBarHeight":I
    .end local v51    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v53    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mDisplayFrameLeft:I

    .line 1479
    const/4 v4, 0x0

    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mDisplayFrameRight:I

    .line 1480
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mDisplayFrameRight:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mDisplayFrameLeft:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    .line 1494
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    if-nez v4, :cond_1b

    .line 1495
    move-object/from16 v0, v27

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v52

    .line 1497
    .local v52, "widthMeasureSpec":I
    move-object/from16 v0, v27

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v31

    .line 1517
    .local v31, "heightMeasureSpec":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    move/from16 v0, v52

    move/from16 v1, v31

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1518
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 1519
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    .line 1520
    .local v25, "contentWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    .line 1522
    .local v23, "contentHeight":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1523
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1526
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v25

    move/from16 v3, v23

    invoke-direct {v0, v13, v1, v2, v3}, Landroid/widget/HoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 1528
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v13, Landroid/graphics/Rect;->left:I

    iget v6, v13, Landroid/graphics/Rect;->top:I

    iget v7, v13, Landroid/graphics/Rect;->right:I

    iget v8, v13, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    .line 1533
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    move/from16 v40, v0

    .line 1534
    .local v40, "posX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    move/from16 v41, v0

    .line 1535
    .local v41, "posY":I
    const/16 v16, 0x0

    .line 1543
    .local v16, "canDraw":Z
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1e

    .line 1544
    add-int v4, v41, v23

    iget v5, v13, Landroid/graphics/Rect;->top:I

    if-le v4, v5, :cond_9

    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v41

    if-ge v0, v4, :cond_9

    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int v4, v4, v41

    iget v5, v13, Landroid/graphics/Rect;->bottom:I

    if-lt v4, v5, :cond_a

    .line 1546
    :cond_9
    const/16 v16, 0x1

    .line 1554
    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-eqz v4, :cond_37

    :cond_b
    if-eqz v16, :cond_37

    .line 1555
    const/16 v35, 0x1

    .line 1557
    .local v35, "isPopupAboveHorizontal":Z
    const/high16 v4, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v38

    .line 1560
    .local v38, "marginForHoverRing":I
    const/16 v17, 0x0

    .line 1561
    .local v17, "containerLeftOnWindow":I
    const/16 v22, 0x0

    .line 1562
    .local v22, "containerRightOnWindow":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_20

    .line 1563
    iget v4, v13, Landroid/graphics/Rect;->left:I

    move/from16 v0, v40

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1565
    add-int v4, v40, v25

    iget v5, v13, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v27

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 1578
    :cond_c
    :goto_8
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mContainerLeftOnWindow:I

    .line 1581
    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    move/from16 v0, v41

    if-le v0, v4, :cond_21

    .line 1582
    const/16 v35, 0x0

    .line 1588
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-nez v4, :cond_d

    .line 1589
    new-instance v4, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;-><init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    .line 1590
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setBackgroundColor(I)V

    .line 1591
    const-string v4, "HoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: kdhpoint2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mGuideRingDrawableId:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineColor:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(II)V

    .line 1596
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v4, :cond_f

    .line 1597
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    if-nez v4, :cond_e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    if-eqz v4, :cond_22

    .line 1598
    :cond_e
    const-string v4, "HoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: Call setOverTopForCotainer(true)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setOverTopForCotainer(Z)V

    .line 1607
    :cond_f
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    .line 1608
    .local v24, "contentLP":Landroid/view/ViewGroup$LayoutParams;
    if-nez v24, :cond_23

    .line 1609
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, v25

    move/from16 v1, v23

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1617
    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 1619
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->removeAllViews()V

    .line 1622
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildCount()I

    move-result v4

    if-nez v4, :cond_11

    .line 1623
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->addView(Landroid/view/View;)V

    .line 1626
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1627
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1630
    sub-int v4, v17, v40

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v19

    .line 1631
    .local v19, "containerPaddingLeft":I
    add-int v4, v40, v25

    sub-int v4, v22, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v20

    .line 1632
    .local v20, "containerPaddingRight":I
    const/16 v21, 0x0

    .line 1633
    .local v21, "containerPaddingTop":I
    const/16 v18, 0x0

    .line 1634
    .local v18, "containerPaddingBottom":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-eqz v4, :cond_25

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-eqz v4, :cond_25

    .line 1635
    if-eqz v35, :cond_24

    .line 1636
    move/from16 v18, v38

    .line 1637
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v4, v0, v5, v1, v2}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPadding(IIII)V

    .line 1667
    :goto_c
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2b

    .line 1668
    if-eqz v35, :cond_12

    .line 1669
    move/from16 v40, v17

    .line 1685
    :cond_12
    :goto_d
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    sub-int v4, v4, v40

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    sub-int v32, v4, v5

    .line 1686
    .local v32, "hoverPointXonContainer":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    sub-int v4, v4, v41

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    sub-int v33, v4, v5

    .line 1697
    .local v33, "hoverPointYonContainer":I
    if-eqz v35, :cond_31

    .line 1700
    invoke-virtual {v14}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v50

    .line 1701
    .local v50, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v50, :cond_14

    .line 1702
    invoke-virtual/range {v50 .. v50}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v46

    .line 1703
    .local v46, "scaleFactor":Landroid/graphics/PointF;
    new-instance v30, Landroid/graphics/PointF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v30

    invoke-direct {v0, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1704
    .local v30, "fPos":Landroid/graphics/PointF;
    move-object/from16 v0, v46

    iget v4, v0, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_13

    move-object/from16 v0, v46

    iget v4, v0, Landroid/graphics/PointF;->y:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2f

    .line 1705
    :cond_13
    invoke-virtual {v14}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_2d

    .line 1706
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    int-to-float v4, v4

    move/from16 v0, v40

    int-to-float v5, v0

    move-object/from16 v0, v46

    iget v6, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v46

    iget v5, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v5

    move-object/from16 v0, v30

    iput v4, v0, Landroid/graphics/PointF;->x:F

    .line 1707
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    int-to-float v4, v4

    move/from16 v0, v41

    int-to-float v5, v0

    move-object/from16 v0, v46

    iget v6, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v46

    iget v5, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v5

    move-object/from16 v0, v30

    iput v4, v0, Landroid/graphics/PointF;->y:F

    .line 1713
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2e

    .line 1714
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v25, 0x2

    add-int v5, v5, v19

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v6, v23, v6

    move-object/from16 v0, v30

    iget v7, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    move-object/from16 v0, v30

    iget v8, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    .line 1737
    .end local v30    # "fPos":Landroid/graphics/PointF;
    .end local v46    # "scaleFactor":Landroid/graphics/PointF;
    :cond_14
    :goto_f
    div-int/lit8 v4, v25, 0x2

    add-int v47, v19, v4

    .line 1738
    .local v47, "startx":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v48, v23, v4

    .line 1739
    .local v48, "starty":I
    move/from16 v28, v32

    .line 1740
    .local v28, "endx":I
    move/from16 v29, v33

    .line 1742
    .local v29, "endy":I
    add-int/lit8 v4, v19, 0xa

    move/from16 v0, v28

    if-ge v0, v4, :cond_15

    .line 1814
    .end local v17    # "containerLeftOnWindow":I
    .end local v18    # "containerPaddingBottom":I
    .end local v19    # "containerPaddingLeft":I
    .end local v20    # "containerPaddingRight":I
    .end local v21    # "containerPaddingTop":I
    .end local v22    # "containerRightOnWindow":I
    .end local v24    # "contentLP":Landroid/view/ViewGroup$LayoutParams;
    .end local v28    # "endx":I
    .end local v29    # "endy":I
    .end local v32    # "hoverPointXonContainer":I
    .end local v33    # "hoverPointYonContainer":I
    .end local v35    # "isPopupAboveHorizontal":Z
    .end local v38    # "marginForHoverRing":I
    .end local v47    # "startx":I
    .end local v48    # "starty":I
    .end local v50    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_15
    :goto_10
    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    .line 1815
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    .line 1831
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1833
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    if-nez v4, :cond_0

    .line 1834
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v4, :cond_0

    .line 1835
    const-string v4, "HoverPopupWindow"

    const-string v5, "HoverPopupWindow.computePopupPosition() : Call setFHmoveAnimationOffset(0)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setFHmoveAnimationOffset(I)V

    goto/16 :goto_0

    .line 1355
    .end local v11    # "anchorLocInWindow":[I
    .end local v12    # "anchorLocOnScr":[I
    .end local v13    # "anchorRect":Landroid/graphics/Rect;
    .end local v14    # "anchorView":Landroid/view/View;
    .end local v16    # "canDraw":Z
    .end local v23    # "contentHeight":I
    .end local v25    # "contentWidth":I
    .end local v26    # "displayFrame":Landroid/graphics/Rect;
    .end local v27    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v31    # "heightMeasureSpec":I
    .end local v36    # "isRootViewFullScreen":Z
    .end local v40    # "posX":I
    .end local v41    # "posY":I
    .end local v43    # "rootview":Landroid/view/View;
    .end local v44    # "rootviewHeight":I
    .end local v45    # "rootviewWidth":I
    .end local v52    # "widthMeasureSpec":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto/16 :goto_1

    .line 1377
    .restart local v11    # "anchorLocInWindow":[I
    .restart local v12    # "anchorLocOnScr":[I
    .restart local v13    # "anchorRect":Landroid/graphics/Rect;
    .restart local v14    # "anchorView":Landroid/view/View;
    .restart local v27    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v34    # "identityMatrixOffset":[F
    :cond_17
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v11, v5

    const/4 v6, 0x0

    aget v6, v34, v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    aput v5, v11, v4

    .line 1378
    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, v11, v5

    const/4 v6, 0x1

    aget v6, v34, v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    aput v5, v11, v4

    .line 1380
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v12, v5

    const/4 v6, 0x0

    aget v6, v34, v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    aput v5, v12, v4

    .line 1381
    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, v12, v5

    const/4 v6, 0x1

    aget v6, v34, v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    aput v5, v12, v4

    goto/16 :goto_2

    .line 1401
    .end local v34    # "identityMatrixOffset":[F
    .restart local v15    # "atoken":Landroid/os/IBinder;
    .restart local v26    # "displayFrame":Landroid/graphics/Rect;
    .restart local v39    # "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .restart local v42    # "root":Landroid/view/View;
    .restart local v51    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v53    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_18
    const-string v4, "HoverPopupWindow"

    const-string v5, "HoverPopupWindow: computePopupPosition : mPenWindowStartPos == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1432
    .end local v15    # "atoken":Landroid/os/IBinder;
    .end local v39    # "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .end local v42    # "root":Landroid/view/View;
    .end local v51    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v53    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .restart local v36    # "isRootViewFullScreen":Z
    .restart local v43    # "rootview":Landroid/view/View;
    .restart local v44    # "rootviewHeight":I
    .restart local v45    # "rootviewWidth":I
    :cond_19
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    .line 1433
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    .line 1434
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    .line 1436
    new-instance v13, Landroid/graphics/Rect;

    .end local v13    # "anchorRect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    aget v4, v12, v4

    const/4 v5, 0x1

    aget v5, v12, v5

    const/4 v6, 0x0

    aget v6, v12, v6

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x1

    aget v7, v12, v7

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v13, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1444
    .restart local v13    # "anchorRect":Landroid/graphics/Rect;
    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_6

    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_6

    .line 1445
    const/4 v4, 0x0

    move-object/from16 v0, v26

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 1446
    move-object/from16 v0, v27

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v26

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 1447
    const/4 v4, 0x0

    move-object/from16 v0, v26

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 1448
    move-object/from16 v0, v27

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v26

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 1460
    .restart local v42    # "root":Landroid/view/View;
    .restart local v51    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v53    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_1a
    const/16 v37, 0x0

    goto/16 :goto_5

    .line 1500
    .end local v42    # "root":Landroid/view/View;
    .end local v51    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v53    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v4, :cond_1c

    .line 1501
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v52

    .line 1508
    .restart local v52    # "widthMeasureSpec":I
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_1d

    .line 1509
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v31

    .restart local v31    # "heightMeasureSpec":I
    goto/16 :goto_6

    .line 1504
    .end local v31    # "heightMeasureSpec":I
    .end local v52    # "widthMeasureSpec":I
    :cond_1c
    move-object/from16 v0, v27

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v52

    .restart local v52    # "widthMeasureSpec":I
    goto :goto_11

    .line 1512
    :cond_1d
    move-object/from16 v0, v27

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v31

    .restart local v31    # "heightMeasureSpec":I
    goto/16 :goto_6

    .line 1548
    .restart local v16    # "canDraw":Z
    .restart local v23    # "contentHeight":I
    .restart local v25    # "contentWidth":I
    .restart local v40    # "posX":I
    .restart local v41    # "posY":I
    :cond_1e
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    .line 1549
    add-int v4, v41, v23

    iget v5, v13, Landroid/graphics/Rect;->top:I

    if-le v4, v5, :cond_1f

    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v41

    if-lt v0, v4, :cond_a

    .line 1550
    :cond_1f
    const/16 v16, 0x1

    goto/16 :goto_7

    .line 1568
    .restart local v17    # "containerLeftOnWindow":I
    .restart local v22    # "containerRightOnWindow":I
    .restart local v35    # "isPopupAboveHorizontal":Z
    .restart local v38    # "marginForHoverRing":I
    :cond_20
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    .line 1569
    iget v4, v13, Landroid/graphics/Rect;->left:I

    move/from16 v0, v40

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1571
    add-int v4, v40, v25

    iget v5, v13, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v26

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 1574
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mFullTextPopupRightLimit:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_c

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mFullTextPopupRightLimit:I

    move/from16 v0, v22

    if-le v0, v4, :cond_c

    .line 1575
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mFullTextPopupRightLimit:I

    move/from16 v22, v0

    goto/16 :goto_8

    .line 1584
    :cond_21
    const/16 v35, 0x1

    goto/16 :goto_9

    .line 1601
    :cond_22
    const-string v4, "HoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: Call setOverTopForCotainer(false)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setOverTopForCotainer(Z)V

    goto/16 :goto_a

    .line 1612
    .restart local v24    # "contentLP":Landroid/view/ViewGroup$LayoutParams;
    :cond_23
    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1613
    move/from16 v0, v23

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_b

    .line 1640
    .restart local v18    # "containerPaddingBottom":I
    .restart local v19    # "containerPaddingLeft":I
    .restart local v20    # "containerPaddingRight":I
    .restart local v21    # "containerPaddingTop":I
    :cond_24
    move/from16 v21, v38

    .line 1641
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPadding(IIII)V

    goto/16 :goto_c

    .line 1645
    :cond_25
    if-eqz v35, :cond_28

    .line 1646
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_27

    .line 1647
    move/from16 v18, v38

    .line 1652
    :cond_26
    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v4, v0, v5, v1, v2}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPadding(IIII)V

    goto/16 :goto_c

    .line 1648
    :cond_27
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_26

    .line 1649
    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    add-int v4, v4, v38

    add-int v5, v41, v23

    sub-int v18, v4, v5

    goto :goto_12

    .line 1655
    :cond_28
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2a

    .line 1656
    move/from16 v21, v38

    .line 1660
    :cond_29
    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPadding(IIII)V

    goto/16 :goto_c

    .line 1657
    :cond_2a
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_29

    .line 1658
    iget v4, v13, Landroid/graphics/Rect;->top:I

    sub-int v4, v4, v38

    sub-int v21, v41, v4

    goto :goto_13

    .line 1675
    :cond_2b
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_12

    .line 1676
    if-eqz v35, :cond_2c

    .line 1677
    move/from16 v40, v17

    .line 1678
    goto/16 :goto_d

    .line 1680
    :cond_2c
    move/from16 v40, v17

    .line 1681
    sub-int v41, v41, v21

    goto/16 :goto_d

    .line 1709
    .restart local v30    # "fPos":Landroid/graphics/PointF;
    .restart local v32    # "hoverPointXonContainer":I
    .restart local v33    # "hoverPointYonContainer":I
    .restart local v46    # "scaleFactor":Landroid/graphics/PointF;
    .restart local v50    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_2d
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    int-to-float v4, v4

    move/from16 v0, v40

    int-to-float v5, v0

    move-object/from16 v0, v46

    iget v6, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v46

    iget v5, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v5

    move-object/from16 v0, v30

    iput v4, v0, Landroid/graphics/PointF;->x:F

    .line 1710
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    int-to-float v4, v4

    move/from16 v0, v41

    int-to-float v5, v0

    move-object/from16 v0, v46

    iget v6, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v46

    iget v5, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v5

    move-object/from16 v0, v30

    iput v4, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_e

    .line 1717
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    .line 1718
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v25, 0x2

    add-int v5, v5, v19

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v6, v23, v6

    move-object/from16 v0, v30

    iget v7, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    move-object/from16 v0, v30

    iget v8, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_f

    .line 1724
    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_30

    .line 1725
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v25, 0x2

    add-int v5, v5, v19

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v6, v23, v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    move/from16 v7, v32

    move/from16 v8, v33

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_f

    .line 1729
    :cond_30
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    .line 1730
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v25, 0x2

    add-int v5, v5, v19

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v6, v23, v6

    const/4 v9, 0x1

    const/4 v10, 0x0

    move/from16 v7, v32

    move/from16 v8, v33

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_f

    .line 1753
    .end local v30    # "fPos":Landroid/graphics/PointF;
    .end local v46    # "scaleFactor":Landroid/graphics/PointF;
    .end local v50    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_31
    invoke-virtual {v14}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v50

    .line 1754
    .restart local v50    # "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v50, :cond_15

    .line 1755
    invoke-virtual/range {v50 .. v50}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v46

    .line 1756
    .restart local v46    # "scaleFactor":Landroid/graphics/PointF;
    new-instance v30, Landroid/graphics/PointF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v30

    invoke-direct {v0, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1757
    .restart local v30    # "fPos":Landroid/graphics/PointF;
    move-object/from16 v0, v46

    iget v4, v0, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_32

    move-object/from16 v0, v46

    iget v4, v0, Landroid/graphics/PointF;->y:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_35

    .line 1758
    :cond_32
    invoke-virtual {v14}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_33

    .line 1759
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    int-to-float v4, v4

    move/from16 v0, v40

    int-to-float v5, v0

    move-object/from16 v0, v46

    iget v6, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v46

    iget v5, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v5

    move-object/from16 v0, v30

    iput v4, v0, Landroid/graphics/PointF;->x:F

    .line 1760
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    int-to-float v4, v4

    move/from16 v0, v41

    int-to-float v5, v0

    move-object/from16 v0, v46

    iget v6, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v46

    iget v5, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v5

    move-object/from16 v0, v30

    iput v4, v0, Landroid/graphics/PointF;->y:F

    .line 1766
    :goto_14
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_34

    .line 1767
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v25, 0x2

    add-int v5, v5, v19

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    add-int v6, v6, v21

    move-object/from16 v0, v30

    iget v7, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    move-object/from16 v0, v30

    iget v8, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_10

    .line 1762
    :cond_33
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    int-to-float v4, v4

    move/from16 v0, v40

    int-to-float v5, v0

    move-object/from16 v0, v46

    iget v6, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v46

    iget v5, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v5

    move-object/from16 v0, v30

    iput v4, v0, Landroid/graphics/PointF;->x:F

    .line 1763
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    int-to-float v4, v4

    move/from16 v0, v41

    int-to-float v5, v0

    move-object/from16 v0, v46

    iget v6, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v46

    iget v5, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v5

    move-object/from16 v0, v30

    iput v4, v0, Landroid/graphics/PointF;->y:F

    goto :goto_14

    .line 1769
    :cond_34
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_15

    .line 1770
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v25, 0x2

    add-int v5, v5, v19

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    add-int v6, v6, v21

    move-object/from16 v0, v30

    iget v7, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    move-object/from16 v0, v30

    iget v8, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_10

    .line 1774
    :cond_35
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_36

    .line 1775
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v25, 0x2

    add-int v5, v5, v19

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    add-int v6, v6, v21

    const/4 v9, 0x0

    const/4 v10, 0x1

    move/from16 v7, v32

    move/from16 v8, v33

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_10

    .line 1778
    :cond_36
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_15

    .line 1779
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v25, 0x2

    add-int v5, v5, v19

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    add-int v6, v6, v21

    const/4 v9, 0x1

    const/4 v10, 0x0

    move/from16 v7, v32

    move/from16 v8, v33

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_10

    .line 1789
    .end local v17    # "containerLeftOnWindow":I
    .end local v18    # "containerPaddingBottom":I
    .end local v19    # "containerPaddingLeft":I
    .end local v20    # "containerPaddingRight":I
    .end local v21    # "containerPaddingTop":I
    .end local v22    # "containerRightOnWindow":I
    .end local v24    # "contentLP":Landroid/view/ViewGroup$LayoutParams;
    .end local v30    # "fPos":Landroid/graphics/PointF;
    .end local v32    # "hoverPointXonContainer":I
    .end local v33    # "hoverPointYonContainer":I
    .end local v35    # "isPopupAboveHorizontal":Z
    .end local v38    # "marginForHoverRing":I
    .end local v46    # "scaleFactor":Landroid/graphics/PointF;
    .end local v50    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_37
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v4, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-nez v4, :cond_3b

    .line 1790
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    if-nez v4, :cond_38

    .line 1791
    new-instance v4, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;-><init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    .line 1793
    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->getChildCount()I

    move-result v4

    if-nez v4, :cond_3a

    .line 1794
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->addView(Landroid/view/View;)V

    .line 1802
    :cond_39
    :goto_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mToolType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_15

    .line 1803
    const-string v4, "HoverPopupWindow"

    const-string v5, "computePopupPosition: Call resetTimeout()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->resetTimeout()V

    goto/16 :goto_10

    .line 1795
    :cond_3a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 1796
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->removeAllViews()V

    .line 1797
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->addView(Landroid/view/View;)V

    goto :goto_15

    .line 1807
    :cond_3b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v4, :cond_15

    .line 1809
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->removeAllViews()V

    .line 1810
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    goto/16 :goto_10
.end method

.method protected convertDPtoPX(FLandroid/util/DisplayMetrics;)I
    .locals 2
    .param p1, "dp"    # F
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 2964
    if-nez p2, :cond_0

    .line 2965
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 2967
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected createPopupWindow()Landroid/widget/PopupWindow;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x2

    .line 1211
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v4, :cond_2

    .line 1212
    new-instance v4, Landroid/widget/PopupWindow;

    iget-object v5, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1213
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1214
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1215
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v5, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1216
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1217
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1218
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/16 v5, 0x3ed

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 1221
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 1223
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 1224
    .local v1, "root":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1225
    .local v2, "vlp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v2, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 1226
    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    .line 1227
    .local v3, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3ef

    if-ne v4, v5, :cond_0

    .line 1228
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setIgnoreMultiWindowLayout(Z)V

    .line 1231
    .end local v3    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eq v4, v5, :cond_1

    .line 1232
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isScaleWindow()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1233
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 1239
    :cond_1
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v5, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1241
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "root":Landroid/view/View;
    .end local v2    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v4

    .line 1221
    :cond_3
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2886
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v0, :cond_0

    .line 2887
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HoverPopupWindow;->showPenPointEffect(Z)V

    .line 2890
    :cond_0
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->dismissPopup()V

    .line 2892
    iput-object v1, p0, Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    .line 2893
    iput-object v1, p0, Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    .line 2894
    iput-object v1, p0, Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    .line 2895
    iput-object v1, p0, Landroid/widget/HoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    .line 2896
    return-void
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 821
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    return v0
.end method

.method public getFHAnimationEnabled()Z
    .locals 1

    .prologue
    .line 2635
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    return v0
.end method

.method public getFHGuideLineEnabled()Z
    .locals 1

    .prologue
    .line 2626
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    return v0
.end method

.method public getInfoPickerMoveEabled()Z
    .locals 1

    .prologue
    .line 2644
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    return v0
.end method

.method public getIsDismissTouchableHPWOnActionUp()Z
    .locals 1

    .prologue
    .line 795
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return v0
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method protected getPriorityContentText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1029
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1030
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 1034
    :goto_0
    return-object v0

    .line 1031
    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1032
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1034
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getUspLevel()I
    .locals 1

    .prologue
    .line 611
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mUspLevel:I

    return v0
.end method

.method protected initInstance()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 432
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 433
    iput-boolean v4, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    .line 434
    const/16 v1, 0x12c

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    .line 436
    const/16 v1, 0x3231

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 437
    iput v3, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    .line 438
    iput v3, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    .line 439
    iput v3, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    .line 440
    iput v3, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    .line 441
    iput v3, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 442
    iput v3, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 443
    iput v3, p0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    .line 444
    iput v3, p0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    .line 445
    iput v3, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingLeft:I

    .line 446
    iput v3, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingRight:I

    .line 447
    iput v3, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingTop:I

    .line 448
    iput v3, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingBottom:I

    .line 450
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    .line 451
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 452
    const v1, 0x10304fb

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    .line 454
    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    .line 456
    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    .line 458
    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->misDialer:Z

    .line 459
    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsProgressBar:Z

    .line 461
    iput-boolean v4, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    .line 462
    iput-boolean v4, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    .line 463
    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabledByApp:Z

    .line 464
    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabledByApp:Z

    .line 465
    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabledByApp:Z

    .line 466
    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z

    .line 467
    iput-boolean v4, p0, Landroid/widget/HoverPopupWindow;->mIsFHSoundAndHapticEnabled:Z

    .line 468
    iput v3, p0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    .line 469
    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    .line 470
    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    .line 472
    iput v3, p0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    .line 473
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 474
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    .line 475
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    .line 476
    iput-object v2, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 477
    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsSPenPointChanged:Z

    .line 478
    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    .line 479
    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 480
    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mShowPopupAlways:Z

    .line 481
    iput-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsSkipPenPointEffect:Z

    .line 483
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 484
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x193

    const v2, 0x10803cc

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mGuideRingDrawableId:I

    .line 485
    const/16 v1, 0x192

    const v2, -0x866e57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mGuideLineColor:I

    .line 486
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 487
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mFullTextPopupRightLimit:I

    .line 488
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Landroid/widget/HoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    .line 489
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 490
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    iput v3, v1, Landroid/graphics/Point;->y:I

    .line 491
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mFontScale:F

    .line 492
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.spen_usp"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/widget/HoverPopupWindow;->mUspLevel:I

    .line 493
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->initCoverManager()V

    .line 494
    return-void
.end method

.method public isDialer()Z
    .locals 1

    .prologue
    .line 579
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->misDialer:Z

    return v0
.end method

.method protected isFingerHoveringSettingsEnabled(I)Z
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, -0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 696
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v0, v2

    .line 698
    .local v0, "isFingerHoveringOn":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 699
    if-eq p1, v2, :cond_0

    .line 701
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_information_preview"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 703
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_pregress_bar_preview"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isProgressBar()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 729
    :cond_0
    :goto_1
    return v1

    .end local v0    # "isFingerHoveringOn":Z
    :cond_1
    move v0, v1

    .line 696
    goto :goto_0

    .line 708
    .restart local v0    # "isFingerHoveringOn":Z
    :cond_2
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_speed_dial_tip"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_3

    move v1, v2

    .line 710
    goto :goto_1

    .line 712
    :cond_3
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isDialer()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 713
    goto :goto_1

    .line 718
    :cond_4
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_speed_dial_tip"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_5

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isDialer()Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    .line 720
    goto :goto_1

    .line 722
    :cond_5
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_pregress_bar_preview"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isProgressBar()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 724
    goto :goto_1
.end method

.method public isHoverPopupPossible()Z
    .locals 3

    .prologue
    .line 559
    const/4 v0, 0x1

    .line 561
    .local v0, "ret":Z
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    if-nez v1, :cond_1

    .line 562
    const/4 v0, 0x0

    .line 572
    :cond_0
    :goto_0
    return v0

    .line 563
    :cond_1
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 564
    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 567
    :cond_3
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 568
    const/4 v0, 0x0

    goto :goto_0

    .line 569
    :cond_4
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 570
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isHoveringSettingEnabled(I)Z
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 620
    const/4 v0, 0x0

    .line 626
    .local v0, "ret":Z
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 627
    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->isSPenHoveringSettingsEnabled(I)Z

    move-result v0

    .line 633
    :cond_0
    :goto_0
    return v0

    .line 629
    :cond_1
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 630
    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->isFingerHoveringSettingsEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isLockScreenMode()Z
    .locals 4

    .prologue
    .line 754
    iget-object v2, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 755
    .local v1, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v0, 0x0

    .line 756
    .local v0, "isLockState":Z
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 757
    return v0
.end method

.method protected isMouseHoveringSettingsEnabled(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 736
    const/4 v0, 0x0

    return v0
.end method

.method public isProgressBar()Z
    .locals 1

    .prologue
    .line 595
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsProgressBar:Z

    return v0
.end method

.method protected isSPenHoveringSettingsEnabled(I)Z
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, -0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 651
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 652
    .local v0, "isSPenHoveringOn":Z
    :goto_0
    if-eqz v0, :cond_8

    .line 653
    if-ne p1, v1, :cond_2

    .line 654
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering_icon_label"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_8

    .line 689
    :cond_0
    :goto_1
    return v1

    .end local v0    # "isSPenHoveringOn":Z
    :cond_1
    move v0, v2

    .line 651
    goto :goto_0

    .line 656
    .restart local v0    # "isSPenHoveringOn":Z
    :cond_2
    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    const/4 v3, 0x2

    if-ne p1, v3, :cond_8

    .line 657
    :cond_3
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering_information_preview"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_5

    .line 660
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isUseOldAirviewSettingsMenu()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 663
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering_speed_dial_preview"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isDialer()Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 665
    goto :goto_1

    .line 667
    :cond_4
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering_progress_preview"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isProgressBar()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 669
    goto :goto_1

    .line 675
    :cond_5
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isUseOldAirviewSettingsMenu()Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 676
    goto :goto_1

    .line 678
    :cond_6
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering_speed_dial_preview"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_7

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isDialer()Z

    move-result v3

    if-nez v3, :cond_0

    .line 682
    :cond_7
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering_progress_preview"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_8

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isProgressBar()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_8
    move v1, v2

    .line 689
    goto :goto_1
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 917
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUseOldAirviewSettingsMenu()Z
    .locals 3

    .prologue
    .line 640
    const/4 v0, 0x0

    .line 641
    .local v0, "ret":Z
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "hlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "h3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "ha3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "true"

    sget-object v2, Landroid/widget/HoverPopupWindow;->AIRCOMMAND_MORPH_USP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 642
    :cond_1
    const/4 v0, 0x1

    .line 644
    :cond_2
    return v0
.end method

.method protected makeDefaultContentView()V
    .locals 0

    .prologue
    .line 1302
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->makeToolTipContentView()V

    .line 1303
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2654
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 2655
    .local v4, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    .line 2656
    .local v21, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    .line 2661
    .local v22, "y":F
    const/16 v23, 0x9

    move/from16 v0, v23

    if-ne v4, v0, :cond_3

    .line 2663
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v26

    sub-long v18, v24, v26

    .line 2664
    .local v18, "timeDealy":J
    const-wide/16 v24, 0x3e8

    cmp-long v23, v18, v24

    if-lez v23, :cond_0

    .line 2666
    const/16 v23, 0x1

    .line 2864
    .end local v18    # "timeDealy":J
    :goto_0
    return v23

    .line 2670
    .restart local v18    # "timeDealy":J
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 2671
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v12

    .line 2673
    .local v12, "isPointInValidHoverArea":Z
    if-eqz v12, :cond_2

    .line 2674
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 2864
    .end local v12    # "isPointInValidHoverArea":Z
    .end local v18    # "timeDealy":J
    :cond_1
    :goto_1
    const/16 v23, 0x0

    goto :goto_0

    .line 2676
    .restart local v12    # "isPointInValidHoverArea":Z
    .restart local v18    # "timeDealy":J
    :cond_2
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    goto :goto_1

    .line 2679
    .end local v12    # "isPointInValidHoverArea":Z
    .end local v18    # "timeDealy":J
    :cond_3
    const/16 v23, 0x7

    move/from16 v0, v23

    if-ne v4, v0, :cond_16

    .line 2680
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v23

    move/from16 v0, v23

    float-to-int v15, v0

    .line 2681
    .local v15, "rawX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2684
    .local v16, "rawY":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mUspLevel:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_4

    .line 2685
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v23

    move/from16 v0, v23

    float-to-int v15, v0

    .line 2686
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2691
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/widget/HoverPopupWindow;->setHoveringPoint(II)V

    .line 2693
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_7

    .line 2694
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v12

    .line 2696
    .restart local v12    # "isPointInValidHoverArea":Z
    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    move/from16 v23, v0

    if-nez v23, :cond_6

    .line 2700
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v26

    sub-long v18, v24, v26

    .line 2701
    .restart local v18    # "timeDealy":J
    const-wide/16 v24, 0x3e8

    cmp-long v23, v18, v24

    if-lez v23, :cond_5

    .line 2703
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 2704
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 2709
    :cond_5
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 2710
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow;->show()V

    .line 2711
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 2712
    .end local v18    # "timeDealy":J
    :cond_6
    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    move/from16 v23, v0

    if-nez v23, :cond_7

    .line 2716
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    .line 2717
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 2718
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 2723
    .end local v12    # "isPointInValidHoverArea":Z
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_f

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v23

    if-eqz v23, :cond_f

    .line 2724
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v14

    .line 2726
    .local v14, "popupView":Landroid/view/View;
    instance-of v0, v14, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move/from16 v23, v0

    if-eqz v23, :cond_f

    move-object v7, v14

    .line 2727
    check-cast v7, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    .line 2732
    .local v7, "containerView":Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9

    .line 2734
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getPaddingLeft()I

    move-result v10

    .line 2735
    .local v10, "infopickerLeftLimit":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWidth()I

    move-result v23

    add-int v11, v23, v10

    .line 2751
    .local v11, "infopickerRightLimit":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10, v11}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPickerLimit(II)V

    .line 2769
    .end local v10    # "infopickerLeftLimit":I
    .end local v11    # "infopickerRightLimit":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v23, v0

    if-eqz v23, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 2770
    .local v5, "anchorView":Landroid/view/View;
    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v20

    .line 2771
    .local v20, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v20, :cond_e

    .line 2772
    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v17

    .line 2773
    .local v17, "scaleFactor":Landroid/graphics/PointF;
    new-instance v9, Landroid/graphics/PointF;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v9, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2774
    .local v9, "fPos":Landroid/graphics/PointF;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    cmpl-float v23, v23, v24

    if-nez v23, :cond_a

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    cmpl-float v23, v23, v24

    if-eqz v23, :cond_12

    .line 2775
    :cond_a
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 2777
    .local v8, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {v5, v8}, Landroid/view/View;->getWindowVisibleContentFrame(Landroid/graphics/Rect;)V

    .line 2778
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v23, v0

    if-nez v23, :cond_b

    .line 2779
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getBaseActivityToken()Landroid/os/IBinder;

    move-result-object v6

    .line 2780
    .local v6, "atoken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string/jumbo v24, "multiwindow_facade"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 2781
    .local v13, "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-virtual {v13, v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackPosition(Landroid/os/IBinder;)Landroid/graphics/Point;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    .line 2783
    .end local v6    # "atoken":Landroid/os/IBinder;
    .end local v13    # "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v23, v0

    if-eqz v23, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    if-nez v23, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    if-eqz v23, :cond_d

    .line 2785
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2787
    :cond_d
    int-to-float v0, v15

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v23, v23, v24

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    div-float v23, v23, v24

    move/from16 v0, v23

    iput v0, v9, Landroid/graphics/PointF;->x:F

    .line 2788
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v23, v23, v24

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v24, v0

    div-float v23, v23, v24

    move/from16 v0, v23

    iput v0, v9, Landroid/graphics/PointF;->y:F

    .line 2790
    iget v0, v9, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    iget v0, v9, Landroid/graphics/PointF;->y:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLineEndPoint(II)V

    .line 2798
    .end local v8    # "displayFrame":Landroid/graphics/Rect;
    .end local v9    # "fPos":Landroid/graphics/PointF;
    .end local v17    # "scaleFactor":Landroid/graphics/PointF;
    :cond_e
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v23

    if-nez v23, :cond_13

    .line 2804
    invoke-virtual {v7}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->updateDecoration()V

    .line 2827
    .end local v5    # "anchorView":Landroid/view/View;
    .end local v7    # "containerView":Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    .end local v14    # "popupView":Landroid/view/View;
    .end local v20    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_f
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mToolType:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_10

    .line 2828
    invoke-direct/range {p0 .. p0}, Landroid/widget/HoverPopupWindow;->resetTimeout()V

    .line 2833
    :cond_10
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 2769
    .restart local v7    # "containerView":Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    .restart local v14    # "popupView":Landroid/view/View;
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto/16 :goto_2

    .line 2793
    .restart local v5    # "anchorView":Landroid/view/View;
    .restart local v9    # "fPos":Landroid/graphics/PointF;
    .restart local v17    # "scaleFactor":Landroid/graphics/PointF;
    .restart local v20    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    move/from16 v23, v0

    sub-int v23, v15, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    move/from16 v24, v0

    sub-int v24, v16, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLineEndPoint(II)V

    goto :goto_3

    .line 2812
    .end local v9    # "fPos":Landroid/graphics/PointF;
    .end local v17    # "scaleFactor":Landroid/graphics/PointF;
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_f

    .line 2816
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_15

    .line 2817
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setFHGuideLineForCotainer(Z)V

    .line 2819
    :cond_15
    invoke-virtual {v7}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->updateDecoration()V

    goto :goto_4

    .line 2834
    .end local v5    # "anchorView":Landroid/view/View;
    .end local v7    # "containerView":Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    .end local v14    # "popupView":Landroid/view/View;
    .end local v15    # "rawX":I
    .end local v16    # "rawY":I
    .end local v20    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_16
    const/16 v23, 0xa

    move/from16 v0, v23

    if-ne v4, v0, :cond_1

    .line 2839
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v23, v0

    if-eqz v23, :cond_17

    .line 2843
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPopupState(I)V

    .line 2846
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 2851
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    if-eqz v23, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v23

    if-eqz v23, :cond_18

    .line 2852
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    .line 2855
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 2856
    const/16 v23, 0x1

    goto/16 :goto_0
.end method

.method protected postDismiss(I)V
    .locals 4
    .param p1, "ms"    # I

    .prologue
    .line 2872
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    new-instance v1, Landroid/widget/HoverPopupWindow$6;

    invoke-direct {v1, p0}, Landroid/widget/HoverPopupWindow$6;-><init>(Landroid/widget/HoverPopupWindow;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2879
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 969
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 970
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 2
    .param p1, "aniStyle"    # I

    .prologue
    .line 2457
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    .line 2458
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2459
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 2461
    :cond_0
    return-void
.end method

.method public setContent(I)V
    .locals 1
    .param p1, "resId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 862
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mContentResId:I

    .line 863
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 864
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 872
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 873
    return-void

    .line 872
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 883
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 884
    iput-object p2, p0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    .line 885
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 886
    return-void
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 895
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 896
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 897
    return-void
.end method

.method public setDismissTouchableHPWOnActionUp(Z)V
    .locals 0
    .param p1, "bDismissTouchableHPWOnActionUp"    # Z

    .prologue
    .line 784
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    .line 785
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 810
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    .line 811
    return-void
.end method

.method public setFHAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 2534
    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabledByApp:Z

    .line 2535
    invoke-virtual {p0, p1, v0}, Landroid/widget/HoverPopupWindow;->setFHAnimationEnabledByApp(ZZ)V

    .line 2536
    return-void
.end method

.method public setFHAnimationEnabledByApp(ZZ)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "calledByApp"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2542
    if-ne p2, v1, :cond_1

    .line 2543
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    .line 2552
    :cond_0
    :goto_0
    return-void

    .line 2546
    :cond_1
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabledByApp:Z

    if-eq v0, v1, :cond_0

    .line 2549
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    goto :goto_0
.end method

.method public setFHGuideLineEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 2491
    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabledByApp:Z

    .line 2492
    invoke-virtual {p0, p1, v0}, Landroid/widget/HoverPopupWindow;->setFHGuideLineEnabledByApp(ZZ)V

    .line 2493
    return-void
.end method

.method public setFHGuideLineEnabledByApp(ZZ)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "calledByApp"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2499
    if-ne p2, v1, :cond_2

    .line 2500
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    .line 2502
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-ne v0, v1, :cond_1

    .line 2503
    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    .line 2526
    :cond_0
    :goto_0
    return-void

    .line 2506
    :cond_1
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-nez v0, :cond_0

    .line 2507
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    goto :goto_0

    .line 2511
    :cond_2
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabledByApp:Z

    if-eq v0, v1, :cond_0

    .line 2514
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    .line 2516
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-ne v0, v1, :cond_3

    .line 2517
    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    goto :goto_0

    .line 2520
    :cond_3
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-nez v0, :cond_0

    .line 2521
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    goto :goto_0
.end method

.method public setFHSoundAndHapticEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2596
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsFHSoundAndHapticEnabled:Z

    .line 2597
    return-void
.end method

.method public setGuideLineEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2482
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    .line 2483
    return-void
.end method

.method public setGuideLineFadeOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 2606
    int-to-float v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    .line 2607
    return-void
.end method

.method public setGuideLineStyle(II)V
    .locals 0
    .param p1, "ringDrawable"    # I
    .param p2, "lineColor"    # I

    .prologue
    .line 2616
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mGuideRingDrawableId:I

    .line 2617
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mGuideLineColor:I

    .line 2618
    return-void
.end method

.method public setHoverDetectTime(I)V
    .locals 0
    .param p1, "ms"    # I

    .prologue
    .line 927
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    .line 928
    return-void
.end method

.method public setHoverPaddingArea(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 940
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingLeft:I

    .line 941
    iput p3, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingRight:I

    .line 942
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingTop:I

    .line 943
    iput p4, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingBottom:I

    .line 945
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingLeft:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingRight:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingTop:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/HoverPopupWindow;->mHoverPaddingBottom:I

    if-eqz v0, :cond_1

    .line 947
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    .line 949
    :cond_1
    return-void
.end method

.method public setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/HoverPopupWindow$HoverPopupListener;

    .prologue
    .line 840
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    .line 841
    return-void
.end method

.method public setHoverPopupPreShowListener(Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

    .prologue
    .line 850
    iput-object p1, p0, Landroid/widget/HoverPopupWindow;->mPreShowListener:Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

    .line 851
    return-void
.end method

.method public setHoverPopupToolType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 745
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    .line 746
    return-void
.end method

.method public setHoveringPoint(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1019
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    .line 1020
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    .line 1021
    return-void
.end method

.method public setInfoPickerColorToAndMoreBottomImg(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2587
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z

    .line 2588
    return-void
.end method

.method public setInfoPickerMoveEabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 2560
    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabledByApp:Z

    .line 2561
    invoke-virtual {p0, p1, v0}, Landroid/widget/HoverPopupWindow;->setInfoPickerMoveEabledByApp(ZZ)V

    .line 2563
    return-void
.end method

.method public setInfoPickerMoveEabledByApp(ZZ)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "calledByApp"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2569
    if-ne p2, v1, :cond_1

    .line 2570
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    .line 2579
    :cond_0
    :goto_0
    return-void

    .line 2573
    :cond_1
    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabledByApp:Z

    if-eq v0, v1, :cond_0

    .line 2576
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    goto :goto_0
.end method

.method protected setInstanceByType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 510
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 511
    const/16 v0, 0x12c

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    .line 512
    const/16 v0, 0x5153

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 513
    const v0, 0x10304fb

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    .line 515
    :cond_0
    return-void
.end method

.method public setInstanceOfDialer(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 588
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->misDialer:Z

    .line 589
    return-void
.end method

.method public setInstanceOfProgressBar(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 604
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsProgressBar:Z

    .line 605
    return-void
.end method

.method public setOverTopPickerOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 1007
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v0, p1}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setOverTopPickerOffset(I)V

    .line 1010
    :cond_0
    return-void
.end method

.method public setPickerXOffset(I)V
    .locals 0
    .param p1, "xOffset"    # I

    .prologue
    .line 998
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPickerXoffset:I

    .line 999
    return-void
.end method

.method public setPopupGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 978
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 979
    return-void
.end method

.method public setPopupPosOffset(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 988
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 989
    iput p2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 990
    return-void
.end method

.method public setShowPopupAlways(Z)V
    .locals 0
    .param p1, "always"    # Z

    .prologue
    .line 957
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mShowPopupAlways:Z

    .line 958
    return-void
.end method

.method public setTouchablePopup(Z)V
    .locals 2
    .param p1, "isTouchable"    # Z

    .prologue
    .line 2470
    iput-boolean p1, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    .line 2471
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2472
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 2474
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1070
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    invoke-virtual {p0, v0}, Landroid/widget/HoverPopupWindow;->show(I)V

    .line 1071
    return-void
.end method

.method public show(I)V
    .locals 9
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 1084
    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    if-eq p1, v3, :cond_0

    .line 1085
    iput p1, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    .line 1086
    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->setInstanceByType(I)V

    .line 1090
    :cond_0
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mPreShowListener:Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

    if-eqz v3, :cond_2

    .line 1091
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mPreShowListener:Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

    invoke-interface {v3}, Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;->onHoverPopupPreShow()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1160
    :cond_1
    :goto_0
    return-void

    .line 1097
    :cond_2
    iget-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mEnabled:Z

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsTryingShowPopup:Z

    if-eqz v3, :cond_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isHoverPopupPossible()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->isHoveringSettingEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->isViewCoverClose()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isLockScreenMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1105
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1106
    .local v0, "root":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1107
    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_5

    move-object v2, v1

    .line 1108
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1109
    .local v2, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x8ac

    if-eq v3, v4, :cond_4

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x62

    if-ne v3, v4, :cond_5

    .line 1111
    :cond_4
    invoke-virtual {p0, v5}, Landroid/widget/HoverPopupWindow;->setFHGuideLineEnabled(Z)V

    .line 1117
    .end local v2    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_5
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->getStateHashCode()I

    move-result v3

    iput v3, p0, Landroid/widget/HoverPopupWindow;->mHashCodeForViewState:I

    .line 1120
    iget-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v3, :cond_6

    .line 1121
    invoke-virtual {p0, v8}, Landroid/widget/HoverPopupWindow;->showPenPointEffect(Z)V

    .line 1126
    :cond_6
    iget-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mIsFHSoundAndHapticEnabled:Z

    if-eqz v3, :cond_7

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    if-ne v3, v8, :cond_7

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_sound_and_haptic_feedback"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v8, :cond_7

    .line 1129
    invoke-direct {p0}, Landroid/widget/HoverPopupWindow;->playSoundAndHapticFeedback()V

    .line 1133
    :cond_7
    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    if-ne v3, v8, :cond_8

    .line 1134
    new-instance v3, Landroid/widget/HoverPopupWindow$4;

    invoke-direct {v3, p0}, Landroid/widget/HoverPopupWindow$4;-><init>(Landroid/widget/HoverPopupWindow;)V

    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 1141
    :cond_8
    new-instance v3, Landroid/widget/HoverPopupWindow$5;

    invoke-direct {v3, p0}, Landroid/widget/HoverPopupWindow$5;-><init>(Landroid/widget/HoverPopupWindow;)V

    iput-object v3, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 1150
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iget v5, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1151
    iput-boolean v8, p0, Landroid/widget/HoverPopupWindow;->mIsShowMessageSent:Z

    goto/16 :goto_0
.end method

.method protected showPenPointEffect(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x1

    .line 2926
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2927
    if-ne p1, v2, :cond_1

    .line 2931
    const/16 v0, 0xa

    const/4 v1, -0x1

    :try_start_0
    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2936
    :goto_0
    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow;->mIsSPenPointChanged:Z

    .line 2949
    :cond_0
    :goto_1
    return-void

    .line 2937
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsSPenPointChanged:Z

    if-ne v0, v2, :cond_0

    .line 2941
    const/16 v0, 0x14

    const/4 v1, -0x1

    :try_start_1
    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2946
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsSPenPointChanged:Z

    goto :goto_1

    .line 2932
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2942
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public updateHoverPopup()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 2381
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    if-nez v0, :cond_0

    .line 2382
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mContentWidth:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mContentHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/HoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 2383
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 2387
    :goto_0
    return-void

    .line 2385
    :cond_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    :goto_1
    iget v1, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    iget v2, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/HoverPopupWindow;->updateHoverPopup(Landroid/view/View;III)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_1
.end method
