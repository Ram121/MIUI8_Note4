.class final Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FloatingToolbarMainPanel"
.end annotation


# instance fields
.field private MAX_ITEMS_LANDSCAPE_LARGE_PHONE:I

.field private MAX_ITEMS_LANDSCAPE_PHONE:I

.field private MAX_ITEMS_PORTRAIT_LARGE_PHONE:I

.field private MAX_ITEMS_PORTRAIT_PHONE:I

.field private MAX_ITEMS_VERTICAL:I

.field private isClickedOption:Z

.field mCloseButton:Landroid/widget/ImageView;

.field private final mContentView:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mExtraItemWidth:I

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mItemHeight:I

.field private mItemWidth:I

.field private mLinearLayoutArray:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mOpenButton:Landroid/widget/TextView;

.field private final mOpenOverflow:Ljava/lang/Runnable;

.field private mOpenOverflowButton:Landroid/view/View;

.field mOpenedPopupHeight:I

.field private mOptionItemWidth:I

.field private mPopupHeight:I

.field private mPopupMaxHeight:I

.field private mPopupMaxWidth:I

.field private mPopupWidth:I

.field private mScreenInches:D

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTwContentView:Landroid/view/ViewGroup;

.field private mUseNewSamsungToolbar:Z

.field private mUseSamsungToolbar:Z

.field mVerticalLinearLayout:Landroid/widget/LinearLayout;

