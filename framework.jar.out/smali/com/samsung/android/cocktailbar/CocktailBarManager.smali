.class public Lcom/samsung/android/cocktailbar/CocktailBarManager;
.super Ljava/lang/Object;
.source "CocktailBarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$WakeUp;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$SysFs;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$States;,
        Lcom/samsung/android/cocktailbar/CocktailBarManager$WindowTypes;
    }
.end annotation


# static fields
.field public static final ACTION_COCKTAIL_BAR_COCKTAIL_UNINSTALLED:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.action.COCKTAIL_BAR_COCKTAIL_UNINSTALLED"

.field public static final ACTION_COCKTAIL_BAR_WAKE_UP_STATE:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.action.COCKTAIL_BAR_WAKE_UP_STATE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_COCKTAIL_DISABLED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_DISABLED"

.field public static final ACTION_COCKTAIL_DROPED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_DROPED"

.field public static final ACTION_COCKTAIL_ENABLED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_ENABLED"

.field public static final ACTION_COCKTAIL_UPDATE:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

.field public static final ACTION_COCKTAIL_UPDATE_FEEDS:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_UPDATE_FEEDS"

.field public static final ACTION_COCKTAIL_UPDATE_V2:Ljava/lang/String; = "com.samsung.android.cocktail.v2.action.COCKTAIL_UPDATE"

.field public static final ACTION_COCKTAIL_VISIBILITY_CHANGED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_VISIBILITY_CHANGED"

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL:I = 0x10000

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_CALLING:I = 0x10002

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_COMMAND:I = 0x10007

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_HEADSET:I = 0x10005

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_INCOMING_CALL:I = 0x10001

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_NOTIFICATION:I = 0x10004

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_SPEN:I = 0x10006
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_TICKER:I = 0x10003

.field public static final COCKTAIL_CATEGORY_GLOBAL:I = 0x1

.field public static final COCKTAIL_DISPLAY_POLICY_ALL:I = 0x9f

.field public static final COCKTAIL_DISPLAY_POLICY_GENERAL:I = 0x1

.field public static final COCKTAIL_DISPLAY_POLICY_INDEX_MODE:I = 0x10

.field public static final COCKTAIL_DISPLAY_POLICY_LOCKSCREEN:I = 0x2

.field public static final COCKTAIL_DISPLAY_POLICY_NOT_PROVISION:I = 0x80

.field public static final COCKTAIL_DISPLAY_POLICY_SCOVER:I = 0x4

.field public static final COCKTAIL_DISPLAY_POLICY_TABLE_MODE:I = 0x8

.field public static final COCKTAIL_VISIBILITY_HIDE:I = 0x2

.field public static final COCKTAIL_VISIBILITY_SHOW:I = 0x1

.field public static final EXTRA_COCKTAIL_BAR_WAKE_UP_STATE:Ljava/lang/String; = "cocktailbarWakeupState"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_COCKTAIL_ID:Ljava/lang/String; = "cocktailId"

.field public static final EXTRA_COCKTAIL_IDS:Ljava/lang/String; = "cocktailIds"

.field public static final EXTRA_COCKTAIL_PROVIDER:Ljava/lang/String; = "cocktailProvider"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_COCKTAIL_VISIBILITY:Ljava/lang/String; = "cocktailVisibility"

.field public static final EXTRA_DRAG_EVENT:Ljava/lang/String; = "com.samsung.android.intent.extra.DRAG_EVENT"

.field public static final INVALID_COCKTAIL_ID:I = 0x0

.field public static final META_DATA_COCKTAIL_PROVIDER:Ljava/lang/String; = "com.samsung.android.cocktail.provider"

.field private static final TAG:Ljava/lang/String; = "CocktailBarManager"

.field public static final TYPE_WAKEUP_GESTURE_PICKUP:I = 0x1

.field public static final TYPE_WAKEUP_GESTURE_RUB:I = 0x2


# instance fields
.field private final mCocktailBarFeedsListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mCocktailBarSize:I

.field private final mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFeedsListnerDelegatesLock:Ljava/lang/Object;

.field private final mPackageName:Ljava/lang/String;

.field private mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

