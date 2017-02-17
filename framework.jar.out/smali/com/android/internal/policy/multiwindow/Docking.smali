.class public Lcom/android/internal/policy/multiwindow/Docking;
.super Ljava/lang/Object;
.source "Docking.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/multiwindow/Docking$OnDockingListener;
    }
.end annotation


# static fields
.field private static final DOCKING_AREA_RATIO:F = 0.04f

.field private static final DOCKING_CANCEL_TIMER_TIME:I = 0x2bc

.field private static final DOWN_SIDE_DOCKING_AREA_RATIO:F = 0.07f

.field private static final MESSAGE_DOCKING_CANCEL:I = 0x65

.field private static final bDSSEnabled:Z = true


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCenterBarPoint:Landroid/graphics/Point;

.field public mCurScreenHeight:I

.field public mCurScreenWidth:I

.field private mDockingBounds:Landroid/graphics/Rect;

.field private mDockingCanceled:Z

.field private mDockingListener:Lcom/android/internal/policy/multiwindow/Docking$OnDockingListener;

.field private mDockingMargin:I

.field private mDockingX:I

.field private mDockingY:I

.field private mDockingZone:I

.field private mDssScale:F

.field mHandler:Landroid/os/Handler;

.field private mInitCenterBarPoint:Z

.field private mIsPenWindowOnly:Z

.field private mIsSupportSplit:Z

.field private mIsSupportSplitDocking:Z

.field private mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mOptionFixedSize:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/multiwindow/MultiWindowFacade;F)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "facade"    # Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .param p3, "dssScale"    # F

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingZone:I

    .line 37
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    .line 38
    iput-boolean v0, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingCanceled:Z

    .line 43
    iput-boolean v0, p0, Lcom/android/internal/policy/multiwindow/Docking;->mOptionFixedSize:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/internal/policy/multiwindow/Docking;->mIsSupportSplitDocking:Z

    .line 45
    iput-boolean v0, p0, Lcom/android/internal/policy/multiwindow/Docking;->mIsSupportSplit:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/internal/policy/multiwindow/Docking;->mIsPenWindowOnly:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/internal/policy/multiwindow/Docking;->mInitCenterBarPoint:Z

    .line 55
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDssScale:F

    .line 319
    new-instance v1, Lcom/android/internal/policy/multiwindow/Docking$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/multiwindow/Docking$1;-><init>(Lcom/android/internal/policy/multiwindow/Docking;)V

    iput-object v1, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    .line 62
    iput-object p1, p0, Lcom/android/internal/policy/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    .line 63
    iput-object p2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 66
    iput p3, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDssScale:F

    .line 69
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/multiwindow/Docking;->mOptionFixedSize:Z

    .line 71
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/Docking;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v1, :cond_0

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/multiwindow/Docking;->mOptionFixedSize:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/android/internal/policy/multiwindow/Docking;->mIsSupportSplitDocking:Z

    .line 76
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050320

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingMargin:I

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/multiwindow/Docking;)Lcom/android/internal/policy/multiwindow/Docking$OnDockingListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/Docking;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingListener:Lcom/android/internal/policy/multiwindow/Docking$OnDockingListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/multiwindow/Docking;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/Docking;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingCanceled:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/internal/policy/multiwindow/Docking;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/Docking;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingX:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/internal/policy/multiwindow/Docking;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/Docking;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingY:I

    return p1
.end method

