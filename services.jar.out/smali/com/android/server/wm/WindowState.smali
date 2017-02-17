.class final Lcom/android/server/wm/WindowState;
.super Ljava/lang/Object;
.source "WindowState.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$WindowState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowState$DeathRecipient;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "WindowState"

.field private static final bDSSEnabled:Z = true


# instance fields
.field mAppFreezing:Z

.field final mAppOp:I

.field mAppOpVisibility:Z

.field mAppToken:Lcom/android/server/wm/AppWindowToken;

.field mAttachedHidden:Z

.field final mAttachedWindow:Lcom/android/server/wm/WindowState;

.field final mAttrs:Landroid/view/WindowManager$LayoutParams;

.field final mBaseLayer:I

.field final mChildWindows:Lcom/android/server/wm/WindowList;

.field final mClient:Landroid/view/IWindow;

.field final mCompatFrame:Landroid/graphics/Rect;

.field private mConfigHasChanged:Z

.field mConfiguration:Landroid/content/res/Configuration;

.field final mContainingFrame:Landroid/graphics/Rect;

.field mContentChanged:Z

.field final mContentFrame:Landroid/graphics/Rect;

.field final mContentInsets:Landroid/graphics/Rect;

.field mContentInsetsChanged:Z

.field final mContext:Landroid/content/Context;

.field final mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

.field final mDecorFrame:Landroid/graphics/Rect;

.field mDelayedResize:Z

.field mDestroying:Z

.field mDisplayChanging:Z

.field mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field final mDisplayFrame:Landroid/graphics/Rect;

.field mDrawLock:Landroid/os/PowerManager$WakeLock;

.field mDssScale:F

.field mEnforceSizeCompat:Z

.field mExiting:Z

.field mFloatingAppHScale:F

.field mFloatingAppVScale:F

.field mFocusCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/view/IWindowFocusObserver;",
            ">;"
        }
    .end annotation
.end field

.field final mFrame:Landroid/graphics/Rect;

.field final mGivenContentInsets:Landroid/graphics/Rect;

.field mGivenInsetsPending:Z

.field final mGivenTouchableRegion:Landroid/graphics/Region;

.field final mGivenVisibleInsets:Landroid/graphics/Rect;

.field mGlobalScale:F

.field mHScale:F

.field mHasSurface:Z

.field mHaveFrame:Z

.field mHideBySViewCover:Z

.field mInputChannel:Landroid/view/InputChannel;

.field final mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field mInvGlobalScale:F

.field mIsAdss:Z

.field final mIsFloatingLayer:Z

.field final mIsImWindow:Z

.field final mIsWallpaper:Z

.field public mKeptStartingWindowToCurrentDisplay:Z

.field final mLastContainingFrame:Landroid/graphics/Rect;

.field final mLastContentInsets:Landroid/graphics/Rect;

.field final mLastFrame:Landroid/graphics/Rect;

.field mLastFreezeDuration:I

.field mLastHScale:F

.field final mLastOutsets:Landroid/graphics/Rect;

.field final mLastOverscanInsets:Landroid/graphics/Rect;

.field mLastRelayoutConfiguration:Landroid/content/res/Configuration;

.field mLastRequestedHeight:I

.field mLastRequestedWidth:I

.field final mLastStableInsets:Landroid/graphics/Rect;

.field final mLastSystemDecorRect:Landroid/graphics/Rect;

.field mLastTitle:Ljava/lang/CharSequence;

.field mLastVScale:F

.field final mLastVisibleInsets:Landroid/graphics/Rect;

.field mLayer:I

.field final mLayoutAttached:Z

.field mLayoutNeeded:Z

.field mLayoutSeq:I

.field mMultiWindowStyleChanging:Z

.field mNotOnAppsDisplay:Z

.field mObscured:Z

.field mObscuredChanged:Z

.field mOrientationChanging:Z

.field final mOutsetFrame:Landroid/graphics/Rect;

.field final mOutsets:Landroid/graphics/Rect;

.field mOutsetsChanged:Z

.field private mOverrideConfig:Landroid/content/res/Configuration;

.field final mOverscanFrame:Landroid/graphics/Rect;

.field final mOverscanInsets:Landroid/graphics/Rect;

.field mOverscanInsetsChanged:Z

.field final mOwnerUid:I

.field final mParentFrame:Landroid/graphics/Rect;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPolicyVisibility:Z

.field mPolicyVisibilityAfterAnim:Z

.field mRebuilding:Z

.field mRelayoutCalled:Z

.field mRemoveOnExit:Z

.field mRemoved:Z

.field mRequestedHeight:I

.field mRequestedWidth:I

.field mRootToken:Lcom/android/server/wm/WindowToken;

.field mSavedFlags:I

.field mScaleToastFrame:Landroid/graphics/Rect;

.field mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

.field mSeq:I

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSession:Lcom/android/server/wm/Session;

.field private mShowToOwnerOnly:Z

.field final mShownFrame:Landroid/graphics/RectF;

.field mSplitToastFrame:Landroid/graphics/Rect;

.field mSplitToastStack:Lcom/android/server/wm/TaskStack;

.field final mStableFrame:Landroid/graphics/Rect;

.field final mStableInsets:Landroid/graphics/Rect;

.field mStableInsetsChanged:Z

.field mStringNameCache:Ljava/lang/String;

.field final mSubLayer:I

.field final mSystemDecorRect:Landroid/graphics/Rect;

.field mSystemUiVisibility:I

.field mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field mToastRequestedOrientation:I

.field mToken:Lcom/android/server/wm/WindowToken;

.field mTouchableInsets:I

.field mTurnOnScreen:Z

.field mVScale:F

.field mViewVisibility:I

.field final mVisibleFrame:Landroid/graphics/Rect;

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mVisibleInsetsChanged:Z

.field mWaitingForOrientation:Z

.field mWallpaperDisplayOffsetX:I

.field mWallpaperDisplayOffsetY:I

.field mWallpaperVisible:Z

.field mWallpaperX:F

.field mWallpaperXStep:F

.field mWallpaperY:F

.field mWallpaperYStep:F

.field mWasExiting:Z

.field final mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field final mWindowId:Landroid/view/IWindowId;

.field mXOffset:I