.field private final viewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "openOverflow"    # Ljava/lang/Runnable;

    .prologue
    .line 1333
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Z)V

    .line 1334
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Z)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "openOverflow"    # Ljava/lang/Runnable;
    .param p3, "useSamsungToolbar"    # Z

    .prologue
    .line 1336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1273
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    .line 1276
    new-instance v3, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$1;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$1;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)V

    iput-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 1294
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseSamsungToolbar:Z

    .line 1295
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseNewSamsungToolbar:Z

    .line 1324
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->isClickedOption:Z

    .line 1337
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iput-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    .line 1338
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    .line 1339
    new-instance v3, Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-direct {v3, v8, v9}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;-><init>(Landroid/view/View;Lcom/android/internal/widget/FloatingToolbar$1;)V

    iput-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->viewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    .line 1340
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflow:Ljava/lang/Runnable;

    .line 1342
    iput-boolean p3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseSamsungToolbar:Z

    .line 1343
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x11200d2

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseNewSamsungToolbar:Z

    .line 1344
    iget-boolean v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseSamsungToolbar:Z

    if-eqz v3, :cond_0

    .line 1345
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1346
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "window"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1347
    .local v2, "manager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1348
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v8, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v3, v8

    float-to-double v8, v3

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 1349
    .local v4, "x":D
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v8, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v3, v8

    float-to-double v8, v3

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 1350
    .local v6, "y":D
    add-double v8, v4, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScreenInches:D

    .line 1353
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x10e00f3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->MAX_ITEMS_PORTRAIT_PHONE:I

    .line 1354
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x10e00f4

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->MAX_ITEMS_LANDSCAPE_PHONE:I

    .line 1355
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x10e00f5

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->MAX_ITEMS_PORTRAIT_LARGE_PHONE:I

    .line 1356
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x10e00f6

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->MAX_ITEMS_LANDSCAPE_LARGE_PHONE:I

    .line 1359
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x10e00f9

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->MAX_ITEMS_VERTICAL:I

    .line 1361
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x1050244

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mItemHeight:I

    .line 1362
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x1050243

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mItemWidth:I

    .line 1363
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x105024b

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mExtraItemWidth:I

    .line 1364
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x1050245

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOptionItemWidth:I

    .line 1366
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x1080b51

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 1367
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mDividerWidth:I

    .line 1368
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x105024f

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mDividerPadding:I

    .line 1370
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getPopupWidthLimit()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mPopupMaxHeight:I

    .line 1372
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1373
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1374
    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1375
    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mTwContentView:Landroid/view/ViewGroup;

    .line 1376
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mTwContentView:Landroid/view/ViewGroup;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1378
    iget-boolean v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseNewSamsungToolbar:Z

    if-eqz v3, :cond_1

    .line 1379
    new-instance v3, Landroid/widget/ScrollView;

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScrollView:Landroid/widget/ScrollView;

    .line 1380
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScrollView:Landroid/widget/ScrollView;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1382
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    .line 1383
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1384
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1385
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVerticalScrollBarEnabled(Z)V

    .line 1395
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v1    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v2    # "manager":Landroid/view/WindowManager;
    .end local v4    # "x":D
    .end local v6    # "y":D
    :cond_0
    :goto_0
    return-void

    .line 1388
    .restart local v0    # "dm":Landroid/util/DisplayMetrics;
    .restart local v1    # "linearLayout":Landroid/widget/LinearLayout;
    .restart local v2    # "manager":Landroid/view/WindowManager;
    .restart local v4    # "x":D
    .restart local v6    # "y":D
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mTwContentView:Landroid/view/ViewGroup;

    check-cast v3, Landroid/widget/LinearLayout;

    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 1389
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mTwContentView:Landroid/view/ViewGroup;

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1390
    new-instance v3, Landroid/widget/HorizontalScrollView;

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 1391
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1392
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic access$2000(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    .prologue
    .line 1264
    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->isClickedOption:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 1264
    iput-boolean p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->isClickedOption:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflow:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    return-object v0
.end method

.method private getMenuLimit()I
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 1597
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    .line 1601
    .local v0, "isPortrait":Z
    :goto_0
    iget-wide v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScreenInches:D

    const-wide/high16 v4, 0x4016000000000000L    # 5.5

    cmpl-double v1, v2, v4

    if-lez v1, :cond_2

    .line 1602
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->MAX_ITEMS_PORTRAIT_LARGE_PHONE:I

    .line 1604
    :goto_1
    return v1

    .line 1597
    .end local v0    # "isPortrait":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1602
    .restart local v0    # "isPortrait":Z
    :cond_1
    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->MAX_ITEMS_LANDSCAPE_LARGE_PHONE:I

    goto :goto_1

    .line 1604
    :cond_2
    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->MAX_ITEMS_PORTRAIT_PHONE:I

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->MAX_ITEMS_LANDSCAPE_PHONE:I

    goto :goto_1
.end method

.method private getMenuLimitVertical()I
    .locals 1

    .prologue
    .line 1608
    iget v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->MAX_ITEMS_VERTICAL:I

    return v0
.end method

.method private getPopupWidthLimit()I
    .locals 3

    .prologue
    .line 1611
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getMenuLimit()I

    move-result v0

    .line 1612
    .local v0, "items":I
    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mItemWidth:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mDividerWidth:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mPopupMaxWidth:I

    .line 1614
    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mPopupMaxWidth:I

    return v1
.end method

.method private setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V
    .locals 2
    .param p1, "menuItemButton"    # Landroid/view/View;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 1641
    move-object v0, p1

    .line 1642
    .local v0, "button":Landroid/view/View;
    # invokes: Lcom/android/internal/widget/FloatingToolbar;->isIconOnlyMenuItem(Landroid/view/MenuItem;)Z
    invoke-static {p2}, Lcom/android/internal/widget/FloatingToolbar;->access$2700(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1643
    const v1, 0x1020054

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1645
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1646
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1647
    return-void
.end method


# virtual methods
.method public fadeIn(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->viewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->fadeIn(Z)V

    .line 1590
    return-void
.end method

.method public fadeOut(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->viewFader:Lcom/android/internal/widget/FloatingToolbar$ViewFader;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->fadeOut(Z)V

    .line 1594
    return-void
.end method

.method public getNeedHeightNewPopup()I
    .locals 3

    .prologue
    .line 1659
    invoke-virtual {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getPopupMaxHeight()I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mItemHeight:I

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getPopupMaxHeight()I
    .locals 2

    .prologue
    .line 1669
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getMenuLimitVertical()I

    move-result v0

    .line 1670
    .local v0, "items":I
    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mItemHeight:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mPopupMaxHeight:I

    .line 1671
    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mPopupMaxHeight:I

    return v1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public layoutMenuItems(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .param p2, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1404
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->layoutMenuItems(Ljava/util/List;IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public layoutMenuItems(Ljava/util/List;IZ)Ljava/util/List;
    .locals 20
    .param p2, "width"    # I
    .param p3, "useSamsungToolbar"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1408
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/internal/widget/FloatingToolbar;->getEstimatedOpenOverflowButtonWidth(Landroid/content/Context;)I
    invoke-static {v14}, Lcom/android/internal/widget/FloatingToolbar;->access$2200(Landroid/content/Context;)I

    move-result v14

    sub-int v13, p2, v14

    .line 1413
    .local v13, "toolbarWidth":I
    move v2, v13

    .line 1414
    .local v2, "availableWidth":I
    new-instance v12, Ljava/util/LinkedList;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 1416
    .local v12, "remainingMenuItems":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/view/MenuItem;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1417
    if-eqz p3, :cond_0

    .line 1418
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mTwContentView:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1419
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseNewSamsungToolbar:Z

    if-eqz v14, :cond_1

    .line 1420
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->clear()V

    .line 1421
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1422
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v14}, Landroid/widget/ScrollView;->removeAllViews()V

    .line 1423
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mTwContentView:Landroid/view/ViewGroup;

    check-cast v14, Landroid/widget/LinearLayout;

    invoke-virtual {v15, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1429
    :cond_0
    :goto_0
    const/4 v3, 0x1

    .line 1430
    .local v3, "isFirstItem":Z
    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v6

    .line 1431
    .local v6, "mMenuSize":I
    const/4 v5, 0x0

    .line 1432
    .local v5, "mMenuNum":I
    :goto_1
    invoke-virtual {v12}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_9

    .line 1433
    invoke-virtual {v12}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/MenuItem;

    .line 1435
    .local v8, "menuItem":Landroid/view/MenuItem;
    if-eqz v3, :cond_2

    if-eqz p3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseNewSamsungToolbar:Z

    if-eqz v14, :cond_2

    .line 1436
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->isClickedOption:Z

    .line 1437
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    const v15, 0x1090179

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    .line 1439
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x1040327

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1440
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1080b55

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1441
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 1442
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    new-instance v15, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$2;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)V

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1451
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1453
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    const v15, 0x1090178

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    .line 1455
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    .line 1456
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-interface {v8}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1457
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1459
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1460
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1462
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v14, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1463
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1465
    invoke-virtual {v12}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 1466
    const/4 v3, 0x0

    .line 1467
    goto/16 :goto_1

    .line 1425
    .end local v3    # "isFirstItem":Z
    .end local v5    # "mMenuNum":I
    .end local v6    # "mMenuSize":I
    .end local v8    # "menuItem":Landroid/view/MenuItem;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v14}, Landroid/widget/HorizontalScrollView;->removeAllViews()V

    goto/16 :goto_0

    .line 1471
    .restart local v3    # "isFirstItem":Z
    .restart local v5    # "mMenuNum":I
    .restart local v6    # "mMenuSize":I
    .restart local v8    # "menuItem":Landroid/view/MenuItem;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    move/from16 v0, p3

    # invokes: Lcom/android/internal/widget/FloatingToolbar;->createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;Z)Landroid/view/View;
    invoke-static {v14, v8, v0}, Lcom/android/internal/widget/FloatingToolbar;->access$2500(Landroid/content/Context;Landroid/view/MenuItem;Z)Landroid/view/View;

    move-result-object v9

    .line 1473
    .local v9, "menuItemButton":Landroid/view/View;
    if-eqz p3, :cond_4

    .line 1474
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseNewSamsungToolbar:Z

    if-eqz v14, :cond_3

    .line 1475
    add-int/lit8 v5, v5, 0x1

    .line 1476
    add-int/lit8 v14, v6, -0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getMenuLimit()I

    move-result v15

    if-le v14, v15, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getMenuLimit()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    div-int v14, v5, v14

    if-eqz v14, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getMenuLimit()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    rem-int v14, v5, v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    .line 1478
    const/4 v4, 0x0

    .line 1479
    .local v4, "mCurLayoutIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1480
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v14

    add-int/lit8 v4, v14, -0x1

    .line 1481
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    invoke-virtual {v14, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1482
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    invoke-virtual {v14, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    const/16 v16, -0x2

    const/16 v17, -0x2

    invoke-direct/range {v15 .. v17}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1488
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    invoke-virtual {v14, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mTwContentView:Landroid/view/ViewGroup;

    .line 1492
    .end local v4    # "mCurLayoutIndex":I
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V

    .line 1493
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mTwContentView:Landroid/view/ViewGroup;

    invoke-virtual {v14, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1494
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 1495
    .local v11, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mItemWidth:I

    iput v14, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1496
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mItemHeight:I

    iput v14, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1497
    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1498
    invoke-virtual {v12}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    goto/16 :goto_1

    .line 1503
    .end local v11    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    if-eqz v3, :cond_5

    .line 1504
    const-wide/high16 v14, 0x3ff8000000000000L    # 1.5

    invoke-virtual {v9}, Landroid/view/View;->getPaddingStart()I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-int v14, v14

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    invoke-virtual {v9}, Landroid/view/View;->getPaddingEnd()I

    move-result v16

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v14, v15, v0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1509
    const/4 v3, 0x0

    .line 1513
    :cond_5
    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    .line 1514
    invoke-virtual {v9}, Landroid/view/View;->getPaddingStart()I

    move-result v14

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    const-wide/high16 v16, 0x3ff8000000000000L    # 1.5

    invoke-virtual {v9}, Landroid/view/View;->getPaddingEnd()I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v14, v15, v0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1521
    :cond_6
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/view/View;->measure(II)V

    .line 1522
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1523
    .local v10, "menuItemButtonWidth":I
    if-gt v10, v2, :cond_7

    .line 1524
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V

    .line 1525
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v14, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1526
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 1527
    .restart local v11    # "params":Landroid/view/ViewGroup$LayoutParams;
    iput v10, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1528
    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1529
    sub-int/2addr v2, v10

    .line 1530
    invoke-virtual {v12}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    goto/16 :goto_1

    .line 1532
    .end local v11    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    if-nez v14, :cond_8

    .line 1533
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    const v15, 0x109006d

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    .line 1535
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    new-instance v15, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel$3;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1543
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1545
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenOverflowButton:Landroid/view/View;

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1549
    .end local v8    # "menuItem":Landroid/view/MenuItem;
    .end local v9    # "menuItemButton":Landroid/view/View;
    .end local v10    # "menuItemButtonWidth":I
    :cond_9
    if-eqz p3, :cond_a

    .line 1550
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseNewSamsungToolbar:Z

    if-eqz v14, :cond_b

    .line 1551
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-virtual {v15, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1552
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v15}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1553
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1554
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v14}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 1555
    .local v7, "mScrollViewparams":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mItemHeight:I

    iput v14, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1556
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v14, v7}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1558
    add-int/lit8 v14, v6, -0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getMenuLimit()I

    move-result v15

    if-le v14, v15, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v14, :cond_a

    .line 1559
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1561
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    check-cast v14, Landroid/widget/LinearLayout;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 1562
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    check-cast v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1563
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    check-cast v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mDividerPadding:I

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    .line 1564
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1565
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1566
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 1567
    .restart local v11    # "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOptionItemWidth:I

    iput v14, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1568
    const/4 v14, -0x1

    iput v14, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1569
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenButton:Landroid/widget/TextView;

    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1570
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v14, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1577
    .end local v7    # "mScrollViewparams":Landroid/view/ViewGroup$LayoutParams;
    .end local v11    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_a
    :goto_2
    return-object v12

    .line 1573
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mTwContentView:Landroid/view/ViewGroup;

    invoke-virtual {v14, v15}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 1574
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public measure()Landroid/util/Size;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1623
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1624
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v1}, Landroid/view/ViewGroup;->measure(II)V

    .line 1626
    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseSamsungToolbar:Z

    if-eqz v0, :cond_1

    .line 1627
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getPopupWidthLimit()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mExtraItemWidth:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 1628
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 1623
    goto :goto_0

    .line 1628
    :cond_1
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    goto :goto_1
.end method

.method public measureSamsung()Landroid/util/Size;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1633
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v1}, Landroid/view/ViewGroup;->measure(II)V

    .line 1635
    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mUseSamsungToolbar:Z

    if-eqz v0, :cond_0

    .line 1636
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->getPopupWidthLimit()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mExtraItemWidth:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 1637
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    goto :goto_0
.end method

.method public setAllMenuInNewPopup()V
    .locals 3

    .prologue
    .line 1650
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1651
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1652
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mLinearLayoutArray:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1651
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1654
    :cond_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1655
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1654
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1657
    :cond_1
    return-void
.end method

.method public setHeightNewPopup()V
    .locals 3

    .prologue
    .line 1662
    iget v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOpenedPopupHeight:I

    .line 1664
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1665
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1666
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1667
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    .line 1581
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarMainPanel;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1582
    return-void
.end method