.method private checkStyleTransitionEnable()Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 346
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v1

    .line 348
    .local v1, "applicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    iget-object v8, p0, Lcom/android/internal/policy/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 349
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_1

    .line 350
    iget-object v8, p0, Lcom/android/internal/policy/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    const/16 v9, 0xc0

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 354
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_1

    .line 355
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_2

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 357
    .local v2, "applicationMetaData":Landroid/os/Bundle;
    :goto_0
    const/4 v5, 0x0

    .line 358
    .local v5, "style":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_0

    .line 359
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.sec.android.multiwindow.activity.STYLE"

    invoke-direct {p0, v8, v9}, Lcom/android/internal/policy/multiwindow/Docking;->parseActivityInfoMetaData(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 363
    :cond_0
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isHideAppList(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 392
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "applicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    .end local v2    # "applicationMetaData":Landroid/os/Bundle;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "style":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    return v6

    .line 355
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "applicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto :goto_0

    .line 366
    .restart local v2    # "applicationMetaData":Landroid/os/Bundle;
    .restart local v5    # "style":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    if-eqz v5, :cond_4

    const-string v8, "fullscreenOnly"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "isolatedSplit"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 370
    :cond_4
    invoke-virtual {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isPenWindowOnly(Landroid/content/pm/ActivityInfo;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 372
    if-eqz v2, :cond_6

    const-string v8, "com.samsung.android.sdk.multiwindow.enable"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "com.sec.android.support.multiwindow"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    move v6, v7

    .line 376
    goto :goto_1

    .line 377
    :cond_6
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportApp(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 379
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportPackageList(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportComponentList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_1

    :cond_7
    move v6, v7

    .line 385
    goto :goto_1

    .line 389
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "applicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    .end local v2    # "applicationMetaData":Landroid/os/Bundle;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "style":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 390
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getChanagedMultiWindowStyle(ILcom/samsung/android/multiwindow/MultiWindowStyle;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 3
    .param p0, "zone"    # I
    .param p1, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v2, 0x0

    .line 81
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 82
    .local v0, "requestStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 83
    const/16 v1, 0xf

    if-ne p0, v1, :cond_0

    .line 84
    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 88
    :goto_0
    const/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 89
    return-object v0

    .line 86
    :cond_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto :goto_0
.end method

.method private getDisplaySize(Landroid/graphics/Point;Z)Z
    .locals 5
    .param p1, "outbound"    # Landroid/graphics/Point;
    .param p2, "isReal"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 96
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 98
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 104
    sget-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/Docking;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    if-eqz v3, :cond_0

    .line 106
    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/Docking;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 107
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v1, :cond_0

    .line 108
    iget v3, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 109
    iget v3, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 113
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 101
    goto :goto_0
.end method

.method private isFullScreenOnly(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .locals 1
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 336
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x200000

    invoke-virtual {p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    :cond_0
    const/4 v0, 0x1

    .line 341
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseActivityInfoMetaData(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "activityMetaData"    # Landroid/os/Bundle;
    .param p2, "metaData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v0, "empty":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "style":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "empty":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 402
    :cond_0
    return-object v0
.end method


# virtual methods
.method public checkCenterBarPoint()V
    .locals 4

    .prologue
    .line 151
    iget-boolean v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mInitCenterBarPoint:Z

    if-eqz v2, :cond_0

    .line 152
    new-instance v0, Landroid/graphics/Point;

    iget v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenWidth:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenHeight:I

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 153
    .local v0, "point":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 154
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.action.ARRANGE_CONTROLL_BAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, "refreshCenterbarIntent":Landroid/content/Intent;
    const-string v2, "com.sec.android.extra.CONTROL_BAR_POS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 156
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 158
    .end local v0    # "point":Landroid/graphics/Point;
    .end local v1    # "refreshCenterbarIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public checkDockingWindow(IIZ)I
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "ignoreRatio"    # Z

    .prologue
    const v10, 0x3f4ccccd    # 0.8f

    const v9, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 224
    iget-boolean v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mIsSupportSplitDocking:Z

    if-nez v4, :cond_1

    move v1, v3

    .line 316
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 228
    :cond_1
    const/4 v1, 0x0

    .line 229
    .local v1, "dockingZone":I
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    if-eqz v4, :cond_0

    .line 233
    if-eqz p3, :cond_6

    move v0, v2

    .line 234
    .local v0, "dockingAreaRatio":F
    :goto_1
    if-eqz p3, :cond_7

    .line 236
    .local v2, "downSideDockingAreaRatio":F
    :goto_2
    iget v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenWidth:I

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenHeight:I

    if-ge v4, v5, :cond_c

    .line 237
    int-to-float v4, p2

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_9

    .line 238
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-gtz v4, :cond_8

    .line 239
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenWidth:I

    iget v6, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenHeight:I

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v4, v3, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 240
    iput-boolean v8, p0, Lcom/android/internal/policy/multiwindow/Docking;->mInitCenterBarPoint:Z

    .line 245
    :goto_3
    const/4 v1, 0x3

    .line 256
    :cond_2
    :goto_4
    if-eqz v1, :cond_4

    .line 257
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    cmpg-float v4, v4, v9

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    cmpl-float v4, v4, v10

    if-ltz v4, :cond_4

    .line 259
    :cond_3
    const/4 v4, 0x3

    if-ne v1, v4, :cond_b

    .line 260
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 261
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenHeight:I

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 266
    :goto_5
    iput-boolean v8, p0, Lcom/android/internal/policy/multiwindow/Docking;->mInitCenterBarPoint:Z

    .line 305
    :cond_4
    :goto_6
    packed-switch v1, :pswitch_data_0

    .line 310
    iget-boolean v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mIsSupportSplit:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mIsPenWindowOnly:Z

    if-eqz v4, :cond_0

    .line 311
    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenWidth:I

    iget v6, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenHeight:I

    invoke-virtual {v4, v3, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 312
    const/16 v1, 0xf

    goto :goto_0

    .line 233
    .end local v0    # "dockingAreaRatio":F
    .end local v2    # "downSideDockingAreaRatio":F
    :cond_6
    const v0, 0x3d23d70a    # 0.04f

    goto :goto_1

    .line 234
    .restart local v0    # "dockingAreaRatio":F
    :cond_7
    const v2, 0x3d8f5c29    # 0.07f

    goto :goto_2

    .line 242
    .restart local v2    # "downSideDockingAreaRatio":F
    :cond_8
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenWidth:I

    iget-object v6, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v3, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 243
    iput-boolean v3, p0, Lcom/android/internal/policy/multiwindow/Docking;->mInitCenterBarPoint:Z

    goto :goto_3

    .line 246
    :cond_9
    int-to-float v4, p2

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenHeight:I

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v2

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 247
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenHeight:I

    if-lt v4, v5, :cond_a

    .line 248
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenHeight:I

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenWidth:I

    iget v7, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenHeight:I

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 249
    iput-boolean v8, p0, Lcom/android/internal/policy/multiwindow/Docking;->mInitCenterBarPoint:Z

    .line 254
    :goto_7
    const/16 v1, 0xc

    goto/16 :goto_4

    .line 251
    :cond_a
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenWidth:I

    iget v7, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenHeight:I

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 252
    iput-boolean v3, p0, Lcom/android/internal/policy/multiwindow/Docking;->mInitCenterBarPoint:Z

    goto :goto_7

    .line 263
    :cond_b
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenHeight:I

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 264
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenHeight:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_5

    .line 270
    :cond_c
    int-to-float v4, p1

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_10

    .line 271
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-gtz v4, :cond_f

    .line 272
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenWidth:I

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenHeight:I

    invoke-virtual {v4, v3, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 273
    iput-boolean v8, p0, Lcom/android/internal/policy/multiwindow/Docking;->mInitCenterBarPoint:Z

    .line 278
    :goto_8
    const/4 v1, 0x3

    .line 290
    :cond_d
    :goto_9
    if-eqz v1, :cond_4

    .line 291
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    cmpg-float v4, v4, v9

    if-lez v4, :cond_e

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    cmpl-float v4, v4, v10

    if-ltz v4, :cond_4

    .line 293
    :cond_e
    const/4 v4, 0x3

    if-ne v1, v4, :cond_12

    .line 294
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->left:I

    .line 295
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenWidth:I

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 300
    :goto_a
    iput-boolean v8, p0, Lcom/android/internal/policy/multiwindow/Docking;->mInitCenterBarPoint:Z

    goto/16 :goto_6

    .line 275
    :cond_f
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenHeight:I

    invoke-virtual {v4, v3, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 276
    iput-boolean v3, p0, Lcom/android/internal/policy/multiwindow/Docking;->mInitCenterBarPoint:Z

    goto :goto_8

    .line 279
    :cond_10
    int-to-float v4, p1

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenWidth:I

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v0

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_d

    .line 281
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenWidth:I

    if-lt v4, v5, :cond_11

    .line 282
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenWidth:I

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenWidth:I

    iget v7, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenHeight:I

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 283
    iput-boolean v8, p0, Lcom/android/internal/policy/multiwindow/Docking;->mInitCenterBarPoint:Z

    .line 288
    :goto_b
    const/16 v1, 0xc

    goto :goto_9

    .line 285
    :cond_11
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenWidth:I

    iget v7, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenHeight:I

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 286
    iput-boolean v3, p0, Lcom/android/internal/policy/multiwindow/Docking;->mInitCenterBarPoint:Z

    goto :goto_b

    .line 297
    :cond_12
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenWidth:I

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 298
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenWidth:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    goto :goto_a

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public clear()V
    .locals 3

    .prologue
    const/16 v2, 0x65

    const/4 v1, 0x0

    .line 142
    iput v1, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingZone:I

    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 144
    iput-boolean v1, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingCanceled:Z

    .line 145
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 148
    :cond_0
    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/internal/policy/multiwindow/Docking;->isDocking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getZone()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingZone:I

    return v0
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 116
    iget-boolean v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mIsSupportSplitDocking:Z

    if-nez v2, :cond_0

    .line 139
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/multiwindow/Docking;->checkStyleTransitionEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    .line 122
    .local v1, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/multiwindow/Docking;->isFullScreenOnly(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mIsSupportSplit:Z

    .line 123
    iput v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingZone:I

    .line 125
    .end local v1    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 128
    .local v0, "displaySize":Landroid/graphics/Point;
    invoke-direct {p0, v0, v3}, Lcom/android/internal/policy/multiwindow/Docking;->getDisplaySize(Landroid/graphics/Point;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 129
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDssScale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenWidth:I

    .line 130
    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDssScale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenHeight:I

    .line 136
    :goto_2
    iput-boolean v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mInitCenterBarPoint:Z

    .line 138
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v2, v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getCenterBarPoint(I)Landroid/graphics/Point;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    goto :goto_0

    .end local v0    # "displaySize":Landroid/graphics/Point;
    .restart local v1    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_2
    move v2, v4

    .line 122
    goto :goto_1

    .line 132
    .end local v1    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v0    # "displaySize":Landroid/graphics/Point;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenWidth:I

    .line 133
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mCurScreenHeight:I

    goto :goto_2
.end method

.method public isDocking()Z
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingZone:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDockingCanceled()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingCanceled:Z

    return v0
.end method

.method public setOnDockingListener(Lcom/android/internal/policy/multiwindow/Docking$OnDockingListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/internal/policy/multiwindow/Docking$OnDockingListener;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingListener:Lcom/android/internal/policy/multiwindow/Docking$OnDockingListener;

    .line 94
    return-void
.end method

.method public updateZone(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/multiwindow/Docking;->updateZone(IIZ)Z

    move-result v0

    return v0
.end method

.method public updateZone(IIZ)Z
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "ignoreRatio"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-wide/16 v8, 0x2bc

    const/4 v6, 0x0

    const/16 v5, 0x65

    .line 166
    :try_start_0
    iget-boolean v3, p0, Lcom/android/internal/policy/multiwindow/Docking;->mIsSupportSplitDocking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    .line 193
    iget v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingZone:I

    if-nez v2, :cond_1

    .line 194
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 199
    :cond_0
    :goto_0
    return v1

    .line 197
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingCanceled:Z

    if-nez v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v5, p1, p2, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 170
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingZone:I

    .line 171
    .local v0, "lastZone":I
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/multiwindow/Docking;->checkDockingWindow(IIZ)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingZone:I

    .line 173
    iget v3, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingZone:I

    if-nez v3, :cond_5

    .line 174
    iget-boolean v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingCanceled:Z

    if-eqz v2, :cond_3

    .line 175
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingCanceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    :cond_3
    iget v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingZone:I

    if-nez v2, :cond_4

    .line 194
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 197
    :cond_4
    iget-boolean v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingCanceled:Z

    if-nez v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v5, p1, p2, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 179
    :cond_5
    :try_start_2
    iget-boolean v3, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingCanceled:Z

    if-eqz v3, :cond_b

    .line 180
    iget v3, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingX:I

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingMargin:I

    if-gt v3, v4, :cond_6

    iget v3, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingY:I

    sub-int v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingMargin:I

    if-le v3, v4, :cond_9

    .line 181
    :cond_6
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingCanceled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    iget v1, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingZone:I

    if-nez v1, :cond_8

    .line 194
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 195
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_7
    :goto_1
    move v1, v2

    .line 199
    goto/16 :goto_0

    .line 197
    :cond_8
    iget-boolean v1, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingCanceled:Z

    if-nez v1, :cond_7

    .line 198
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 199
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v5, p1, p2, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 193
    :cond_9
    iget v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingZone:I

    if-nez v2, :cond_a

    .line 194
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 197
    :cond_a
    iget-boolean v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingCanceled:Z

    if-nez v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v5, p1, p2, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 186
    :cond_b
    :try_start_3
    iget v3, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingZone:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v0, v3, :cond_d

    .line 193
    iget v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingZone:I

    if-nez v2, :cond_c

    .line 194
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 197
    :cond_c
    iget-boolean v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingCanceled:Z

    if-nez v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v5, p1, p2, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 193
    :cond_d
    iget v1, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingZone:I

    if-nez v1, :cond_f

    .line 194
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 195
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_e
    :goto_2
    move v1, v2

    .line 199
    goto/16 :goto_0

    .line 197
    :cond_f
    iget-boolean v1, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingCanceled:Z

    if-nez v1, :cond_e

    .line 198
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 199
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v5, p1, p2, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 193
    .end local v0    # "lastZone":I
    :catchall_0
    move-exception v1

    iget v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingZone:I

    if-nez v2, :cond_11

    .line 194
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 195
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 199
    :cond_10
    :goto_3
    throw v1

    .line 197
    :cond_11
    iget-boolean v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mDockingCanceled:Z

    if-nez v2, :cond_10

    .line 198
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_10

    .line 199
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v5, p1, p2, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3
.end method