.field mYOffset:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;ILcom/android/server/wm/DisplayContent;)V
    .locals 23
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "s"    # Lcom/android/server/wm/Session;
    .param p3, "c"    # Landroid/view/IWindow;
    .param p4, "token"    # Lcom/android/server/wm/WindowToken;
    .param p5, "attachedWindow"    # Lcom/android/server/wm/WindowState;
    .param p6, "appOp"    # I
    .param p7, "seq"    # I
    .param p8, "a"    # Landroid/view/WindowManager$LayoutParams;
    .param p9, "viewVisibility"    # I
    .param p10, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    .line 457
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v20, Landroid/view/WindowManager$LayoutParams;

    invoke-direct/range {v20 .. v20}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 146
    new-instance v20, Lcom/android/server/wm/WindowList;

    invoke-direct/range {v20 .. v20}, Lcom/android/server/wm/WindowList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    .line 157
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 158
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 159
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    .line 184
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 186
    sget-object v20, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    .line 187
    sget-object v20, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 189
    sget-object v20, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mLastRelayoutConfiguration:Landroid/content/res/Configuration;

    .line 200
    new-instance v20, Landroid/graphics/RectF;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    .line 206
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    .line 207
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    .line 215
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    .line 216
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    .line 223
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    .line 224
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    .line 231
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    .line 232
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mLastStableInsets:Landroid/graphics/Rect;

    .line 239
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    .line 240
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    .line 241
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    .line 253
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    .line 259
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    .line 264
    new-instance v20, Landroid/graphics/Region;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Region;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    .line 272
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 278
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    .line 279
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mLastSystemDecorRect:Landroid/graphics/Rect;

    .line 282
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 283
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 284
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 285
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mLastHScale:F

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mLastVScale:F

    .line 286
    new-instance v20, Landroid/graphics/Matrix;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 291
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mDssScale:F

    .line 292
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsAdss:Z

    .line 296
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 297
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    .line 300
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    .line 302
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    .line 303
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mLastContainingFrame:Landroid/graphics/Rect;

    .line 305
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    .line 309
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 315
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    .line 319
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    .line 323
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    .line 327
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    .line 331
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    .line 335
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    .line 341
    const/high16 v20, -0x40800000    # -1.0f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 342
    const/high16 v20, -0x40800000    # -1.0f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 346
    const/high16 v20, -0x40800000    # -1.0f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 347
    const/high16 v20, -0x40800000    # -1.0f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 351
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 352
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    .line 414
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 416
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mNotOnAppsDisplay:Z

    .line 432
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mHideBySViewCover:Z

    .line 437
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mSavedFlags:I

    .line 438
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mSplitToastFrame:Landroid/graphics/Rect;

    .line 439
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mScaleToastFrame:Landroid/graphics/Rect;

    .line 440
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mSplitToastStack:Lcom/android/server/wm/TaskStack;

    .line 441
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    .line 442
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mMultiWindowStyleChanging:Z

    .line 443
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mFloatingAppHScale:F

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mFloatingAppVScale:F

    .line 444
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mToastRequestedOrientation:I

    .line 448
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mKeptStartingWindowToCurrentDisplay:Z

    .line 452
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mDelayedResize:Z

    .line 458
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 459
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 460
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 461
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mAppOp:I

    .line 462
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 463
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/wm/Session;->mUid:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 464
    new-instance v20, Lcom/android/server/wm/WindowState$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowState$1;-><init>(Lcom/android/server/wm/WindowState;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mWindowId:Landroid/view/IWindowId;

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 479
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 480
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mContext:Landroid/content/Context;

    .line 483
    new-instance v10, Lcom/android/server/wm/WindowState$DeathRecipient;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v10, v0, v1}, Lcom/android/server/wm/WindowState$DeathRecipient;-><init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$1;)V

    .line 484
    .local v10, "deathRecipient":Lcom/android/server/wm/WindowState$DeathRecipient;
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mSeq:I

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    if-eqz v20, :cond_4

    const/16 v20, 0x1

    :goto_0
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    .line 490
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v0, v10, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x3e8

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x7cf

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_e

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v20, v0

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v20

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v20, v0

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v20, v0

    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Landroid/view/WindowManagerPolicy;->subWindowTypeToLayerLw(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 514
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 515
    sget-boolean v20, Lcom/android/server/wm/WindowManagerService;->DEBUG_ADD_REMOVE:Z

    if-eqz v20, :cond_0

    const-string v20, "WindowState"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Adding "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    .line 518
    .local v9, "childWindows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v9}, Lcom/android/server/wm/WindowList;->size()I

    move-result v15

    .line 519
    .local v15, "numChildWindows":I
    if-nez v15, :cond_6

    .line 520
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    .line 540
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x3eb

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    const/16 v20, 0x1

    :goto_2
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 542
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x7db

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x7dc

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x8e8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    :cond_2
    const/16 v20, 0x1

    :goto_3
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 545
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x7dd

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    const/16 v20, 0x1

    :goto_4
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 546
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    move/from16 v20, v0

    if-nez v20, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    move/from16 v20, v0

    if-eqz v20, :cond_d

    :cond_3
    const/16 v20, 0x1

    :goto_5
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    .line 563
    .end local v9    # "childWindows":Lcom/android/server/wm/WindowList;
    .end local v15    # "numChildWindows":I
    :goto_6
    move-object/from16 v7, p0

    .line 564
    .local v7, "appWin":Lcom/android/server/wm/WindowState;
    :goto_7
    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v20, v0

    if-eqz v20, :cond_14

    .line 565
    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_7

    .line 485
    .end local v7    # "appWin":Lcom/android/server/wm/WindowState;
    :cond_4
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 491
    :catch_0
    move-exception v11

    .line 492
    .local v11, "e":Landroid/os/RemoteException;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    .line 493
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 494
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 495
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 496
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 497
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    .line 498
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 499
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 500
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 501
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 645
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_8
    return-void

    .line 522
    .restart local v9    # "childWindows":Lcom/android/server/wm/WindowList;
    .restart local v15    # "numChildWindows":I
    :cond_6
    const/4 v4, 0x0

    .line 523
    .local v4, "added":Z
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_9
    if-ge v13, v15, :cond_8

    .line 524
    invoke-virtual {v9, v13}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v20

    iget v8, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 525
    .local v8, "childSubLayer":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v0, v8, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v8, :cond_9

    if-gez v8, :cond_9

    .line 530
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v9, v13, v0}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    .line 531
    const/4 v4, 0x1

    .line 535
    .end local v8    # "childSubLayer":I
    :cond_8
    if-nez v4, :cond_1

    .line 536
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 523
    .restart local v8    # "childSubLayer":I
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 540
    .end local v4    # "added":Z
    .end local v8    # "childSubLayer":I
    .end local v13    # "i":I
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 542
    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 545
    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 546
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 550
    .end local v9    # "childWindows":Lcom/android/server/wm/WindowList;
    .end local v15    # "numChildWindows":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v20, v0

    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v20

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v20, v0

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 553
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 554
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 555
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x7db

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x7dc

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x8e8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    :cond_f
    const/16 v20, 0x1

    :goto_a
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x7dd

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    const/16 v20, 0x1

    :goto_b
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 560
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    move/from16 v20, v0

    if-nez v20, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    move/from16 v20, v0

    if-eqz v20, :cond_13

    :cond_10
    const/16 v20, 0x1

    :goto_c
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    goto/16 :goto_6

    .line 556
    :cond_11
    const/16 v20, 0x0

    goto :goto_a

    .line 559
    :cond_12
    const/16 v20, 0x0

    goto :goto_b

    .line 560
    :cond_13
    const/16 v20, 0x0

    goto :goto_c

    .line 567
    .restart local v7    # "appWin":Lcom/android/server/wm/WindowState;
    :cond_14
    iget-object v6, v7, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 568
    .local v6, "appToken":Lcom/android/server/wm/WindowToken;
    :goto_d
    iget-object v0, v6, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v20, v0

    if-nez v20, :cond_15

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-object v0, v6, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/wm/WindowToken;

    .line 570
    .local v16, "parent":Lcom/android/server/wm/WindowToken;
    if-eqz v16, :cond_15

    move-object/from16 v0, v16

    if-ne v6, v0, :cond_17

    .line 575
    .end local v16    # "parent":Lcom/android/server/wm/WindowToken;
    :cond_15
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    .line 576
    iget-object v0, v6, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v20, v0

    if-eqz v20, :cond_16

    .line 578
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 579
    .local v5, "appDisplay":Lcom/android/server/wm/DisplayContent;
    move-object/from16 v0, p10

    if-eq v0, v5, :cond_18

    const/16 v20, 0x1

    :goto_e
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mNotOnAppsDisplay:Z

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->showForAllUsers:Z

    move/from16 v20, v0

    if-eqz v20, :cond_16

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v21, v0

    const/high16 v22, 0x80000

    or-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 588
    .end local v5    # "appDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_16
    new-instance v20, Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;-><init>(Lcom/android/server/wm/WindowState;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v20, v0

    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 591
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 592
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 593
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    .line 594
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    .line 595
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 596
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 597
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 598
    new-instance v21, Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v20, v0

    if-eqz v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    move-object/from16 v20, v0

    :goto_f
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v22

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v12, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 605
    .local v12, "focusWindowState":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p8

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x7d5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1e

    .line 606
    if-eqz v12, :cond_1b

    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1b

    iget-object v0, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1b

    .line 609
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v20

    const/16 v21, 0x800

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_1a

    .line 610
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/wm/WindowState;->setScaleToastFrame(Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_8

    .line 573
    .end local v12    # "focusWindowState":Lcom/android/server/wm/WindowState;
    .restart local v16    # "parent":Lcom/android/server/wm/WindowToken;
    :cond_17
    move-object/from16 v6, v16

    .line 574
    goto/16 :goto_d

    .line 579
    .end local v16    # "parent":Lcom/android/server/wm/WindowToken;
    .restart local v5    # "appDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_18
    const/16 v20, 0x0

    goto/16 :goto_e

    .line 598
    .end local v5    # "appDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_19
    const/16 v20, 0x0

    goto :goto_f

    .line 611
    .restart local v12    # "focusWindowState":Lcom/android/server/wm/WindowState;
    :cond_1a
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 612
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/wm/WindowState;->setSplitToastStack(Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_8

    .line 615
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v18

    .line 616
    .local v18, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowList;->size()I

    move-result v20

    add-int/lit8 v13, v20, -0x1

    .restart local v13    # "i":I
    :goto_10
    if-ltz v13, :cond_5

    .line 617
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/WindowState;

    .line 618
    .local v19, "ws":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1d

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1d

    .line 620
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v20

    const/16 v21, 0x800

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_1c

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v20

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v20

    if-nez v20, :cond_1c

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v20

    if-eqz v20, :cond_1c

    .line 623
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowState;->setScaleToastFrame(Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_8

    .line 625
    :cond_1c
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1d

    .line 626
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowState;->setSplitToastStack(Lcom/android/server/wm/WindowState;)V

    goto/16 :goto_8

    .line 616
    :cond_1d
    add-int/lit8 v13, v13, -0x1

    goto :goto_10

    .line 634
    .end local v13    # "i":I
    .end local v18    # "windows":Lcom/android/server/wm/WindowList;
    .end local v19    # "ws":Lcom/android/server/wm/WindowState;
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v14

    .line 635
    .local v14, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    const/16 v20, 0x800

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_5

    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v20

    if-nez v20, :cond_5

    .line 637
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 638
    .local v17, "tmpScreen":Landroid/graphics/Rect;
    move-object/from16 v0, p10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 639
    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 640
    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    goto/16 :goto_8
.end method

.method private static applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .param p0, "outRegion"    # Landroid/graphics/Region;
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "inset"    # Landroid/graphics/Rect;

    .prologue
    .line 2067
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Region;->set(IIII)Z

    .line 2070
    return-void
.end method

.method private reverseFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "pf"    # Landroid/graphics/Rect;
    .param p2, "df"    # Landroid/graphics/Rect;
    .param p3, "of"    # Landroid/graphics/Rect;
    .param p4, "cf"    # Landroid/graphics/Rect;
    .param p5, "vf"    # Landroid/graphics/Rect;
    .param p6, "dcf"    # Landroid/graphics/Rect;
    .param p7, "sf"    # Landroid/graphics/Rect;
    .param p8, "osf"    # Landroid/graphics/Rect;

    .prologue
    .line 2964
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 2965
    .local v6, "reversePF":Landroid/graphics/Rect;
    iget v9, p1, Landroid/graphics/Rect;->top:I

    iput v9, v6, Landroid/graphics/Rect;->left:I

    .line 2966
    iget v9, p1, Landroid/graphics/Rect;->left:I

    iput v9, v6, Landroid/graphics/Rect;->top:I

    .line 2967
    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    iput v9, v6, Landroid/graphics/Rect;->right:I

    .line 2968
    iget v9, p1, Landroid/graphics/Rect;->right:I

    iput v9, v6, Landroid/graphics/Rect;->bottom:I

    .line 2969
    invoke-virtual {p1, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2971
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2972
    .local v3, "reverseDF":Landroid/graphics/Rect;
    iget v9, p2, Landroid/graphics/Rect;->top:I

    iput v9, v3, Landroid/graphics/Rect;->left:I

    .line 2973
    iget v9, p2, Landroid/graphics/Rect;->left:I

    iput v9, v3, Landroid/graphics/Rect;->top:I

    .line 2974
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    iput v9, v3, Landroid/graphics/Rect;->right:I

    .line 2975
    iget v9, p2, Landroid/graphics/Rect;->right:I

    iput v9, v3, Landroid/graphics/Rect;->bottom:I

    .line 2976
    invoke-virtual {p2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2978
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2979
    .local v4, "reverseOF":Landroid/graphics/Rect;
    iget v9, p3, Landroid/graphics/Rect;->top:I

    iput v9, v4, Landroid/graphics/Rect;->left:I

    .line 2980
    iget v9, p3, Landroid/graphics/Rect;->left:I

    iput v9, v4, Landroid/graphics/Rect;->top:I

    .line 2981
    iget v9, p3, Landroid/graphics/Rect;->bottom:I

    iput v9, v4, Landroid/graphics/Rect;->right:I

    .line 2982
    iget v9, p3, Landroid/graphics/Rect;->right:I

    iput v9, v4, Landroid/graphics/Rect;->bottom:I

    .line 2983
    invoke-virtual {p3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2985
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2986
    .local v1, "reverseCF":Landroid/graphics/Rect;
    iget v9, p4, Landroid/graphics/Rect;->top:I

    iput v9, v1, Landroid/graphics/Rect;->left:I

    .line 2987
    iget v9, p4, Landroid/graphics/Rect;->left:I

    iput v9, v1, Landroid/graphics/Rect;->top:I

    .line 2988
    iget v9, p4, Landroid/graphics/Rect;->bottom:I

    iput v9, v1, Landroid/graphics/Rect;->right:I

    .line 2989
    iget v9, p4, Landroid/graphics/Rect;->right:I

    iput v9, v1, Landroid/graphics/Rect;->bottom:I

    .line 2990
    invoke-virtual {p4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2992
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 2993
    .local v8, "reverseVF":Landroid/graphics/Rect;
    iget v9, p5, Landroid/graphics/Rect;->top:I

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 2994
    iget v9, p5, Landroid/graphics/Rect;->left:I

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 2995
    iget v9, p5, Landroid/graphics/Rect;->bottom:I

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 2996
    iget v9, p5, Landroid/graphics/Rect;->right:I

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 2997
    invoke-virtual {p5, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2999
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 3000
    .local v2, "reverseDCF":Landroid/graphics/Rect;
    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Rect;->top:I

    iput v9, v2, Landroid/graphics/Rect;->left:I

    .line 3001
    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Rect;->left:I

    iput v9, v2, Landroid/graphics/Rect;->top:I

    .line 3002
    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    iput v9, v2, Landroid/graphics/Rect;->right:I

    .line 3003
    move-object/from16 v0, p6

    iget v9, v0, Landroid/graphics/Rect;->right:I

    iput v9, v2, Landroid/graphics/Rect;->bottom:I

    .line 3004
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3006
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 3007
    .local v7, "reverseSF":Landroid/graphics/Rect;
    move-object/from16 v0, p7

    iget v9, v0, Landroid/graphics/Rect;->top:I

    iput v9, v7, Landroid/graphics/Rect;->left:I

    .line 3008
    move-object/from16 v0, p7

    iget v9, v0, Landroid/graphics/Rect;->left:I

    iput v9, v7, Landroid/graphics/Rect;->top:I

    .line 3009
    move-object/from16 v0, p7

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    iput v9, v7, Landroid/graphics/Rect;->right:I

    .line 3010
    move-object/from16 v0, p7

    iget v9, v0, Landroid/graphics/Rect;->right:I

    iput v9, v7, Landroid/graphics/Rect;->bottom:I

    .line 3011
    move-object/from16 v0, p7

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3013
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 3014
    .local v5, "reverseOSF":Landroid/graphics/Rect;
    move-object/from16 v0, p8

    iget v9, v0, Landroid/graphics/Rect;->top:I

    iput v9, v5, Landroid/graphics/Rect;->left:I

    .line 3015
    move-object/from16 v0, p8

    iget v9, v0, Landroid/graphics/Rect;->left:I

    iput v9, v5, Landroid/graphics/Rect;->top:I

    .line 3016
    move-object/from16 v0, p8

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    iput v9, v5, Landroid/graphics/Rect;->right:I

    .line 3017
    move-object/from16 v0, p8

    iget v9, v0, Landroid/graphics/Rect;->right:I

    iput v9, v5, Landroid/graphics/Rect;->bottom:I

    .line 3018
    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3019
    return-void
.end method

.method private setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "newOverrideConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1745
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    .line 1746
    iput-object p2, p0, Lcom/android/server/wm/WindowState;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 1747
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mConfigHasChanged:Z

    .line 1748
    return-void
.end method

.method private setScaleToastFrame(Lcom/android/server/wm/WindowState;)V
    .locals 0
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 2908
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    .line 2909
    return-void
.end method

.method private setSplitToastStack(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 2901
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, -0x52

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    .line 2903
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mSplitToastStack:Lcom/android/server/wm/TaskStack;

    .line 2905
    :cond_0
    return-void
.end method

.method private updateToastFrame()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 2912
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mSplitToastStack:Lcom/android/server/wm/TaskStack;

    if-eqz v6, :cond_1

    .line 2913
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2914
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mSplitToastStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 2915
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mSplitToastFrame:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2961
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    .line 2916
    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v7

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    const/16 v7, 0x800

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2924
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2925
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mScaleToastFrame:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2930
    :goto_1
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_6

    .line 2931
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 2932
    .local v3, "stackBounds":Landroid/graphics/Rect;
    iget v4, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 2933
    .local v4, "tempHScale":F
    iget v5, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 2935
    .local v5, "tempVScale":F
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mHScale:F

    iput v6, p0, Lcom/android/server/wm/WindowState;->mFloatingAppHScale:F

    iput v6, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 2936
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mVScale:F

    iput v6, p0, Lcom/android/server/wm/WindowState;->mFloatingAppVScale:F

    iput v6, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 2939
    iget v6, p0, Lcom/android/server/wm/WindowState;->mDssScale:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_2

    .line 2940
    iget v6, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    iget v7, p0, Lcom/android/server/wm/WindowState;->mDssScale:F

    mul-float/2addr v6, v7

    iput v6, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 2941
    iget v6, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    iget v7, p0, Lcom/android/server/wm/WindowState;->mDssScale:F

    mul-float/2addr v6, v7

    iput v6, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 2946
    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2947
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_6

    .line 2948
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 2949
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v2, :cond_6

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v6, v7, :cond_3

    iget v6, v2, Landroid/view/DisplayInfo;->appWidth:I

    iget v7, v2, Landroid/view/DisplayInfo;->appHeight:I

    if-lt v6, v7, :cond_4

    :cond_3
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ge v6, v7, :cond_6

    iget v6, v2, Landroid/view/DisplayInfo;->appWidth:I

    iget v7, v2, Landroid/view/DisplayInfo;->appHeight:I

    if-le v6, v7, :cond_6

    .line 2952
    :cond_4
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mHScale:F

    cmpl-float v6, v6, v8

    if-gtz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_6

    .line 2953
    :cond_5
    iput v4, p0, Lcom/android/server/wm/WindowState;->mFloatingAppHScale:F

    iput v4, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 2954
    iput v5, p0, Lcom/android/server/wm/WindowState;->mFloatingAppVScale:F

    iput v5, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 2959
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v3    # "stackBounds":Landroid/graphics/Rect;
    .end local v4    # "tempHScale":F
    .end local v5    # "tempVScale":F
    :cond_6
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v6, v6, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    iput v6, p0, Lcom/android/server/wm/WindowState;->mToastRequestedOrientation:I

    goto/16 :goto_0

    .line 2927
    :cond_7
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mScaleToastFrame:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mScaleToastFrameWindow:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_1
.end method


# virtual methods
.method attach()V
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v0}, Lcom/android/server/wm/Session;->windowAddedLocked()V

    .line 652
    return-void
.end method

.method public final canReceiveKeys()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1799
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x834

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x836

    if-ne v1, v2, :cond_1

    .line 1815
    :cond_0
    :goto_0
    return v0

    .line 1806
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1807
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1815
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 45
    .param p1, "pf"    # Landroid/graphics/Rect;
    .param p2, "df"    # Landroid/graphics/Rect;
    .param p3, "of"    # Landroid/graphics/Rect;
    .param p4, "cf"    # Landroid/graphics/Rect;
    .param p5, "vf"    # Landroid/graphics/Rect;
    .param p6, "dcf"    # Landroid/graphics/Rect;
    .param p7, "sf"    # Landroid/graphics/Rect;
    .param p8, "osf"    # Landroid/graphics/Rect;

    .prologue
    .line 667
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    .line 670
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    .line 671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_15

    .line 672
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 673
    if-nez p8, :cond_14

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/server/wm/WindowState;->reverseFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 684
    :cond_0
    :goto_1
    const/high16 v34, 0x3f800000    # 1.0f

    .line 685
    .local v34, "resolutionFactorF":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v5, 0x1000000

    and-int/2addr v2, v5

    if-eqz v2, :cond_3

    .line 687
    const/16 v35, 0x0

    .line 688
    .local v35, "runDss":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mIsAdss:Z

    if-eqz v2, :cond_19

    .line 689
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v5, "SurfaceView"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 690
    const/16 v35, 0x1

    .line 704
    :cond_1
    :goto_2
    if-eqz v35, :cond_3

    .line 705
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float v34, v2, v5

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_2

    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowState;->mHScale:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_2

    .line 709
    const/high16 v34, 0x3f800000    # 1.0f

    .line 712
    :cond_2
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 713
    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 714
    move-object/from16 v0, p4

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 715
    move-object/from16 v0, p6

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 716
    move-object/from16 v0, p5

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 717
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 718
    if-eqz p8, :cond_3

    .line 719
    move-object/from16 v0, p8

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 725
    .end local v35    # "runDss":Z
    :cond_3
    const/16 v27, 0x0

    .line 728
    .local v27, "isScaleApply":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v37

    .line 729
    .local v37, "stack":Lcom/android/server/wm/TaskStack;
    :goto_3
    if-eqz v37, :cond_1b

    invoke-virtual/range {v37 .. v37}, Lcom/android/server/wm/TaskStack;->isFullscreen()Z

    move-result v2

    if-nez v2, :cond_1b

    const/16 v29, 0x1

    .line 730
    .local v29, "nonFullscreenStack":Z
    :goto_4
    if-eqz v29, :cond_2e

    .line 733
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v28

    .line 734
    .local v28, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/16 v41, 0x0

    .line 735
    .local v41, "typeSplit":Z
    const/16 v40, 0x0

    .line 736
    .local v40, "typeCascade":Z
    const/16 v31, 0x0

    .line 737
    .local v31, "optionScale":Z
    const/16 v30, 0x0

    .line 738
    .local v30, "optionMinimize":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v26

    .line 739
    .local v26, "isFloating":Z
    const/high16 v2, 0x200000

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v20

    .line 740
    .local v20, "fullScreenOnly":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1c

    const/4 v12, 0x1

    .line 742
    .local v12, "absLayout":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_4

    .line 744
    const/4 v12, 0x1

    .line 746
    :cond_4
    if-nez v12, :cond_5

    if-nez v20, :cond_5

    .line 747
    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v41

    .line 748
    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v40

    .line 749
    const/16 v2, 0x800

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v31

    .line 750
    const/4 v2, 0x4

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v30

    .line 752
    :cond_5
    move/from16 v27, v31

    .line 754
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-nez v2, :cond_6

    if-nez v12, :cond_6

    if-eqz v20, :cond_1d

    .line 755
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 909
    :cond_7
    :goto_6
    if-eqz v40, :cond_2c

    if-nez v26, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v2, :cond_2c

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_2c

    .line 912
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 953
    .end local v12    # "absLayout":Z
    .end local v20    # "fullScreenOnly":Z
    .end local v26    # "isFloating":Z
    .end local v28    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v30    # "optionMinimize":Z
    .end local v31    # "optionScale":Z
    .end local v40    # "typeCascade":Z
    .end local v41    # "typeSplit":Z
    :cond_9
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v33

    .line 954
    .local v33, "pw":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v32

    .line 957
    .local v32, "ph":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_34

    .line 958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-gez v2, :cond_30

    .line 959
    move/from16 v3, v33

    .line 965
    .local v3, "w":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-gez v2, :cond_32

    .line 966
    move/from16 v4, v32

    .line 990
    .local v4, "h":I
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v28

    .line 991
    .restart local v28    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mLastContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 992
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mLastContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 993
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 996
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1000
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 1002
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    if-ne v2, v5, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    if-eq v2, v5, :cond_e

    .line 1003
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    .line 1004
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    .line 1005
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 1007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_e

    .line 1009
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 1014
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1016
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1018
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1019
    if-eqz p8, :cond_39

    const/16 v22, 0x1

    .line 1020
    .local v22, "hasOutsets":Z
    :goto_a
    if-eqz v22, :cond_f

    .line 1021
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1024
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v21

    .line 1025
    .local v21, "fw":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v19

    .line 1028
    .local v19, "fh":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v2, :cond_3a

    .line 1029
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float v43, v2, v5

    .line 1030
    .local v43, "x":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float v44, v2, v5

    .line 1036
    .local v44, "y":F
    :goto_b
    if-eqz v29, :cond_10

    .line 1044
    :cond_10
    if-eqz v27, :cond_3c

    .line 1045
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_3b

    const/4 v11, 0x1

    .line 1046
    .local v11, "isSurfaceView":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    move/from16 v0, v33

    int-to-float v7, v0

    mul-float/2addr v6, v7

    add-float v6, v6, v43

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    move/from16 v0, v32

    int-to-float v8, v0

    mul-float/2addr v7, v8

    add-float v7, v7, v44

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wm/WindowState;->mFloatingAppHScale:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/WindowState;->mFloatingAppVScale:F

    invoke-static/range {v2 .. v11}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;FFZ)V

    .line 1058
    .end local v11    # "isSurfaceView":Z
    :goto_d
    if-eqz v27, :cond_3d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 1061
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowState;->mFloatingAppHScale:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowState;->mFloatingAppVScale:F

    invoke-static {v2, v5, v6, v7, v8}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;FF)V

    .line 1070
    :goto_e
    if-eqz v22, :cond_3e

    .line 1071
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1081
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1091
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1096
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1117
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v2, :cond_11

    .line 1121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 1122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 1123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 1124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 1125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 1132
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    move/from16 v0, v21

    if-ne v0, v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    move/from16 v0, v19

    if-eq v0, v2, :cond_13

    .line 1133
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v17

    .line 1134
    .local v17, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v17, :cond_13

    .line 1135
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v18

    .line 1136
    .local v18, "displayInfo":Landroid/view/DisplayInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v18

    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    move-object/from16 v0, v18

    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 1141
    .end local v17    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v18    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_13
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_LAYOUT:Z

    if-nez v2, :cond_3f

    .line 1150
    :goto_10
    return-void

    .end local v3    # "w":I
    .end local v4    # "h":I
    .end local v19    # "fh":I
    .end local v21    # "fw":I
    .end local v22    # "hasOutsets":Z
    .end local v27    # "isScaleApply":Z
    .end local v28    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v29    # "nonFullscreenStack":Z
    .end local v32    # "ph":I
    .end local v33    # "pw":I
    .end local v34    # "resolutionFactorF":F
    .end local v37    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v43    # "x":F
    .end local v44    # "y":F
    :cond_14
    move-object/from16 v10, p8

    .line 673
    goto/16 :goto_0

    .line 675
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 676
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-le v2, v5, :cond_0

    .line 677
    if-nez p8, :cond_16

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    :goto_11
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/server/wm/WindowState;->reverseFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_16
    move-object/from16 v10, p8

    goto :goto_11

    .line 693
    .restart local v34    # "resolutionFactorF":F
    .restart local v35    # "runDss":Z
    :cond_17
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_1

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/wm/WindowState;

    .line 695
    .local v16, "cwin":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_18

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v5, "SurfaceView"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 696
    const/16 v35, 0x1

    .line 697
    goto/16 :goto_2

    .line 693
    :cond_18
    add-int/lit8 v23, v23, 0x1

    goto :goto_12

    .line 702
    .end local v16    # "cwin":Lcom/android/server/wm/WindowState;
    .end local v23    # "i":I
    :cond_19
    const/16 v35, 0x1

    goto/16 :goto_2

    .line 728
    .end local v35    # "runDss":Z
    .restart local v27    # "isScaleApply":Z
    :cond_1a
    const/16 v37, 0x0

    goto/16 :goto_3

    .line 729
    .restart local v37    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1b
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 740
    .restart local v20    # "fullScreenOnly":Z
    .restart local v26    # "isFloating":Z
    .restart local v28    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v29    # "nonFullscreenStack":Z
    .restart local v30    # "optionMinimize":Z
    .restart local v31    # "optionScale":Z
    .restart local v40    # "typeCascade":Z
    .restart local v41    # "typeSplit":Z
    :cond_1c
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 756
    .restart local v12    # "absLayout":Z
    :cond_1d
    if-eqz v41, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x62

    if-eq v2, v5, :cond_26

    .line 760
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 761
    .local v15, "contentFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, v15}, Landroid/view/WindowManagerPolicy;->getContentRectLw(Landroid/graphics/Rect;)V

    .line 763
    new-instance v38, Landroid/graphics/Rect;

    invoke-direct/range {v38 .. v38}, Landroid/graphics/Rect;-><init>()V

    .line 764
    .local v38, "stackBounds":Landroid/graphics/Rect;
    invoke-virtual/range {v37 .. v38}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 770
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move/from16 v0, v34

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 774
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v2

    if-eqz v2, :cond_23

    const/16 v36, 0x1

    .line 775
    .local v36, "screenRotationAnimation":Z
    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    .line 777
    .local v24, "imeWin":Lcom/android/server/wm/WindowState;
    const/16 v25, 0x0

    .line 787
    .local v25, "isBaseWinOfIMETarget":Z
    if-eqz v24, :cond_25

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v2

    if-eqz v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    if-eq v2, v0, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowState;->isAttachedTo(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v2

    if-nez v2, :cond_1e

    if-eqz v25, :cond_25

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentInputMethodClient:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    if-eq v2, v0, :cond_1f

    if-eqz v36, :cond_25

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    if-le v2, v5, :cond_25

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->isDrawFinishedLw()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_20

    .line 794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 796
    :cond_20
    if-eqz v26, :cond_24

    .line 797
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 809
    :cond_21
    :goto_14
    const/4 v13, 0x1

    .line 810
    .local v13, "applyShownBound":Z
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/wm/TaskStack;->getTopOpaqueAppWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 811
    const/4 v13, 0x0

    .line 814
    :cond_22
    if-nez v26, :cond_7

    if-eqz v13, :cond_7

    .line 815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskStack;->setShownBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_6

    .line 774
    .end local v13    # "applyShownBound":Z
    .end local v24    # "imeWin":Lcom/android/server/wm/WindowState;
    .end local v25    # "isBaseWinOfIMETarget":Z
    .end local v36    # "screenRotationAnimation":Z
    :cond_23
    const/16 v36, 0x0

    goto/16 :goto_13

    .line 799
    .restart local v24    # "imeWin":Lcom/android/server/wm/WindowState;
    .restart local v25    # "isBaseWinOfIMETarget":Z
    .restart local v36    # "screenRotationAnimation":Z
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_14

    .line 802
    :cond_25
    if-eqz v26, :cond_21

    .line 803
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/wm/TaskStack;->getTopOpaqueAppWindow()Lcom/android/server/wm/WindowState;

    move-result-object v42

    .line 804
    .local v42, "win":Lcom/android/server/wm/WindowState;
    if-eqz v42, :cond_21

    .line 805
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v42

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_14

    .line 817
    .end local v15    # "contentFrame":Landroid/graphics/Rect;
    .end local v24    # "imeWin":Lcom/android/server/wm/WindowState;
    .end local v25    # "isBaseWinOfIMETarget":Z
    .end local v36    # "screenRotationAnimation":Z
    .end local v38    # "stackBounds":Landroid/graphics/Rect;
    .end local v42    # "win":Lcom/android/server/wm/WindowState;
    :cond_26
    if-eqz v40, :cond_2b

    .line 819
    const/16 v2, -0x2710

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p4

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p4

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 820
    const/16 v2, 0x2710

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p5

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p4

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p4

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 822
    if-eqz v26, :cond_28

    .line 823
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/wm/TaskStack;->getTopOpaqueAppWindow()Lcom/android/server/wm/WindowState;

    move-result-object v42

    .line 824
    .restart local v42    # "win":Lcom/android/server/wm/WindowState;
    if-eqz v42, :cond_27

    .line 825
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v42

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_6

    .line 827
    :cond_27
    new-instance v38, Landroid/graphics/Rect;

    invoke-direct/range {v38 .. v38}, Landroid/graphics/Rect;-><init>()V

    .line 828
    .restart local v38    # "stackBounds":Landroid/graphics/Rect;
    invoke-virtual/range {v37 .. v38}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 830
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v38

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v38

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    goto/16 :goto_6

    .line 833
    .end local v38    # "stackBounds":Landroid/graphics/Rect;
    .end local v42    # "win":Lcom/android/server/wm/WindowState;
    :cond_28
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 834
    .restart local v15    # "contentFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, v15}, Landroid/view/WindowManagerPolicy;->getContentRectLw(Landroid/graphics/Rect;)V

    .line 836
    new-instance v38, Landroid/graphics/Rect;

    invoke-direct/range {v38 .. v38}, Landroid/graphics/Rect;-><init>()V

    .line 837
    .restart local v38    # "stackBounds":Landroid/graphics/Rect;
    invoke-virtual/range {v37 .. v38}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 838
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Landroid/view/WindowManagerPolicy;->getFloatingStatusBarHeight(Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v39

    .line 840
    .local v39, "statusBarHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 843
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v38

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    move-object/from16 v0, v38

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 844
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    move/from16 v0, v39

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 875
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    .line 876
    .restart local v24    # "imeWin":Lcom/android/server/wm/WindowState;
    if-eqz v24, :cond_2a

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v2

    move-object/from16 v0, v37

    iget v5, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v2, v5, :cond_2a

    move-object/from16 v0, v38

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    if-le v2, v5, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentInputMethodClient:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentInputMethodClient:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v2

    move-object/from16 v0, v37

    iget v5, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v2, v5, :cond_2a

    .line 883
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v38

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 884
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->top:I

    if-ge v2, v5, :cond_29

    .line 885
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 887
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->height()I

    move-result v6

    mul-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    div-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 888
    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    div-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v2, v5

    move-object/from16 v0, p4

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 900
    :cond_2a
    new-instance v14, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-direct {v14, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 901
    .local v14, "bounds":Landroid/graphics/Rect;
    iget v2, v14, Landroid/graphics/Rect;->left:I

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v2, v5

    iput v2, v14, Landroid/graphics/Rect;->right:I

    .line 902
    iget v2, v14, Landroid/graphics/Rect;->top:I

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v2, v5

    iput v2, v14, Landroid/graphics/Rect;->bottom:I

    .line 903
    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Lcom/android/server/wm/TaskStack;->setShownBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_6

    .line 906
    .end local v14    # "bounds":Landroid/graphics/Rect;
    .end local v15    # "contentFrame":Landroid/graphics/Rect;
    .end local v24    # "imeWin":Lcom/android/server/wm/WindowState;
    .end local v38    # "stackBounds":Landroid/graphics/Rect;
    .end local v39    # "statusBarHeight":I
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_6

    .line 913
    :cond_2c
    if-eqz v41, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v2, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_2d

    .line 915
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_7

    .line 917
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_7

    .line 936
    .end local v12    # "absLayout":Z
    .end local v20    # "fullScreenOnly":Z
    .end local v26    # "isFloating":Z
    .end local v28    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v30    # "optionMinimize":Z
    .end local v31    # "optionScale":Z
    .end local v40    # "typeCascade":Z
    .end local v41    # "typeSplit":Z
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 941
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->updateToastFrame()V

    .line 942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mSplitToastFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 943
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mSplitToastFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_7

    .line 944
    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mScaleToastFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mScaleToastFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 946
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 947
    const/16 v27, 0x1

    goto/16 :goto_7

    .line 960
    .restart local v32    # "ph":I
    .restart local v33    # "pw":I
    :cond_30
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v2, :cond_31

    .line 961
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v2, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v2, v5

    float-to-int v3, v2

    .restart local v3    # "w":I
    goto/16 :goto_8

    .line 963
    .end local v3    # "w":I
    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .restart local v3    # "w":I
    goto/16 :goto_8

    .line 967
    :cond_32
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v2, :cond_33

    .line 968
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v2, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v2, v5

    float-to-int v4, v2

    .restart local v4    # "h":I
    goto/16 :goto_9

    .line 970
    .end local v4    # "h":I
    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .restart local v4    # "h":I
    goto/16 :goto_9

    .line 973
    .end local v3    # "w":I
    .end local v4    # "h":I
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_35

    .line 974
    move/from16 v3, v33

    .line 980
    .restart local v3    # "w":I
    :goto_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_37

    .line 981
    move/from16 v4, v32

    .restart local v4    # "h":I
    goto/16 :goto_9

    .line 975
    .end local v3    # "w":I
    .end local v4    # "h":I
    :cond_35
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v2, :cond_36

    .line 976
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v2, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v2, v5

    float-to-int v3, v2

    .restart local v3    # "w":I
    goto :goto_15

    .line 978
    .end local v3    # "w":I
    :cond_36
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .restart local v3    # "w":I
    goto :goto_15

    .line 982
    :cond_37
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v2, :cond_38

    .line 983
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v2, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v2, v5

    float-to-int v4, v2

    .restart local v4    # "h":I
    goto/16 :goto_9

    .line 985
    .end local v4    # "h":I
    :cond_38
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .restart local v4    # "h":I
    goto/16 :goto_9

    .line 1019
    .restart local v28    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_39
    const/16 v22, 0x0

    goto/16 :goto_a

    .line 1032
    .restart local v19    # "fh":I
    .restart local v21    # "fw":I
    .restart local v22    # "hasOutsets":Z
    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v2

    move/from16 v43, v0

    .line 1033
    .restart local v43    # "x":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v2

    move/from16 v44, v0

    .restart local v44    # "y":F
    goto/16 :goto_b

    .line 1045
    :cond_3b
    const/4 v11, 0x0

    goto/16 :goto_c

    .line 1052
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    move/from16 v0, v33

    int-to-float v7, v0

    mul-float/2addr v6, v7

    add-float v6, v6, v43

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    move/from16 v0, v32

    int-to-float v8, v0

    mul-float/2addr v7, v8

    add-float v7, v7, v44

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-static/range {v2 .. v8}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    goto/16 :goto_d

    .line 1066
    :cond_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-static {v2, v5, v6}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_e

    .line 1076
    :cond_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_f

    .line 1141
    :cond_3f
    const-string v2, "WindowState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resolving (mRequestedWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRequestedheight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") to"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (pw="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ph="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): frame="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ci="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " vi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " vi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10
.end method

.method public disableHideSViewCoverOnce(Z)V
    .locals 1
    .param p1, "hide"    # Z

    .prologue
    .line 2489
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean p1, v0, Lcom/android/server/wm/WindowToken;->disableHideSViewCoverOnce:Z

    .line 2490
    return-void
.end method

.method disposeInputChannel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1760
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    .line 1761
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 1763
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 1764
    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 1767
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-object v2, v0, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 1768
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .prologue
    const/high16 v9, -0x80000000

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v7, -0x40800000    # -1.0f

    .line 2499
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 2500
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mDisplayId="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2501
    if-eqz v1, :cond_0

    .line 2502
    const-string v4, " stackId="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2504
    :cond_0
    const-string v4, " mSession="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2505
    const-string v4, " mClient="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2506
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mOwnerUid="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2507
    const-string v4, " mShowToOwnerOnly="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2508
    const-string v4, " package="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2509
    const-string v4, " appop="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2510
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mAttrs="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2511
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Requested w="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2512
    const-string v4, " h="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2513
    const-string v4, " mLayoutSeq="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2514
    iget v4, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v5, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    if-ne v4, v5, :cond_1

    iget v4, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    iget v5, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    if-eq v4, v5, :cond_2

    .line 2515
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "LastRequested w="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2516
    const-string v4, " h="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2518
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v4, :cond_4

    .line 2519
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mAttachedWindow="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2520
    const-string v4, " mLayoutAttached="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2522
    :cond_4
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    if-eqz v4, :cond_6

    .line 2523
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mIsImWindow="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2524
    const-string v4, " mIsWallpaper="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2525
    const-string v4, " mIsFloatingLayer="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2526
    const-string v4, " mWallpaperVisible="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2528
    :cond_6
    if-eqz p3, :cond_7

    .line 2529
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mBaseLayer="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2530
    const-string v4, " mSubLayer="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2531
    const-string v4, " mAnimLayer="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, "+"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2532
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_2a

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v4, v4, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    :goto_0
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2535
    const-string v4, "="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2536
    const-string v4, " mLastLayer="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2538
    :cond_7
    if-eqz p3, :cond_a

    .line 2539
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mToken="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2540
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mRootToken="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2541
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_8

    .line 2542
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mAppToken="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2544
    :cond_8
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_9

    .line 2545
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mTargetAppToken="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2547
    :cond_9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mViewVisibility=0x"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2548
    iget v4, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2549
    const-string v4, " mHaveFrame="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2550
    const-string v4, " mObscured="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mObscured:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2551
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mSeq="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowState;->mSeq:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2552
    const-string v4, " mSystemUiVisibility=0x"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2553
    iget v4, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2555
    :cond_a
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v4, :cond_b

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz v4, :cond_b

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eqz v4, :cond_b

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-eqz v4, :cond_c

    .line 2557
    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mPolicyVisibility="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2558
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2559
    const-string v4, " mPolicyVisibilityAfterAnim="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2560
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2561
    const-string v4, " mAppOpVisibility="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2562
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2563
    const-string v4, " mAttachedHidden="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2565
    :cond_c
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v4, :cond_d

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v4, :cond_e

    .line 2566
    :cond_d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mRelayoutCalled="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2567
    const-string v4, " mLayoutNeeded="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2569
    :cond_e
    iget v4, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    if-nez v4, :cond_f

    iget v4, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    if-eqz v4, :cond_10

    .line 2570
    :cond_f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Offsets x="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2571
    const-string v4, " y="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2573
    :cond_10
    if-eqz p3, :cond_13

    .line 2574
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mGivenContentInsets="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2575
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2576
    const-string v4, " mGivenVisibleInsets="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2577
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2578
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2579
    iget v4, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    if-nez v4, :cond_11

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-eqz v4, :cond_12

    .line 2580
    :cond_11
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mTouchableInsets="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2581
    const-string v4, " mGivenInsetsPending="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2582
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 2583
    .local v0, "region":Landroid/graphics/Region;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 2584
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "touchable region="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2586
    .end local v0    # "region":Landroid/graphics/Region;
    :cond_12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mConfiguration="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2587
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mOverrideConfig:Landroid/content/res/Configuration;

    sget-object v5, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    if-eq v4, v5, :cond_13

    .line 2588
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mOverrideConfig="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2591
    :cond_13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mHasSurface="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2592
    const-string v4, " mShownFrame="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    invoke-virtual {v4, p1}, Landroid/graphics/RectF;->printShortString(Ljava/io/PrintWriter;)V

    .line 2593
    const-string v4, " isReadyForDisplay()="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2594
    if-eqz p3, :cond_15

    .line 2595
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mFrame="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2596
    const-string v4, " last="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2597
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2598
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mSystemDecorRect="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2599
    const-string v4, " last="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mLastSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2600
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    if-eqz v4, :cond_14

    .line 2601
    const-string v4, " mLastClipRect="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2602
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2604
    :cond_14
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2606
    :cond_15
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v4, :cond_16

    .line 2607
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mCompatFrame="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2608
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2610
    :cond_16
    if-eqz p3, :cond_17

    .line 2611
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Frames: containing="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2612
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2613
    const-string v4, " parent="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2614
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2615
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    display="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2616
    const-string v4, " overscan="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2617
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2618
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    content="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2619
    const-string v4, " visible="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2620
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2621
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    decor="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2622
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2623
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    outset="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2624
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2625
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Cur insets: overscan="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2626
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2627
    const-string v4, " content="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2628
    const-string v4, " visible="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2629
    const-string v4, " stable="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2630
    const-string v4, " outsets="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2631
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2632
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Lst insets: overscan="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2633
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2634
    const-string v4, " content="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2635
    const-string v4, " visible="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2636
    const-string v4, " stable="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mLastStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2637
    const-string v4, " physical="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2638
    const-string v4, " outset="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 2639
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2641
    :cond_17
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2642
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5, p3}, Lcom/android/server/wm/WindowStateAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2643
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v4, :cond_18

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-nez v4, :cond_18

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v4, :cond_18

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v4, :cond_19

    .line 2644
    :cond_18
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mExiting="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2645
    const-string v4, " mRemoveOnExit="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2646
    const-string v4, " mDestroying="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2647
    const-string v4, " mRemoved="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2649
    :cond_19
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-nez v4, :cond_1a

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v4, :cond_1a

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v4, :cond_1b

    .line 2650
    :cond_1a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mOrientationChanging="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2651
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2652
    const-string v4, " mAppFreezing="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 2653
    const-string v4, " mTurnOnScreen="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2655
    :cond_1b
    iget v4, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    if-eqz v4, :cond_1c

    .line 2656
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mLastFreezeDuration="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2657
    iget v4, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    int-to-long v4, v4

    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2659
    :cond_1c
    iget v4, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_1d

    iget v4, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_1e

    .line 2660
    :cond_1d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mHScale="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(F)V

    .line 2661
    const-string v4, " mVScale="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(F)V

    .line 2663
    :cond_1e
    iget v4, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_1f

    iget v4, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_20

    .line 2664
    :cond_1f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mWallpaperX="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(F)V

    .line 2665
    const-string v4, " mWallpaperY="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(F)V

    .line 2667
    :cond_20
    iget v4, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_21

    iget v4, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_22

    .line 2668
    :cond_21
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mWallpaperXStep="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(F)V

    .line 2669
    const-string v4, " mWallpaperYStep="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(F)V

    .line 2671
    :cond_22
    iget v4, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-ne v4, v9, :cond_23

    iget v4, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v4, v9, :cond_24

    .line 2673
    :cond_23
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mWallpaperDisplayOffsetX="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2674
    iget v4, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2675
    const-string v4, " mWallpaperDisplayOffsetY="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2676
    iget v4, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2681
    :cond_24
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mHideBySViewCover:Z

    if-eqz v4, :cond_25

    .line 2682
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mHideBySvc="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mHideBySViewCover:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2687
    :cond_25
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_26

    .line 2688
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDrawLock="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2692
    :cond_26
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mWaitingForOrientation="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mWaitingForOrientation:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2693
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "shouldHideWhileStartingWindowIsShown="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->shouldHideWhileStartingWindowIsShown(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2694
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mDelayedResize="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mDelayedResize:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2699
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    .line 2700
    .local v3, "windowType":I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "windowType="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2701
    if-nez v3, :cond_2c

    .line 2702
    const-string/jumbo v4, "normal"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2708
    :goto_1
    const-string v4, " : "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2709
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Current zone bounds="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2710
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2711
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_28

    .line 2712
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Current stack bounds="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2713
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2714
    .local v2, "stackBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    if-eqz v4, :cond_27

    .line 2715
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 2717
    :cond_27
    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2719
    .end local v2    # "stackBounds":Landroid/graphics/Rect;
    :cond_28
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mMultiWindowStyleChanging:Z

    if-eqz v4, :cond_29

    .line 2720
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mMultiWindowStyleChanging="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mMultiWindowStyleChanging:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 2733
    :cond_29
    return-void

    .line 2532
    .end local v3    # "windowType":I
    :cond_2a
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_2b

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v4, v4, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    goto/16 :goto_0

    :cond_2b
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2703
    .restart local v3    # "windowType":I
    :cond_2c
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2d

    .line 2704
    const-string/jumbo v4, "split"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 2706
    :cond_2d
    const-string v4, "cascade"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAppToken()Landroid/view/IApplicationToken;
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppTokenTaskId()I
    .locals 1

    .prologue
    .line 3023
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAttrs()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getBaseType()I
    .locals 2

    .prologue
    .line 1242
    move-object v0, p0

    .line 1243
    .local v0, "win":Lcom/android/server/wm/WindowState;
    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    .line 1244
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 1246
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    return v1
.end method

.method public getContentFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCoverMode()I
    .locals 2

    .prologue
    .line 2473
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    .line 2474
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2

    .line 2475
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x833

    if-ne v0, v1, :cond_0

    .line 2476
    const/16 v0, 0x10

    .line 2484
    :goto_0
    return v0

    .line 2478
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    goto :goto_0

    .line 2480
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2

    .line 2481
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    goto :goto_0

    .line 2484
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 2

    .prologue
    .line 1270
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mNotOnAppsDisplay:Z

    if-eqz v1, :cond_1

    .line 1271
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1274
    :goto_0
    return-object v1

    .line 1273
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 1274
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_0
.end method

.method public getDisplayFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDisplayId()I
    .locals 2

    .prologue
    .line 1278
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1279
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_0

    .line 1280
    const/4 v1, -0x1

    .line 1282
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    goto :goto_0
.end method

.method public getDssScale()F
    .locals 1

    .prologue
    .line 2786
    iget v0, p0, Lcom/android/server/wm/WindowState;->mDssScale:F

    return v0
.end method

.method public getFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGivenContentInsetsLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGivenInsetsPendingLw()Z
    .locals 1

    .prologue
    .line 1184
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    return v0
.end method

.method public getGivenVisibleInsetsLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 2818
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getInputDispatchingTimeoutNanos()J
    .locals 2

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-wide v0, v0, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x12a05f200L

    goto :goto_0
.end method

.method public getMainWindow()Lcom/android/server/wm/WindowState;
    .locals 2

    .prologue
    .line 2893
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    .line 2894
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2897
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 1

    .prologue
    .line 2763
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    goto :goto_0
.end method

.method public getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 6
    .param p1, "bottom"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1204
    const/4 v0, -0x1

    .line 1205
    .local v0, "index":I
    move-object v2, p0

    .line 1206
    .local v2, "ws":Lcom/android/server/wm/WindowState;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v1

    .line 1208
    .local v1, "windows":Lcom/android/server/wm/WindowList;
    :goto_0
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    if-eqz v5, :cond_2

    .line 1209
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    if-ne v5, v3, :cond_1

    :goto_1
    move v4, v3

    .line 1224
    :cond_0
    return v4

    :cond_1
    move v3, v4

    .line 1209
    goto :goto_1

    .line 1213
    :cond_2
    if-eq v2, p1, :cond_0

    .line 1219
    if-gez v0, :cond_3

    .line 1220
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1222
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 1223
    if-ltz v0, :cond_0

    .line 1226
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ws":Lcom/android/server/wm/WindowState;
    check-cast v2, Lcom/android/server/wm/WindowState;

    .restart local v2    # "ws":Lcom/android/server/wm/WindowState;
    goto :goto_0
.end method

.method public getOverscanFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getOwningPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getOwningUid()I
    .locals 1

    .prologue
    .line 656
    iget v0, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    return v0
.end method

.method public getRequestedHeightLw()I
    .locals 1

    .prologue
    .line 2834
    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    return v0
.end method

.method public getRequestedOrientation()I
    .locals 1

    .prologue
    .line 2823
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRequestedWidthLw()I
    .locals 1

    .prologue
    .line 2829
    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    return v0
.end method

.method public getScaleFactor()Landroid/graphics/PointF;
    .locals 3

    .prologue
    .line 2769
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    iget v2, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getShownFrameLw()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    return-object v0
.end method

.method getStack()Lcom/android/server/wm/TaskStack;
    .locals 5

    .prologue
    .line 1286
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v2, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 1287
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    :goto_0
    if-eqz v1, :cond_2

    .line 1288
    iget-object v0, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    .line 1289
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_2

    .line 1290
    iget-object v2, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v2, :cond_1

    .line 1291
    iget-object v2, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 1296
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :goto_1
    return-object v2

    .line 1286
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    goto :goto_0

    .line 1293
    .restart local v0    # "task":Lcom/android/server/wm/Task;
    .restart local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_1
    const-string v2, "WindowState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStack: mStack null for task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    goto :goto_1
.end method

.method public getStackBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 2774
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2775
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->getStackBounds(Landroid/graphics/Rect;)V

    .line 2776
    return-object v0
.end method

.method getStackBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1311
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 1312
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_2

    .line 1313
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 1317
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isMultiWindowStack()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1318
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1319
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 1357
    :cond_1
    :goto_0
    return-void

    .line 1356
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getStackId()I
    .locals 2

    .prologue
    .line 1301
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 1302
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_0

    .line 1303
    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 1305
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method getSubWindowBounds()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 3169
    const/4 v1, 0x0

    .line 3170
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_1

    .line 3171
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 3172
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x62

    if-ne v3, v4, :cond_0

    .line 3173
    new-instance v1, Landroid/graphics/Rect;

    .end local v1    # "r":Landroid/graphics/Rect;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3178
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    .restart local v1    # "r":Landroid/graphics/Rect;
    :cond_1
    return-object v1
.end method

.method public getSurfaceLayer()I
    .locals 1

    .prologue
    .line 1237
    iget v0, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    return v0
.end method

.method public getSystemUiVisibility()I
    .locals 1

    .prologue
    .line 1232
    iget v0, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    return v0
.end method

.method public getTargetAppTokenStackId()I
    .locals 2

    .prologue
    .line 3033
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    .line 3034
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    .line 3035
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    .line 3036
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_0

    .line 3037
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 3041
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getTargetAppTokenTaskId()I
    .locals 1

    .prologue
    .line 3028
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic getTopFullWindowInSameTask()Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTopFullWindowInSameTask()Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method public getTopFullWindowInSameTask()Lcom/android/server/wm/WindowState;
    .locals 6

    .prologue
    .line 2852
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v5, v5, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-nez v5, :cond_2

    .line 2853
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v5, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    .line 2854
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_2

    .line 2855
    iget-object v4, v2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 2856
    .local v4, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v4}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .line 2857
    .local v1, "firstToken":I
    move v3, v1

    .local v3, "tokenNdx":I
    :goto_0
    if-ltz v3, :cond_2

    .line 2858
    invoke-virtual {v4, v3}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    .line 2859
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v5, :cond_0

    iget-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->willBeHidden:Z

    if-nez v5, :cond_0

    iget-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-nez v5, :cond_1

    .line 2857
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2862
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    .line 2866
    .end local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v1    # "firstToken":I
    .end local v2    # "task":Lcom/android/server/wm/Task;
    .end local v3    # "tokenNdx":I
    .end local v4    # "tokens":Lcom/android/server/wm/AppTokenList;
    :goto_1
    return-object v5

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    goto :goto_1
.end method

.method public getTopPenWindowControllerInStack()Landroid/view/IApplicationToken;
    .locals 2

    .prologue
    .line 2871
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 2872
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/TaskStack;->mTopPenWindowControllerToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    .line 2873
    iget-object v1, v0, Lcom/android/server/wm/TaskStack;->mTopPenWindowControllerToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    .line 2875
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTouchableRegion(Landroid/graphics/Region;)V
    .locals 12
    .param p1, "outRegion"    # Landroid/graphics/Region;

    .prologue
    const/high16 v11, 0x3f000000    # 0.5f

    .line 2075
    new-instance v2, Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-direct {v2, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2076
    .local v2, "frame":Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 2077
    .local v5, "optionScale":Z
    const/4 v4, 0x0

    .line 2078
    .local v4, "optionMinimized":Z
    const/4 v0, 0x0

    .line 2081
    .local v0, "applyResizableInset":Z
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    const/16 v9, 0x800

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    .line 2082
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    .line 2084
    if-eqz v5, :cond_0

    .line 2087
    iget v8, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float/2addr v9, v10

    add-float/2addr v9, v11

    float-to-int v9, v9

    add-int/2addr v8, v9

    iput v8, v2, Landroid/graphics/Rect;->right:I

    .line 2088
    iget v8, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float/2addr v9, v10

    add-float/2addr v9, v11

    float-to-int v9, v9

    add-int/2addr v8, v9

    iput v8, v2, Landroid/graphics/Rect;->bottom:I

    .line 2099
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v8, v8, Lcom/android/server/wm/WindowManagerService;->mIsRecentsMultiWindowRunning:Z

    if-eqz v8, :cond_1

    .line 2100
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2103
    :cond_1
    if-eqz v5, :cond_2

    if-nez v4, :cond_2

    .line 2104
    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v8

    if-nez v8, :cond_2

    .line 2105
    const/4 v0, 0x1

    .line 2112
    :cond_2
    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v9, 0x1000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_3

    .line 2113
    iget v8, v2, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v2, Landroid/graphics/Rect;->left:I

    .line 2114
    iget v8, v2, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v2, Landroid/graphics/Rect;->top:I

    .line 2115
    iget v8, v2, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v2, Landroid/graphics/Rect;->right:I

    .line 2116
    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v2, Landroid/graphics/Rect;->bottom:I

    .line 2120
    :cond_3
    iget v8, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    packed-switch v8, :pswitch_data_0

    .line 2125
    if-eqz v0, :cond_4

    .line 2126
    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy;->getScaleWindowResizableSize()I

    move-result v6

    .line 2127
    .local v6, "resizableSize":I
    neg-int v8, v6

    neg-int v9, v6

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Rect;->inset(II)V

    .line 2131
    .end local v6    # "resizableSize":I
    :cond_4
    invoke-virtual {p1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 2253
    :cond_5
    :goto_0
    return-void

    .line 2137
    :pswitch_0
    new-instance v1, Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-direct {v1, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2139
    .local v1, "contentInsets":Landroid/graphics/Rect;
    if-eqz v5, :cond_6

    .line 2140
    iget v8, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float/2addr v9, v10

    add-float/2addr v9, v11

    float-to-int v9, v9

    add-int/2addr v8, v9

    iput v8, v1, Landroid/graphics/Rect;->right:I

    .line 2141
    iget v8, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float/2addr v9, v10

    add-float/2addr v9, v11

    float-to-int v9, v9

    add-int/2addr v8, v9

    iput v8, v1, Landroid/graphics/Rect;->bottom:I

    .line 2143
    :cond_6
    iget v8, p0, Lcom/android/server/wm/WindowState;->mDssScale:F

    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->scale(F)V

    .line 2144
    invoke-static {p1, v2, v1}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 2171
    .end local v1    # "contentInsets":Landroid/graphics/Rect;
    :pswitch_1
    new-instance v7, Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-direct {v7, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2173
    .local v7, "visibleInsets":Landroid/graphics/Rect;
    if-eqz v5, :cond_7

    .line 2174
    iget v8, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float/2addr v9, v10

    add-float/2addr v9, v11

    float-to-int v9, v9

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 2175
    iget v8, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float/2addr v9, v10

    add-float/2addr v9, v11

    float-to-int v9, v9

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 2177
    :cond_7
    iget v8, p0, Lcom/android/server/wm/WindowState;->mDssScale:F

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->scale(F)V

    .line 2178
    invoke-static {p1, v2, v7}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 2201
    .end local v7    # "visibleInsets":Landroid/graphics/Rect;
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    .line 2202
    .local v3, "givenTouchableRegion":Landroid/graphics/Region;
    invoke-virtual {p1, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 2207
    if-eqz v5, :cond_8

    .line 2208
    iget v8, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    iget v9, p0, Lcom/android/server/wm/WindowState;->mDssScale:F

    div-float/2addr v8, v9

    invoke-virtual {p1, v8}, Landroid/graphics/Region;->scale(F)V

    .line 2212
    :cond_8
    iget v8, p0, Lcom/android/server/wm/WindowState;->mDssScale:F

    invoke-virtual {p1, v8}, Landroid/graphics/Region;->scale(F)V

    .line 2224
    if-nez v4, :cond_5

    .line 2225
    iget v8, v2, Landroid/graphics/Rect;->left:I

    iget v9, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Region;->translate(II)V

    goto/16 :goto_0

    .line 2120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getVisibleFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getWindowEasyOneHandScaleSpecLocked()Landroid/view/MagnificationSpec;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3071
    const/4 v0, 0x0

    .line 3073
    .local v0, "spec":Landroid/view/MagnificationSpec;
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mEasyOneHandScaleSpec:Landroid/view/MagnificationSpec;

    .line 3081
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3082
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_1

    .line 3083
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->canMagnifyWindow(I)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 3092
    .end local v0    # "spec":Landroid/view/MagnificationSpec;
    :cond_0
    :goto_0
    return-object v0

    .line 3087
    .restart local v0    # "spec":Landroid/view/MagnificationSpec;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->canMagnifyWindow(I)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 3088
    goto :goto_0
.end method

.method getWindowList()Lcom/android/server/wm/WindowList;
    .locals 2

    .prologue
    .line 2256
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2257
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v1

    goto :goto_0
.end method

.method public hasAppShownWindows()Z
    .locals 1

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasChild()Z
    .locals 1

    .prologue
    .line 2839
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDrawnLw()Z
    .locals 2

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasMoved()Z
    .locals 2

    .prologue
    .line 1663
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->okToDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubWindow()Z
    .locals 1

    .prologue
    .line 3151
    const/4 v0, 0x0

    return v0
.end method

.method public hideLw(Z)Z
    .locals 1
    .param p1, "doAnimation"    # Z

    .prologue
    .line 1894
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v0

    return v0
.end method

.method hideLw(ZZ)Z
    .locals 1
    .param p1, "doAnimation"    # Z
    .param p2, "requestAnim"    # Z

    .prologue
    .line 1899
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZZ)Z

    move-result v0

    return v0
.end method

.method public hideLw(ZZZ)Z
    .locals 8
    .param p1, "doAnimation"    # Z
    .param p2, "requestAnim"    # Z
    .param p3, "withSubWindow"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1905
    if-eqz p1, :cond_0

    .line 1906
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->okToDisplay(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1907
    const/4 p1, 0x0

    .line 1910
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 1912
    .local v0, "current":Z
    :goto_0
    if-nez v0, :cond_2

    .line 1950
    :goto_1
    return v3

    .line 1910
    .end local v0    # "current":Z
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    goto :goto_0

    .line 1918
    .restart local v0    # "current":Z
    :cond_2
    if-eqz p3, :cond_3

    .line 1919
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1920
    .local v2, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2, v3, v3, v3}, Lcom/android/server/wm/WindowState;->hideLw(ZZZ)Z

    goto :goto_2

    .line 1925
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    :cond_3
    if-eqz p1, :cond_4

    .line 1926
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v3}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 1927
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v5, :cond_4

    .line 1928
    const/4 p1, 0x0

    .line 1931
    :cond_4
    if-eqz p1, :cond_7

    .line 1932
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 1947
    :cond_5
    :goto_3
    if-eqz p2, :cond_6

    .line 1948
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_6
    move v3, v4

    .line 1950
    goto :goto_1

    .line 1934
    :cond_7
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v5, :cond_8

    const-string v5, "WindowState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Policy visibility false: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    :cond_8
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 1936
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 1940
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 1941
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v3, p0, :cond_5

    .line 1942
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v3, :cond_9

    const-string v3, "WindowState"

    const-string v5, "WindowState.hideLw: setting mFocusMayChange true"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    :cond_9
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v4, v3, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    goto :goto_3
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 1999
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public isAnimatingLw()Z
    .locals 1

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isArrangedUpperSideInputMethod()Z
    .locals 2

    .prologue
    .line 2803
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 2804
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_0

    .line 2805
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isArrangedUpperSideInputMethod()Z

    move-result v1

    .line 2808
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAttachedTo(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 1
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 2889
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAttachedWindowFocused()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2844
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    .line 2845
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-ne v1, p0, :cond_0

    const/4 v0, 0x1

    .line 2847
    :cond_0
    return v0
.end method

.method isClosing()Z
    .locals 2

    .prologue
    .line 2008
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isConfigChanged()Z
    .locals 5

    .prologue
    .line 1680
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .line 1681
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_3

    iget-object v1, v3, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 1700
    .local v1, "overrideConfig":Landroid/content/res/Configuration;
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v4, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    .line 1701
    .local v2, "serviceConfig":Landroid/content/res/Configuration;
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v4, v2, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mOverrideConfig:Landroid/content/res/Configuration;

    if-eq v4, v1, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_1
    const/4 v0, 0x1

    .line 1705
    .local v0, "configChanged":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_2

    .line 1707
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mConfigHasChanged:Z

    or-int/2addr v4, v0

    iput-boolean v4, p0, Lcom/android/server/wm/WindowState;->mConfigHasChanged:Z

    .line 1708
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mConfigHasChanged:Z

    .line 1711
    :cond_2
    return v0

    .line 1681
    .end local v0    # "configChanged":Z
    .end local v1    # "overrideConfig":Landroid/content/res/Configuration;
    .end local v2    # "serviceConfig":Landroid/content/res/Configuration;
    :cond_3
    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    goto :goto_0

    .line 1701
    .restart local v1    # "overrideConfig":Landroid/content/res/Configuration;
    .restart local v2    # "serviceConfig":Landroid/content/res/Configuration;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isCustomStartingAnimationLw()Z
    .locals 5

    .prologue
    .line 3185
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_1

    .line 3186
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 3187
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3188
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 3189
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ec

    if-ne v3, v4, :cond_0

    .line 3190
    const/4 v3, 0x1

    .line 3194
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :goto_1
    return v3

    .line 3187
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3194
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isDefaultDisplay()Z
    .locals 2

    .prologue
    .line 2018
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2019
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_0

    .line 2021
    const/4 v1, 0x0

    .line 2023
    :goto_0
    return v1

    :cond_0
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    goto :goto_0
.end method

.method public isDimming()Z
    .locals 2

    .prologue
    .line 2028
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 2029
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_0

    .line 2030
    const/4 v1, 0x0

    .line 2032
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->isDimming(Lcom/android/server/wm/WindowStateAnimator;)Z

    move-result v1

    goto :goto_0
.end method

.method public isDisplayedLw()Z
    .locals 2

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1583
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDrawFinishedLw()Z
    .locals 2

    .prologue
    .line 1630
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrawnLw()Z
    .locals 2

    .prologue
    .line 1642
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExiting()Z
    .locals 1

    .prologue
    .line 2013
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    return v0
.end method

.method public isFixedBounds()Z
    .locals 1

    .prologue
    .line 2781
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/TaskStack;->mFixedBound:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFloating()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 2791
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_0

    .line 2795
    const/4 v0, 0x0

    .line 2797
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 2

    .prologue
    .line 2464
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2465
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2466
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isFullscreen(II)Z
    .locals 3
    .param p1, "screenWidth"    # I
    .param p2, "screenHeight"    # I

    .prologue
    const/4 v0, 0x0

    .line 1671
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 1675
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-lt v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lt v1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isGoneForLayoutLw()Z
    .locals 3

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1602
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v1, :cond_3

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-nez v1, :cond_3

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isGoneForMWLayoutLw()Z
    .locals 3

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1615
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v1, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isHiddenFromUserLocked()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2041
    move-object v2, p0

    .line 2042
    .local v2, "win":Lcom/android/server/wm/WindowState;
    :goto_0
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_0

    .line 2043
    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 2045
    :cond_0
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7d0

    if-ge v5, v6, :cond_3

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_3

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v5, v5, Lcom/android/server/wm/AppWindowToken;->showForAllUsers:Z

    if-eqz v5, :cond_3

    .line 2049
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2050
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_2

    .line 2062
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_1
    :goto_1
    return v3

    .line 2053
    .restart local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 2054
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gtz v5, :cond_3

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gtz v5, :cond_3

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/view/DisplayInfo;->appWidth:I

    if-lt v5, v6, :cond_3

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/view/DisplayInfo;->appHeight:I

    if-lt v5, v6, :cond_3

    move v3, v4

    .line 2058
    goto :goto_1

    .line 2062
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_3
    iget-boolean v5, v2, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_4
    move v3, v4

    goto :goto_1
.end method

.method public isHomeType()Z
    .locals 2

    .prologue
    .line 3218
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_0

    .line 3220
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v0}, Landroid/view/IApplicationToken;->isHomeWindow()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3224
    :goto_0
    return v0

    .line 3222
    :catch_0
    move-exception v0

    .line 3224
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isIdentityMatrix(FFFF)Z
    .locals 6
    .param p1, "dsdx"    # F
    .param p2, "dtdx"    # F
    .param p3, "dsdy"    # F
    .param p4, "dtdy"    # F

    .prologue
    const v5, 0x3f800054    # 1.00001f

    const v4, 0x3f7fff58    # 0.99999f

    const v3, 0x358637bd    # 1.0E-6f

    const v2, -0x4a79c843    # -1.0E-6f

    const/4 v0, 0x0

    .line 1371
    cmpg-float v1, p1, v4

    if-ltz v1, :cond_0

    cmpl-float v1, p1, v5

    if-lez v1, :cond_1

    .line 1375
    :cond_0
    :goto_0
    return v0

    .line 1372
    :cond_1
    cmpg-float v1, p4, v4

    if-ltz v1, :cond_0

    cmpl-float v1, p4, v5

    if-gtz v1, :cond_0

    .line 1373
    cmpg-float v1, p2, v2

    if-ltz v1, :cond_0

    cmpl-float v1, p2, v3

    if-gtz v1, :cond_0

    .line 1374
    cmpg-float v1, p3, v2

    if-ltz v1, :cond_0

    cmpl-float v1, p3, v3

    if-gtz v1, :cond_0

    .line 1375
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInputMethodTargetLw()Z
    .locals 1

    .prologue
    .line 3211
    const/4 v0, 0x1

    return v0
.end method

.method public isOnScreen()Z
    .locals 1

    .prologue
    .line 1492
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreenIgnoringKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isOnScreenIgnoringKeyguard()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1500
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v3, :cond_1

    .line 1508
    :cond_0
    :goto_0
    return v1

    .line 1503
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1504
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_4

    .line 1505
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v3, :cond_2

    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 1508
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method isOpaqueDrawn()Z
    .locals 2

    .prologue
    .line 1652
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isOverrideConfigChanged()Z
    .locals 3

    .prologue
    .line 1716
    const/4 v1, 0x0

    .line 1717
    .local v1, "overrideConfigChanged":Z
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1718
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    iget-object v0, v2, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 1719
    .local v0, "overrideConfig":Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOverrideConfig:Landroid/content/res/Configuration;

    if-eq v2, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 1721
    .end local v0    # "overrideConfig":Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    return v1

    .line 1719
    .restart local v0    # "overrideConfig":Landroid/content/res/Configuration;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isPotentialDragTarget()Z
    .locals 1

    .prologue
    .line 1463
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isReadyForDisplay()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1524
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1531
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isReadyForDisplayIgnoringKeyguard()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1544
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->shouldHideWhileStartingWindowIsShown(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1568
    :cond_0
    :goto_0
    return v1

    .line 1556
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1562
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1563
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_3

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v2, :cond_0

    .line 1568
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_5

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->isDummyAnimation()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isTopPenWindowControllerVisibleInStack()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2880
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 2881
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/TaskStack;->mTopPenWindowControllerToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_0

    .line 2882
    iget-object v2, v0, Lcom/android/server/wm/TaskStack;->mTopPenWindowControllerToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/TaskStack;->mTopPenWindowControllerToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/TaskStack;->mTopPenWindowControllerToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 2884
    :cond_0
    return v1
.end method

.method public isTransluent()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2813
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isUnderFullDim()Z
    .locals 3

    .prologue
    .line 3271
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 3272
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getFullDimLayer()I

    move-result v1

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    if-le v1, v2, :cond_0

    .line 3273
    const/4 v1, 0x1

    .line 3275
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVisibleLw()Z
    .locals 2

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1395
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isVisibleNow()Z
    .locals 2

    .prologue
    .line 1452
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVisibleOrAdding()Z
    .locals 2

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1473
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v1, :cond_3

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVisibleOrBehindKeyguardLw()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1418
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1428
    :goto_0
    return v3

    .line 1425
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1426
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_5

    iget-object v4, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_4

    move v0, v2

    .line 1428
    .local v0, "animating":Z
    :goto_1
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v4, :cond_7

    if-nez v1, :cond_6

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v4, :cond_7

    :cond_1
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v4, :cond_3

    if-eqz v0, :cond_7

    :cond_3
    :goto_2
    move v3, v2

    goto :goto_0

    .end local v0    # "animating":Z
    :cond_4
    move v0, v3

    .line 1426
    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_1

    .line 1428
    .restart local v0    # "animating":Z
    :cond_6
    iget-boolean v4, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v4, :cond_1

    :cond_7
    move v2, v3

    goto :goto_2
.end method

.method public isVoiceInteraction()Z
    .locals 1

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->voiceInteraction:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWinVisibleLw()Z
    .locals 2

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1442
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method makeInputChannelName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public moveToDisplayLocked(Lcom/android/server/wm/DisplayContent;)Z
    .locals 7
    .param p1, "target"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/4 v5, 0x1

    .line 3229
    if-eqz p1, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eq p1, v4, :cond_4

    .line 3230
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    .line 3231
    .local v1, "displayId":I
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3232
    .local v3, "tempDisplayContent":Lcom/android/server/wm/DisplayContent;
    iput-boolean v5, p1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 3233
    iget v4, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 3234
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v5, v4, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 3235
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v6, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 3246
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3247
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getLayerStack()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowStateAnimator;->setLayerStack(I)V

    .line 3248
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-virtual {v4, v1}, Lcom/android/server/input/InputWindowHandle;->setDisplayId(I)V

    .line 3249
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    .line 3250
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 3251
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    .line 3253
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Window{"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " u"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v6, v6, Lcom/android/server/wm/Session;->mUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " d"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eqz v4, :cond_2

    const-string v4, " EXITING}"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    .line 3258
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v4, v1}, Landroid/view/IWindow;->dispatchAttachedDisplayChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3261
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 3262
    .local v0, "child":Lcom/android/server/wm/WindowState;
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 3263
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->moveToDisplayLocked(Lcom/android/server/wm/DisplayContent;)Z

    goto :goto_2

    .line 3253
    .end local v0    # "child":Lcom/android/server/wm/WindowState;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string/jumbo v4, "}"

    goto :goto_0

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    move v4, v5

    .line 3267
    .end local v1    # "displayId":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "tempDisplayContent":Lcom/android/server/wm/DisplayContent;
    :goto_3
    return v4

    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 3259
    .restart local v1    # "displayId":I
    .restart local v3    # "tempDisplayContent":Lcom/android/server/wm/DisplayContent;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public pokeDrawLockLw(J)V
    .locals 5
    .param p1, "timeout"    # J

    .prologue
    .line 1971
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1972
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    .line 1976
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1977
    .local v0, "tag":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 1978
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1980
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/16 v2, 0x80

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Window:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    .line 1982
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1983
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/os/WorkSource;

    iget v3, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1986
    .end local v0    # "tag":Ljava/lang/CharSequence;
    :cond_1
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_POWER:Z

    if-eqz v1, :cond_2

    .line 1987
    const-string v1, "WindowState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pokeDrawLock: poking draw lock on behalf of visible window owned by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1995
    :cond_3
    :goto_0
    return-void

    .line 1991
    :cond_4
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_POWER:Z

    if-eqz v1, :cond_3

    .line 1992
    const-string v1, "WindowState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pokeDrawLock: suppressed draw lock request for invisible window owned by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method prelayout()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1379
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v0, :cond_0

    .line 1380
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    iput v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 1381
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float v0, v1, v0

    iput v0, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 1385
    :goto_0
    return-void

    .line 1383
    :cond_0
    iput v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    iput v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    goto :goto_0
.end method

.method public registerFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/view/IWindowFocusObserver;

    .prologue
    .line 2447
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2448
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    .line 2449
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    .line 2451
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2452
    monitor-exit v1

    .line 2453
    return-void

    .line 2452
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeLocked()V
    .locals 3

    .prologue
    .line 1726
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    .line 1728
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    .line 1729
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 1732
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroyDeferredSurfaceLocked()V

    .line 1733
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    .line 1734
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v0}, Lcom/android/server/wm/Session;->windowRemovedLocked()V

    .line 1736
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1741
    :goto_0
    return-void

    .line 1737
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reportFocusChangedSerialized(ZZ)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "inTouchMode"    # Z

    .prologue
    .line 2266
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZZ)V

    .line 2267
    return-void
.end method

.method public reportFocusChangedSerialized(ZZZ)V
    .locals 4
    .param p1, "focused"    # Z
    .param p2, "inTouchMode"    # Z
    .param p3, "focusedAppChanged"    # Z

    .prologue
    .line 2271
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3, p1, p2, p3}, Landroid/view/IWindow;->windowFocusChanged(ZZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2275
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v3, :cond_2

    .line 2276
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2277
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 2278
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IWindowFocusObserver;

    .line 2280
    .local v2, "obs":Landroid/view/IWindowFocusObserver;
    if-eqz p1, :cond_0

    .line 2281
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowId:Landroid/view/IWindowId;

    invoke-interface {v3}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/IWindowFocusObserver;->focusGained(Landroid/os/IBinder;)V

    .line 2277
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2283
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowId:Landroid/view/IWindowId;

    invoke-interface {v3}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/IWindowFocusObserver;->focusLost(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2285
    :catch_0
    move-exception v3

    goto :goto_2

    .line 2288
    .end local v2    # "obs":Landroid/view/IWindowFocusObserver;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2290
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_2
    return-void

    .line 2272
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method reportResized()V
    .locals 22

    .prologue
    .line 2294
    :try_start_0
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_RESIZE:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "WindowState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Reporting new frame to "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, ": "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isConfigChanged()Z

    move-result v13

    .line 2297
    .local v13, "configChanged":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v18

    .line 2298
    .local v18, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_c

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    .line 2303
    .local v17, "overrideConfig":Landroid/content/res/Configuration;
    :goto_0
    const/16 v16, 0x0

    .line 2304
    .local v16, "lastRelayoutConfigChanged":Z
    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mLastRelayoutConfiguration:Landroid/content/res/Configuration;

    sget-object v3, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    if-eq v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mLastRelayoutConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2307
    const/16 v16, 0x1

    .line 2308
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_RESIZE:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_CONFIGURATION:Z

    if-eqz v2, :cond_3

    .line 2309
    :cond_2
    const-string v2, "WindowState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "win="

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, ", lastRelayoutConfig="

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mLastRelayoutConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, ", CurConfig="

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    :cond_3
    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/WindowState;->mLastRelayoutConfiguration:Landroid/content/res/Configuration;

    .line 2329
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_RESIZE:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_CONFIGURATION:Z

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v13, :cond_5

    .line 2330
    const-string v2, "WindowState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Sending new config to window "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, ": "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v20, "x"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, " / config="

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, " overrideConfig="

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lcom/android/server/wm/WindowState;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 2337
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 2338
    const-string v2, "WindowState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Resizing "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, " WITH DRAW PENDING"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    :cond_6
    new-instance v14, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v14, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 2342
    .local v14, "dupConfig":Landroid/content/res/Configuration;
    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v2, :cond_7

    .line 2343
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    move-object/from16 v0, v17

    if-eq v0, v2, :cond_7

    .line 2344
    move-object/from16 v0, v17

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iput v2, v14, Landroid/content/res/Configuration;->orientation:I

    .line 2345
    move-object/from16 v0, v17

    iget v2, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v2, v14, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2346
    move-object/from16 v0, v17

    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v2, v14, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2347
    move-object/from16 v0, v17

    iget v2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v2, v14, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2352
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 2353
    .local v4, "frame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    .line 2354
    .local v5, "overscanInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    .line 2355
    .local v6, "contentInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    .line 2356
    .local v7, "visibleInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mLastStableInsets:Landroid/graphics/Rect;

    .line 2357
    .local v8, "stableInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    .line 2358
    .local v9, "outsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    const/4 v10, 0x1

    .line 2363
    .local v10, "reportDraw":Z
    :goto_1
    const/16 v19, 0x0

    .line 2364
    .local v19, "tmpConfig":Landroid/content/res/Configuration;
    if-nez v13, :cond_8

    if-eqz v16, :cond_9

    .line 2365
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_e

    .line 2366
    new-instance v19, Landroid/content/res/Configuration;

    .end local v19    # "tmpConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 2367
    .restart local v19    # "tmpConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, v19

    iget v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowState;->mDssScale:F

    move/from16 v20, v0

    div-float v3, v3, v20

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, v19

    iput v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 2372
    :cond_9
    :goto_2
    if-nez v13, :cond_a

    if-eqz v16, :cond_f

    :cond_a
    move-object/from16 v11, v19

    .line 2374
    .local v11, "newConfig":Landroid/content/res/Configuration;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/android/server/wm/WindowManagerService;->getCocktailBarFrame(Lcom/android/server/wm/WindowState;Z)Landroid/graphics/Rect;

    move-result-object v12

    .line 2375
    .local v12, "cocktailBarFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    instance-of v2, v2, Landroid/view/IWindow$Stub;

    if-eqz v2, :cond_10

    .line 2378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v20, v0

    new-instance v2, Lcom/android/server/wm/WindowState$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v12}, Lcom/android/server/wm/WindowState$2;-><init>(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;Landroid/graphics/Rect;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 2405
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_b

    .line 2407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v2}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    .line 2411
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    .line 2412
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    .line 2413
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    .line 2414
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mStableInsetsChanged:Z

    .line 2415
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    .line 2416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    .line 2444
    .end local v4    # "frame":Landroid/graphics/Rect;
    .end local v5    # "overscanInsets":Landroid/graphics/Rect;
    .end local v6    # "contentInsets":Landroid/graphics/Rect;
    .end local v7    # "visibleInsets":Landroid/graphics/Rect;
    .end local v8    # "stableInsets":Landroid/graphics/Rect;
    .end local v9    # "outsets":Landroid/graphics/Rect;
    .end local v10    # "reportDraw":Z
    .end local v11    # "newConfig":Landroid/content/res/Configuration;
    .end local v12    # "cocktailBarFrame":Landroid/graphics/Rect;
    .end local v13    # "configChanged":Z
    .end local v14    # "dupConfig":Landroid/content/res/Configuration;
    .end local v16    # "lastRelayoutConfigChanged":Z
    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    .end local v18    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v19    # "tmpConfig":Landroid/content/res/Configuration;
    :goto_5
    return-void

    .line 2298
    .restart local v13    # "configChanged":Z
    .restart local v18    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_c
    sget-object v17, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    goto/16 :goto_0

    .line 2358
    .restart local v4    # "frame":Landroid/graphics/Rect;
    .restart local v5    # "overscanInsets":Landroid/graphics/Rect;
    .restart local v6    # "contentInsets":Landroid/graphics/Rect;
    .restart local v7    # "visibleInsets":Landroid/graphics/Rect;
    .restart local v8    # "stableInsets":Landroid/graphics/Rect;
    .restart local v9    # "outsets":Landroid/graphics/Rect;
    .restart local v14    # "dupConfig":Landroid/content/res/Configuration;
    .restart local v16    # "lastRelayoutConfigChanged":Z
    .restart local v17    # "overrideConfig":Landroid/content/res/Configuration;
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 2369
    .restart local v10    # "reportDraw":Z
    .restart local v19    # "tmpConfig":Landroid/content/res/Configuration;
    :cond_e
    move-object/from16 v19, v14

    goto :goto_2

    .line 2372
    :cond_f
    const/4 v11, 0x0

    goto :goto_3

    .line 2391
    .restart local v11    # "newConfig":Landroid/content/res/Configuration;
    .restart local v12    # "cocktailBarFrame":Landroid/graphics/Rect;
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface/range {v3 .. v12}, Landroid/view/IWindow;->resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 2417
    .end local v4    # "frame":Landroid/graphics/Rect;
    .end local v5    # "overscanInsets":Landroid/graphics/Rect;
    .end local v6    # "contentInsets":Landroid/graphics/Rect;
    .end local v7    # "visibleInsets":Landroid/graphics/Rect;
    .end local v8    # "stableInsets":Landroid/graphics/Rect;
    .end local v9    # "outsets":Landroid/graphics/Rect;
    .end local v10    # "reportDraw":Z
    .end local v11    # "newConfig":Landroid/content/res/Configuration;
    .end local v12    # "cocktailBarFrame":Landroid/graphics/Rect;
    .end local v13    # "configChanged":Z
    .end local v14    # "dupConfig":Landroid/content/res/Configuration;
    .end local v16    # "lastRelayoutConfigChanged":Z
    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    .end local v18    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v19    # "tmpConfig":Landroid/content/res/Configuration;
    :catch_0
    move-exception v15

    .line 2419
    .local v15, "e":Landroid/os/RemoteException;
    const-string v2, "WindowState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "The process of this window already died: "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, " : "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eqz v2, :cond_11

    .line 2421
    const-string v2, "WindowState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Force reset mOverscanInsetsChanged="

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, ", mContentInsetsChanged="

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, ", mVisibleInsetsChanged="

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, ", mWinAnimator.mSurfaceResized="

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    .line 2427
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    .line 2428
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    .line 2429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    .line 2432
    :cond_11
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 2433
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    move-wide/from16 v20, v0

    sub-long v2, v2, v20

    long-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 2436
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->stopWaitingForOrientation()V

    .line 2439
    const-string v2, "WindowState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to report \'resized\' to the client of "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, ", removing this window."

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    goto/16 :goto_5
.end method

.method public setAppOpVisibilityLw(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1954
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eq v0, p1, :cond_0

    .line 1955
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    .line 1956
    if-eqz p1, :cond_1

    .line 1963
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    .line 1968
    :cond_0
    :goto_0
    return-void

    .line 1965
    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto :goto_0
.end method

.method setInputChannel(Landroid/view/InputChannel;)V
    .locals 2
    .param p1, "inputChannel"    # Landroid/view/InputChannel;

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    .line 1752
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Window already has an input channel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1755
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 1756
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-object p1, v0, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 1757
    return-void
.end method

.method setInsetsChanged()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1260
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    or-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    .line 1261
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    or-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    .line 1262
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    or-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    .line 1263
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mStableInsetsChanged:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastStableInsets:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    or-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mStableInsetsChanged:Z

    .line 1264
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_4
    or-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    .line 1265
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 1260
    goto :goto_0

    :cond_3
    move v0, v2

    .line 1261
    goto :goto_1

    :cond_4
    move v0, v2

    .line 1262
    goto :goto_2

    :cond_5
    move v0, v2

    .line 1263
    goto :goto_3

    :cond_6
    move v0, v2

    .line 1264
    goto :goto_4
.end method

.method public setShowToOwnerOnlyLocked(Z)V
    .locals 0
    .param p1, "showToOwnerOnly"    # Z

    .prologue
    .line 2036
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    .line 2037
    return-void
.end method

.method public setWillBeHideBlockMain(Z)V
    .locals 3
    .param p1, "willBeHide"    # Z

    .prologue
    .line 3159
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_0

    .line 3160
    const-string v0, "WindowState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWillBeHideBlockMain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->willBeHideBlockMain:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean p1, v0, Lcom/android/server/wm/WindowToken;->willBeHideBlockMain:Z

    .line 3166
    return-void
.end method

.method public setWindowFlagFixedBound(Z)V
    .locals 5
    .param p1, "bFixed"    # Z

    .prologue
    const/4 v4, -0x1

    .line 3045
    const/16 v0, 0x202

    .line 3047
    .local v0, "fixedFlag":I
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3048
    and-int/lit16 v0, v0, -0x201

    .line 3050
    :cond_0
    if-eqz p1, :cond_3

    .line 3051
    iget v1, p0, Lcom/android/server/wm/WindowState;->mSavedFlags:I

    if-eq v1, v4, :cond_2

    .line 3052
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, p0, Lcom/android/server/wm/WindowState;->mSavedFlags:I

    and-int/2addr v2, v0

    xor-int/lit8 v3, v0, -0x1

    xor-int/2addr v2, v3

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/wm/WindowState;->mSavedFlags:I

    .line 3057
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v2, v0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3058
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 3066
    :cond_1
    :goto_1
    return-void

    .line 3055
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v1, p0, Lcom/android/server/wm/WindowState;->mSavedFlags:I

    goto :goto_0

    .line 3060
    :cond_3
    iget v1, p0, Lcom/android/server/wm/WindowState;->mSavedFlags:I

    if-eq v1, v4, :cond_1

    .line 3061
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3062
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, p0, Lcom/android/server/wm/WindowState;->mSavedFlags:I

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3063
    iput v4, p0, Lcom/android/server/wm/WindowState;->mSavedFlags:I

    goto :goto_1
.end method

.method shouldWaitForOrientation()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3127
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showLw(Z)Z
    .locals 1
    .param p1, "doAnimation"    # Z

    .prologue
    .line 1827
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v0

    return v0
.end method

.method showLw(ZZ)Z
    .locals 1
    .param p1, "doAnimation"    # Z
    .param p2, "requestAnim"    # Z

    .prologue
    .line 1832
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowState;->showLw(ZZZ)Z

    move-result v0

    return v0
.end method

.method public showLw(ZZZ)Z
    .locals 7
    .param p1, "doAnimation"    # Z
    .param p2, "requestAnim"    # Z
    .param p3, "withSubWindow"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1838
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1889
    :cond_0
    :goto_0
    return v2

    .line 1841
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eqz v4, :cond_0

    .line 1845
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-nez v4, :cond_0

    .line 1851
    :cond_2
    if-eqz p3, :cond_3

    .line 1852
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1853
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1, v2, v2, v2}, Lcom/android/server/wm/WindowState;->showLw(ZZZ)Z

    goto :goto_1

    .line 1858
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_3
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v4, :cond_4

    const-string v4, "WindowState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Policy visibility true: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    :cond_4
    if-eqz p1, :cond_6

    .line 1860
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v4, :cond_5

    const-string v4, "WindowState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "doAnimation: mPolicyVisibility="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mAnimation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->okToDisplay(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1863
    const/4 p1, 0x0

    .line 1874
    :cond_6
    :goto_2
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowToken;->mHiddenByPolicyVisiblity:Z

    if-eqz v4, :cond_7

    .line 1875
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v2, v4, Lcom/android/server/wm/AppWindowToken;->mHiddenByPolicyVisiblity:Z

    .line 1876
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x2

    invoke-virtual {v2, p0, v4}, Lcom/android/server/wm/WindowManagerService;->notifyMultiWindowStateChanged(Lcom/android/server/wm/WindowState;I)V

    .line 1881
    :cond_7
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 1882
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 1883
    if-eqz p1, :cond_8

    .line 1884
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, v3, v3}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 1886
    :cond_8
    if-eqz p2, :cond_9

    .line 1887
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_9
    move v2, v3

    .line 1889
    goto/16 :goto_0

    .line 1864
    :cond_a
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v4, :cond_6

    .line 1868
    const/4 p1, 0x0

    goto :goto_2
.end method

.method startWaitingForOrientation()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 3100
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWaitingForOrientation:Z

    if-nez v0, :cond_0

    .line 3101
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWaitingForOrientation:Z

    .line 3102
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mHasAppWindowForWaitingForOrientation:Z

    .line 3103
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_0

    .line 3104
    const-string v0, "WindowState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startWaitingForOrientation() w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3107
    :cond_0
    return-void
.end method

.method stopWaitingForOrientation()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3110
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWaitingForOrientation:Z

    if-eqz v0, :cond_0

    .line 3111
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWaitingForOrientation:Z

    .line 3112
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mHasAppWindowForWaitingForOrientation:Z

    .line 3113
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_0

    .line 3114
    const-string v0, "WindowState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopWaitingForOrientation() w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3117
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2742
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2743
    .local v0, "title":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2744
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2746
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    if-ne v1, v0, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eq v1, v2, :cond_3

    .line 2747
    :cond_2
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    .line 2748
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    .line 2749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eqz v1, :cond_4

    const-string v1, " EXITING}"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    .line 2756
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    return-object v1

    .line 2749
    :cond_4
    const-string/jumbo v1, "}"

    goto :goto_0
.end method

.method public unregisterFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/view/IWindowFocusObserver;

    .prologue
    .line 2456
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2457
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_0

    .line 2458
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2460
    :cond_0
    monitor-exit v1

    .line 2461
    return-void

    .line 2460
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public willBeHideBlockMain()Z
    .locals 1

    .prologue
    .line 3155
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->willBeHideBlockMain:Z

    return v0
.end method

.method public willBeHideSViewCoverOnce()Z
    .locals 1

    .prologue
    .line 2494
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->willBeHideSViewCoverOnce:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->disableHideSViewCoverOnce:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