.field private mStateListnerDelegatesLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/cocktailbar/ICocktailBarService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/cocktailbar/ICocktailBarService;

    .prologue
    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarSize:I

    .line 450
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mStateListnerDelegatesLock:Ljava/lang/Object;

    .line 452
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mFeedsListnerDelegatesLock:Ljava/lang/Object;

    .line 454
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 456
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarFeedsListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 475
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    .line 476
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    .line 477
    iput-object p2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    .line 478
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/cocktailbar/CocktailBarManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailBarManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 464
    const-string v0, "CocktailBarService"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/CocktailBarManager;

    return-object v0
.end method

.method private getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;
    .locals 2

    .prologue
    .line 505
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    .line 506
    const-string v1, "CocktailBarService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 507
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    .line 509
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    return-object v1
.end method


# virtual methods
.method public activateCocktailBar()V
    .locals 3

    .prologue
    .line 1303
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1311
    :goto_0
    return-void

    .line 1307
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->activateCocktailBar()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1308
    :catch_0
    move-exception v0

    .line 1309
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "connection"    # Landroid/os/IBinder;

    .prologue
    .line 928
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 936
    :goto_0
    return-void

    .line 932
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 933
    :catch_0
    move-exception v0

    .line 934
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public closeCocktail(II)V
    .locals 3
    .param p1, "cocktailId"    # I
    .param p2, "catetory"    # I

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 679
    :goto_0
    return-void

    .line 675
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->closeCocktail(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public cocktailBarreboot()V
    .locals 3

    .prologue
    .line 1228
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1236
    :goto_0
    return-void

    .line 1232
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->cocktailBarreboot(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1233
    :catch_0
    move-exception v0

    .line 1234
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public cocktailBarshutdown()V
    .locals 3

    .prologue
    .line 1213
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1221
    :goto_0
    return-void

    .line 1217
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->cocktailBarshutdown(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1218
    :catch_0
    move-exception v0

    .line 1219
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deactivateCocktailBar()V
    .locals 3

    .prologue
    .line 1318
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1326
    :goto_0
    return-void

    .line 1322
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->deactivateCocktailBar()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1323
    :catch_0
    move-exception v0

    .line 1324
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public disableCocktail(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 750
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 758
    :goto_0
    return-void

    .line 754
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->disableCocktail(Ljava/lang/String;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 755
    :catch_0
    move-exception v0

    .line 756
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAllCocktailIds()[I
    .locals 3

    .prologue
    .line 765
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 766
    const/4 v1, 0x0

    .line 769
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getAllCocktailIds()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 770
    :catch_0
    move-exception v0

    .line 771
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktaiBarWakeUpState()Z
    .locals 3

    .prologue
    .line 1125
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1126
    const/4 v1, 0x0

    .line 1129
    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktaiBarWakeUpState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1130
    :catch_0
    move-exception v0

    .line 1131
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;
    .locals 3
    .param p1, "cocktailId"    # I

    .prologue
    .line 780
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 781
    const/4 v1, 0x0

    .line 784
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 785
    :catch_0
    move-exception v0

    .line 786
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktailBarSize()I
    .locals 2

    .prologue
    .line 959
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarSize:I

    if-gez v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarSize:I

    .line 962
    :cond_0
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarSize:I

    return v0
.end method

.method public getCocktailBarVisibility()I
    .locals 3

    .prologue
    .line 1243
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1244
    const/4 v1, 0x2

    .line 1247
    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailBarVisibility()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1248
    :catch_0
    move-exception v0

    .line 1249
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktailBarWindowType()I
    .locals 3

    .prologue
    .line 1258
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1259
    const/4 v1, 0x0

    .line 1262
    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1263
    :catch_0
    move-exception v0

    .line 1264
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktailId(Landroid/content/ComponentName;)I
    .locals 3
    .param p1, "provider"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 495
    :cond_0
    const/4 v1, 0x0

    .line 498
    :goto_0
    return v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailId(Ljava/lang/String;Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCocktailIds(Landroid/content/ComponentName;)[I
    .locals 4
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 517
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 518
    :cond_0
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 519
    .local v0, "cocktailIds":[I
    aput v3, v0, v3

    .line 523
    .end local v0    # "cocktailIds":[I
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailIds(Ljava/lang/String;Landroid/content/ComponentName;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 524
    :catch_0
    move-exception v1

    .line 525
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "CocktailBarService dead?"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getEnabledCocktailIds()[I
    .locals 3

    .prologue
    .line 735
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 736
    const/4 v1, 0x0

    .line 739
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getEnabledCocktailIds()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 740
    :catch_0
    move-exception v0

    .line 741
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAllowTransientBarCocktailBar()Z
    .locals 3

    .prologue
    .line 907
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 908
    const/4 v1, 0x0

    .line 911
    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->isAllowTransientBarCocktailBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 912
    :catch_0
    move-exception v0

    .line 913
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isCocktailBarShifted()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1141
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabledCocktail(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 535
    :cond_0
    const/4 v1, 0x0

    .line 538
    :goto_0
    return v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->isEnabledCocktail(Ljava/lang/String;Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isImmersiveMode()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1149
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1160
    :cond_0
    :goto_0
    return v2

    .line 1153
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getWindowType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1154
    .local v1, "windowType":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 1155
    const/4 v2, 0x1

    goto :goto_0

    .line 1157
    .end local v1    # "windowType":I
    :catch_0
    move-exception v0

    .line 1158
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "CocktailBarService dead?"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public notifyCocktailViewDataChanged(II)V
    .locals 3
    .param p1, "cocktailId"    # I
    .param p2, "viewId"    # I

    .prologue
    .line 690
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 698
    :goto_0
    return-void

    .line 694
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->notifyCocktailViewDataChanged(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public notifyCocktailVisibiltyChanged(II)V
    .locals 5
    .param p1, "cocktailId"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 879
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 890
    :goto_0
    return-void

    .line 882
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 884
    .local v2, "identityToken":J
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->notifyCocktailVisibiltyChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 885
    :catch_0
    move-exception v0

    .line 886
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "CocktailBarService dead?"

    invoke-direct {v1, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 888
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public notifyKeyguardState(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 857
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 865
    :goto_0
    return-void

    .line 861
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->notifyKeyguardState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 862
    :catch_0
    move-exception v0

    .line 863
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public partiallyUpdateCocktail(ILandroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "cocktailId"    # I
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 624
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 632
    :goto_0
    return-void

    .line 628
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->partiallyUpdateCocktail(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public partiallyUpdateHelpView(ILandroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "cocktailId"    # I
    .param p2, "helpViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 641
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 649
    :goto_0
    return-void

    .line 645
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->partiallyUpdateHelpView(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public registerClient(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "client"    # Landroid/os/IBinder;
    .param p2, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1738
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1750
    :goto_0
    return-void

    .line 1741
    :cond_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_2

    .line 1742
    :cond_1
    const-string v1, "CocktailBarManager"

    const-string/jumbo v2, "registerClient : name or client is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1746
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->registerClient(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1747
    :catch_0
    move-exception v0

    .line 1748
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;)V
    .locals 9
    .param p1, "listener"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    .prologue
    .line 1410
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1441
    :goto_0
    return-void

    .line 1413
    :cond_0
    if-nez p1, :cond_1

    .line 1414
    const-string v6, "CocktailBarManager"

    const-string/jumbo v7, "registerListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1417
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mStateListnerDelegatesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1418
    const/4 v3, 0x0

    .line 1419
    .local v3, "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1420
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1421
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    .line 1422
    .local v5, "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    invoke-virtual {v5}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->getListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 1423
    move-object v3, v5

    move-object v4, v3

    .line 1427
    .end local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .end local v5    # "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .local v4, "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :goto_1
    if-nez v4, :cond_4

    .line 1428
    :try_start_1
    new-instance v3, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    const/4 v6, 0x0

    invoke-direct {v3, p0, p1, v6}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;-><init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1429
    .end local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .restart local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1431
    :goto_2
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1433
    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 1435
    :try_start_3
    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v6, v3, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->registerCocktailBarStateListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1440
    :cond_3
    :goto_3
    :try_start_4
    monitor-exit v7

    goto :goto_0

    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;>;"
    :catchall_0
    move-exception v6

    :goto_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 1436
    .restart local v0    # "cm":Landroid/content/ComponentName;
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;>;"
    :catch_0
    move-exception v1

    .line 1437
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v6, "CocktailBarManager"

    const-string/jumbo v8, "registerListener : RemoteException : "

    invoke-static {v6, v8, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 1440
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .restart local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .restart local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    goto :goto_4

    .end local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .restart local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :cond_4
    move-object v3, v4

    .end local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .restart local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    goto :goto_2

    :cond_5
    move-object v4, v3

    .end local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .restart local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    goto :goto_1
.end method

.method public registerOnFeedsUpdatedListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;)V
    .locals 9
    .param p1, "listener"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;

    .prologue
    .line 1597
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1628
    :goto_0
    return-void

    .line 1600
    :cond_0
    if-nez p1, :cond_1

    .line 1601
    const-string v6, "CocktailBarManager"

    const-string/jumbo v7, "registerOnFeedsUpdatedListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1604
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mFeedsListnerDelegatesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1605
    const/4 v3, 0x0

    .line 1606
    .local v3, "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarFeedsListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1607
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1608
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;

    .line 1609
    .local v5, "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    invoke-virtual {v5}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;->getListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 1610
    move-object v3, v5

    move-object v4, v3

    .line 1614
    .end local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    .end local v5    # "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    .local v4, "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    :goto_1
    if-nez v4, :cond_4

    .line 1615
    :try_start_1
    new-instance v3, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;

    const/4 v6, 0x0

    invoke-direct {v3, p0, p1, v6}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;-><init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1616
    .end local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    .restart local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarFeedsListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1618
    :goto_2
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1620
    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 1622
    :try_start_3
    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v6, v3, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->registerCocktailBarFeedsListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1627
    :cond_3
    :goto_3
    :try_start_4
    monitor-exit v7

    goto :goto_0

    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;>;"
    :catchall_0
    move-exception v6

    :goto_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 1623
    .restart local v0    # "cm":Landroid/content/ComponentName;
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;>;"
    :catch_0
    move-exception v1

    .line 1624
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v6, "CocktailBarManager"

    const-string/jumbo v8, "registerOnFeedsUpdatedListener : RemoteException : "

    invoke-static {v6, v8, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 1627
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    .restart local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    .restart local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    goto :goto_4

    .end local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    .restart local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    :cond_4
    move-object v3, v4

    .end local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    .restart local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    goto :goto_2

    :cond_5
    move-object v4, v3

    .end local v3    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    .restart local v4    # "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    goto :goto_1
.end method

.method public removeCocktailUIService()V
    .locals 3

    .prologue
    .line 1198
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1206
    :goto_0
    return-void

    .line 1202
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->removeCocktailUIService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1203
    :catch_0
    move-exception v0

    .line 1204
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestToDisableCocktail(I)Z
    .locals 3
    .param p1, "cocktailId"    # I

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 811
    const/4 v1, 0x0

    .line 814
    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->requestToDisableCocktail(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestToDisableCocktailByCategory(I)Z
    .locals 3
    .param p1, "category"    # I

    .prologue
    .line 840
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 841
    const/4 v1, 0x0

    .line 844
    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->requestToDisableCocktailByCategory(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestToUpdateCocktail(I)Z
    .locals 3
    .param p1, "cocktailId"    # I

    .prologue
    .line 795
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 796
    const/4 v1, 0x0

    .line 799
    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->requestToUpdateCocktail(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestToUpdateCocktailByCategory(I)Z
    .locals 3
    .param p1, "category"    # I

    .prologue
    .line 825
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 826
    const/4 v1, 0x0

    .line 829
    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->requestToUpdateCocktailByCategory(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 830
    :catch_0
    move-exception v0

    .line 831
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public sendDragEvent(ILandroid/view/DragEvent;)V
    .locals 5
    .param p1, "cocktailId"    # I
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 893
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 904
    :goto_0
    return-void

    .line 896
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 898
    .local v2, "identityToken":J
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->sendDragEvent(ILandroid/view/DragEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 899
    :catch_0
    move-exception v0

    .line 900
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "CocktailBarService dead?"

    invoke-direct {v1, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 902
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public sendExtraDataToCocktailBar(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extraData"    # Landroid/os/Bundle;

    .prologue
    .line 1183
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1191
    :goto_0
    return-void

    .line 1187
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->sendExtraDataToCocktailBar(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1188
    :catch_0
    move-exception v0

    .line 1189
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setCocktailBarStatus(ZZ)V
    .locals 3
    .param p1, "shift"    # Z
    .param p2, "transparent"    # Z

    .prologue
    .line 1363
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1371
    :goto_0
    return-void

    .line 1367
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setCocktailBarStatus(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1368
    :catch_0
    move-exception v0

    .line 1369
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setCocktailBarWakeUpState(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 1108
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1116
    :goto_0
    return-void

    .line 1112
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setCocktailBarWakeUpState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1113
    :catch_0
    move-exception v0

    .line 1114
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setDisableTickerView(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 868
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 876
    :goto_0
    return-void

    .line 872
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setDisableTickerView(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 873
    :catch_0
    move-exception v0

    .line 874
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setEnabledCocktailIds([I)V
    .locals 3
    .param p1, "cocktailIds"    # [I

    .prologue
    .line 720
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 728
    :goto_0
    return-void

    .line 724
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setEnabledCocktailIds([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 725
    :catch_0
    move-exception v0

    .line 726
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public showAndLockCocktailBar()V
    .locals 3

    .prologue
    .line 1273
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1281
    :goto_0
    return-void

    .line 1277
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->showAndLockCocktailBar()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1278
    :catch_0
    move-exception v0

    .line 1279
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public showCocktail(I)V
    .locals 3
    .param p1, "cocktailId"    # I

    .prologue
    .line 656
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 664
    :goto_0
    return-void

    .line 660
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->showCocktail(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 661
    :catch_0
    move-exception v0

    .line 662
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public switchDefaultCocktail()V
    .locals 3

    .prologue
    .line 1168
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1176
    :goto_0
    return-void

    .line 1172
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->switchDefaultCocktail()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1173
    :catch_0
    move-exception v0

    .line 1174
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cocktailId"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 948
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 956
    :goto_0
    return-void

    .line 952
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 953
    :catch_0
    move-exception v0

    .line 954
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unlockCocktailBar(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 1288
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1296
    :goto_0
    return-void

    .line 1292
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->unlockCocktailBar(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1293
    :catch_0
    move-exception v0

    .line 1294
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unregisterClient(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "client"    # Landroid/os/IBinder;

    .prologue
    .line 1760
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1772
    :goto_0
    return-void

    .line 1763
    :cond_0
    if-nez p1, :cond_1

    .line 1764
    const-string v1, "CocktailBarManager"

    const-string/jumbo v2, "unregisterClient : client is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1768
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->unregisterClient(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1769
    :catch_0
    move-exception v0

    .line 1770
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    .prologue
    .line 1450
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1477
    :goto_0
    return-void

    .line 1453
    :cond_0
    if-nez p1, :cond_1

    .line 1454
    const-string v4, "CocktailBarManager"

    const-string/jumbo v5, "unregisterListener : listener is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1457
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mStateListnerDelegatesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1458
    const/4 v2, 0x0

    .line 1459
    .local v2, "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1460
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    .line 1461
    .local v3, "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->getListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1462
    move-object v2, v3

    .line 1466
    .end local v3    # "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    :cond_3
    if-nez v2, :cond_4

    .line 1467
    const-string v4, "CocktailBarManager"

    const-string/jumbo v6, "unregisterListener : cannot find the listener"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    monitor-exit v5

    goto :goto_0

    .line 1476
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1471
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;>;"
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v4, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->unregisterCocktailBarStateListenerCallback(Landroid/os/IBinder;)V

    .line 1472
    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1476
    :goto_1
    :try_start_2
    monitor-exit v5

    goto :goto_0

    .line 1473
    :catch_0
    move-exception v0

    .line 1474
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "CocktailBarManager"

    const-string/jumbo v6, "unregisterListener : RemoteException : "

    invoke-static {v4, v6, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public unregisterOnFeedsUpdatedListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;

    .prologue
    .line 1637
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1664
    :goto_0
    return-void

    .line 1640
    :cond_0
    if-nez p1, :cond_1

    .line 1641
    const-string v4, "CocktailBarManager"

    const-string/jumbo v5, "unregisterOnFeedsUpdatedListener : listener is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1644
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mFeedsListnerDelegatesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1645
    const/4 v2, 0x0

    .line 1646
    .local v2, "listenerDelegate":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarFeedsListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1647
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;

    .line 1648
    .local v3, "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;->getListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1649
    move-object v2, v3

    .line 1653
    .end local v3    # "temp":Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;
    :cond_3
    if-nez v2, :cond_4

    .line 1654
    const-string v4, "CocktailBarManager"

    const-string/jumbo v6, "unregisterOnFeedsUpdatedListener : cannot find the listener"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    monitor-exit v5

    goto :goto_0

    .line 1663
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1658
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListenerDelegate;>;"
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v4, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->unregisterCocktailBarFeedsListenerCallback(Landroid/os/IBinder;)V

    .line 1659
    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mCocktailBarFeedsListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1663
    :goto_1
    :try_start_2
    monitor-exit v5

    goto :goto_0

    .line 1660
    :catch_0
    move-exception v0

    .line 1661
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "CocktailBarManager"

    const-string/jumbo v6, "unregisterOnFeedsUpdatedListener : RemoteException : "

    invoke-static {v4, v6, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public updateCocktail(IIILandroid/widget/RemoteViews;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "cocktailId"    # I
    .param p2, "displayPolicy"    # I
    .param p3, "category"    # I
    .param p4, "contentView"    # Landroid/widget/RemoteViews;
    .param p5, "contentInfo"    # Landroid/os/Bundle;

    .prologue
    .line 550
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v3

    if-nez v3, :cond_0

    .line 566
    :goto_0
    return-void

    .line 553
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 555
    .local v1, "configuration":Landroid/content/res/Configuration;
    :try_start_0
    new-instance v3, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;-><init>(Landroid/content/Context;)V

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setOrientation(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setDiplayPolicy(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentInfo(Landroid/os/Bundle;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->build()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v0

    .line 562
    .local v0, "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, v0, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktail(Ljava/lang/String;Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 563
    .end local v0    # "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :catch_0
    move-exception v2

    .line 564
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "CocktailBarService dead?"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public updateCocktail(IIILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "cocktailId"    # I
    .param p2, "displayPolicy"    # I
    .param p3, "category"    # I
    .param p4, "contentView"    # Landroid/widget/RemoteViews;
    .param p5, "helpView"    # Landroid/widget/RemoteViews;
    .param p6, "contentInfo"    # Landroid/os/Bundle;

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v3

    if-nez v3, :cond_0

    .line 591
    :goto_0
    return-void

    .line 577
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 579
    .local v1, "configuration":Landroid/content/res/Configuration;
    :try_start_0
    new-instance v3, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;-><init>(Landroid/content/Context;)V

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setOrientation(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setDiplayPolicy(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setHelpView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p6}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentInfo(Landroid/os/Bundle;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->build()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v0

    .line 587
    .local v0, "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, v0, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktail(Ljava/lang/String;Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 588
    .end local v0    # "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :catch_0
    move-exception v2

    .line 589
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "CocktailBarService dead?"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public updateCocktail(IIILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/os/Bundle;Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "cocktailId"    # I
    .param p2, "displayPolicy"    # I
    .param p3, "category"    # I
    .param p4, "contentView"    # Landroid/widget/RemoteViews;
    .param p5, "helpView"    # Landroid/widget/RemoteViews;
    .param p6, "contentInfo"    # Landroid/os/Bundle;
    .param p7, "classInfo"    # Landroid/content/ComponentName;

    .prologue
    .line 599
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v3

    if-nez v3, :cond_0

    .line 617
    :goto_0
    return-void

    .line 602
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 604
    .local v1, "configuration":Landroid/content/res/Configuration;
    :try_start_0
    new-instance v3, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;-><init>(Landroid/content/Context;)V

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setOrientation(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setDiplayPolicy(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setHelpView(Landroid/widget/RemoteViews;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p6}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setContentInfo(Landroid/os/Bundle;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p7}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->setClassloader(Landroid/content/ComponentName;)Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;->build()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v0

    .line 613
    .local v0, "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, v0, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktail(Ljava/lang/String;Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 614
    .end local v0    # "cocktailInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :catch_0
    move-exception v2

    .line 615
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "CocktailBarService dead?"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public updateCocktailBarPosition(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1378
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1386
    :goto_0
    return-void

    .line 1382
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktailBarPosition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1383
    :catch_0
    move-exception v0

    .line 1384
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateCocktailBarStateFromSystem(I)V
    .locals 3
    .param p1, "windowType"    # I

    .prologue
    .line 1348
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1356
    :goto_0
    return-void

    .line 1352
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktailBarStateFromSystem(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1353
    :catch_0
    move-exception v0

    .line 1354
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateCocktailBarVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 1333
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1341
    :goto_0
    return-void

    .line 1337
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktailBarVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1338
    :catch_0
    move-exception v0

    .line 1339
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateCocktailBarWindowType(I)V
    .locals 3
    .param p1, "windowType"    # I

    .prologue
    .line 1393
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1401
    :goto_0
    return-void

    .line 1397
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateCocktailBarWindowType(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1398
    :catch_0
    move-exception v0

    .line 1399
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateFeeds(ILjava/util/List;)V
    .locals 3
    .param p1, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/cocktailbar/FeedsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 701
    .local p2, "feedsInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/cocktailbar/FeedsInfo;>;"
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 713
    :goto_0
    return-void

    .line 704
    :cond_0
    if-nez p2, :cond_1

    .line 705
    const-string v1, "CocktailBarManager"

    const-string/jumbo v2, "updateFeeds : feedsInfoList is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 709
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateFeeds(Ljava/lang/String;ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 710
    :catch_0
    move-exception v0

    .line 711
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateLongpressGesture(Z)V
    .locals 3
    .param p1, "bEnable"    # Z

    .prologue
    .line 1021
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1029
    :goto_0
    return-void

    .line 1025
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateLongpressGesture(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1026
    :catch_0
    move-exception v0

    .line 1027
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateSysfsBarLength(I)V
    .locals 3
    .param p1, "barLength"    # I

    .prologue
    .line 1056
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1064
    :goto_0
    return-void

    .line 1060
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateSysfsBarLength(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1061
    :catch_0
    move-exception v0

    .line 1062
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateSysfsDeadZone(I)V
    .locals 3
    .param p1, "deadzone"    # I

    .prologue
    .line 1038
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1046
    :goto_0
    return-void

    .line 1042
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateSysfsDeadZone(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateSysfsGripDisable(Z)V
    .locals 3
    .param p1, "bDisable"    # Z

    .prologue
    .line 1073
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1081
    :goto_0
    return-void

    .line 1077
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateSysfsGripDisable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1078
    :catch_0
    move-exception v0

    .line 1079
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateWakeupArea(I)V
    .locals 3
    .param p1, "area"    # I

    .prologue
    .line 1004
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1012
    :goto_0
    return-void

    .line 1008
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateWakeupArea(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1009
    :catch_0
    move-exception v0

    .line 1010
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateWakeupGesture(IZ)V
    .locals 3
    .param p1, "gestureType"    # I
    .param p2, "bEnable"    # Z

    .prologue
    .line 987
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 995
    :goto_0
    return-void

    .line 991
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->updateWakeupGesture(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 992
    :catch_0
    move-exception v0

    .line 993
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public wakeupCocktailBar(ZII)V
    .locals 3
    .param p1, "bEnable"    # Z
    .param p2, "keyCode"    # I
    .param p3, "reason"    # I

    .prologue
    .line 1091
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getService()Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1099
    :goto_0
    return-void

    .line 1095
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->wakeupCocktailBar(ZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1096
    :catch_0
    move-exception v0

    .line 1097
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "CocktailBarService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
