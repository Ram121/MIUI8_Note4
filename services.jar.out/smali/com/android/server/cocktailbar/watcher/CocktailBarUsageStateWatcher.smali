.class public Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;
.super Ljava/lang/Object;
.source "CocktailBarUsageStateWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;
    }
.end annotation


# static fields
.field public static final LEVEL_META_DATA:I = 0x2

.field public static final LEVEL_PACKAGE:I = 0x1

.field public static final LEVEL_WHISPER:I = 0x4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mCategoryFilter:I

.field private mContext:Landroid/content/Context;

.field private mCurrentPackageName:Ljava/lang/String;

.field private mLevel:I

.field private mListener:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;

.field private mLock:Ljava/lang/Object;

.field private mMetaDataHideEdgeService:Ljava/lang/String;

.field private mPackageHideEdgeServiceList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

.field private mUsageStatsWatcher:Landroid/app/usage/IUsageStatsWatcher$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mCurrentPackageName:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLock:Ljava/lang/Object;

    .line 42
    iput-object p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mListener:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;

    .line 44
    iget-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mActivityManager:Landroid/app/ActivityManager;

    .line 45
    iget-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    iput-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    .line 46
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getPackageHideEdgeServiceList()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    .line 47
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getMetaDataHideEdgeService()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mMetaDataHideEdgeService:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getCategoryFilter()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->getCategoryIds(Ljava/util/ArrayList;)I

    move-result v0

    iput v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mCategoryFilter:I

    .line 49
    iget-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 50
    iget v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mMetaDataHideEdgeService:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mMetaDataHideEdgeService:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 53
    iget v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I

    .line 55
    :cond_1
    iget v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mCategoryFilter:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    .line 56
    iget v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I

    .line 58
    :cond_2
    iget v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I

    if-lez v0, :cond_3

    .line 59
    invoke-direct {p0}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->registerUsageStatsWatcher()V

    .line 61
    :cond_3
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    .prologue
    .line 22
    iget v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mMetaDataHideEdgeService:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mListener:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mCurrentPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mCurrentPackageName:Ljava/lang/String;

    return-object p1
.end method

.method private registerUsageStatsWatcher()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mUsageStatsWatcher:Landroid/app/usage/IUsageStatsWatcher$Stub;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;-><init>(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mUsageStatsWatcher:Landroid/app/usage/IUsageStatsWatcher$Stub;

    .line 128
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    iget-object v1, p0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mUsageStatsWatcher:Landroid/app/usage/IUsageStatsWatcher$Stub;

    invoke-virtual {v0, v1}, Landroid/app/usage/UsageStatsManager;->registerUsageStatsWatcher(Landroid/app/usage/IUsageStatsWatcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_1
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    goto :goto_0
.end method
