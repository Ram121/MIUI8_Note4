.class public final Landroid/app/ActivityThread;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityThread$DropBoxReporter;,
        Landroid/app/ActivityThread$EventLoggingReporter;,
        Landroid/app/ActivityThread$ProviderRefCount;,
        Landroid/app/ActivityThread$StopInfo;,
        Landroid/app/ActivityThread$mRunnable;,
        Landroid/app/ActivityThread$GcIdler;,
        Landroid/app/ActivityThread$Idler;,
        Landroid/app/ActivityThread$H;,
        Landroid/app/ActivityThread$ApplicationThread;,
        Landroid/app/ActivityThread$MultiWindowFocusChangeData;,
        Landroid/app/ActivityThread$ActivityConfigChangeData;,
        Landroid/app/ActivityThread$RequestAssistContextExtras;,
        Landroid/app/ActivityThread$UpdateCompatibilityData;,
        Landroid/app/ActivityThread$DumpHeapData;,
        Landroid/app/ActivityThread$ContextCleanupInfo;,
        Landroid/app/ActivityThread$ResultData;,
        Landroid/app/ActivityThread$DumpComponentInfo;,
        Landroid/app/ActivityThread$Profiler;,
        Landroid/app/ActivityThread$AppBindData;,
        Landroid/app/ActivityThread$ServiceArgsData;,
        Landroid/app/ActivityThread$BindServiceData;,
        Landroid/app/ActivityThread$CreateServiceData;,
        Landroid/app/ActivityThread$CreateBackupAgentData;,
        Landroid/app/ActivityThread$ReceiverData;,
        Landroid/app/ActivityThread$NewIntentData;,
        Landroid/app/ActivityThread$ProviderClientRecord;,
        Landroid/app/ActivityThread$ActivityClientRecord;,
        Landroid/app/ActivityThread$ProviderKey;
    }
.end annotation


# static fields
.field private static final ACTIVITY_THREAD_CHECKIN_VERSION:I = 0x3

.field private static final DEBUG_BACKUP:Z = false

.field public static final DEBUG_BROADCAST:Z = false

.field public static final DEBUG_CONFIGURATION:Z = false

.field static final DEBUG_DUALSCREEN:Z

.field static final DEBUG_DUALSCREEN_VERBOSE:Z

.field private static final DEBUG_MEMORY_TRIM:Z = false

.field static final DEBUG_MESSAGES:Z = false

.field private static final DEBUG_PROVIDER:Z = false

.field private static final DEBUG_RC:Z = false

.field private static final DEBUG_RESULTS:Z = false

.field private static final DEBUG_SERVICE:Z = false

.field public static final DUAL_SCREEN_TYPE_MAX:I = 0x4

.field private static final HEAP_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s %8s"

.field private static final HEAP_FULL_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

.field private static final LOG_AM_ON_PAUSE_CALLED:I = 0x7545

.field private static final LOG_AM_ON_RESUME_CALLED:I = 0x7546

.field private static final LOOPER_SLOW_LOOP_WARNING_TIMEOUT:I

.field private static final MIN_TIME_BETWEEN_GCS:J = 0x1388L

.field private static final ONE_COUNT_COLUMN:Ljava/lang/String; = "%21s %8d"

.field private static final ONE_COUNT_COLUMN_HEADER:Ljava/lang/String; = "%21s %8s"

.field static final SAFE_DEBUG:Z

.field public static final SERVICE_DONE_EXECUTING_ANON:I = 0x0

.field public static final SERVICE_DONE_EXECUTING_START:I = 0x1

.field public static final SERVICE_DONE_EXECUTING_STOP:I = 0x2

.field private static final SQLITE_MEM_RELEASED_EVENT_LOG_TAG:I = 0x124fb

.field public static final TAG:Ljava/lang/String; = "ActivityThread"

.field private static final THREAD_PRIORITY:I = -0xb

.field private static final THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

.field private static final TWO_COUNT_COLUMNS:Ljava/lang/String; = "%21s %8d %21s %8d"

.field private static final isElasticEnabled:Z = false

.field static final localLOGV:Z = false

.field private static final mIsWearableHMTSupported:Z = true

.field private static rCActivShort:Ljava/lang/String;

.field private static final sCSCSync:Ljava/lang/Object;

.field public static sCscFeature:Lcom/sec/android/app/CscFeature;

.field private static sCurrentActivityThread:Landroid/app/ActivityThread;

.field private static final sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public static sFloatingFeature:Lcom/samsung/android/feature/FloatingFeature;

.field static sMainThreadHandler:Landroid/os/Handler;

.field static sPackageManager:Landroid/content/pm/IPackageManager;

.field private static final sThemeSync:Ljava/lang/Object;


# instance fields
.field private defaultHeapUtil:F

.field final mActivities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mAllApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field final mAppThread:Landroid/app/ActivityThread$ApplicationThread;

.field private mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

.field final mBackupAgents:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/backup/BackupAgent;",
            ">;"
        }
    .end annotation
.end field

.field mBoundApplication:Landroid/app/ActivityThread$AppBindData;

.field mCSCIconMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCSCStringMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCompatConfiguration:Landroid/content/res/Configuration;

.field mCompatConfigurations:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field mConfiguration:Landroid/content/res/Configuration;

.field mConfigurations:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public mCoreFeatureClassLoader:Ljava/lang/ClassLoader;

.field mCoreSettings:Landroid/os/Bundle;

.field mCurDefaultDisplayDpi:I

.field mCurDefaultDisplayDpis:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mDensityCompatMode:Z

.field final mGcIdler:Landroid/app/ActivityThread$GcIdler;

.field mGcIdlerScheduled:Z

.field final mH:Landroid/app/ActivityThread$H;

.field mInitialApplication:Landroid/app/Application;

.field mInitialApplications:[Landroid/app/Application;

.field mInstrumentation:Landroid/app/Instrumentation;

.field mInstrumentationAppDir:Ljava/lang/String;

.field mInstrumentationLibDir:Ljava/lang/String;

.field mInstrumentationPackageName:Ljava/lang/String;

.field mInstrumentationSplitAppDirs:[Ljava/lang/String;

.field mInstrumentedAppDir:Ljava/lang/String;

.field mInstrumentedLibDir:Ljava/lang/String;

.field mInstrumentedSplitAppDirs:[Ljava/lang/String;

.field mJitEnabled:Z

.field mLastAssistStructure:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/assist/AssistStructure;",
            ">;"
        }
    .end annotation
.end field

.field mLastIntendedActivityToken:Landroid/os/IBinder;

.field final mLocalProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mLocalProvidersByName:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mLooper:Landroid/os/Looper;

.field private mMainThreadConfig:Landroid/content/res/Configuration;

.field mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

.field mNumVisibleActivities:I

.field final mOnPauseListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/OnActivityPausedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation
.end field

.field mPendingConfiguration:Landroid/content/res/Configuration;

.field mPendingConfigurations:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevScreenOrientationDefined:Z

.field mProfiler:Landroid/app/ActivityThread$Profiler;

.field final mProviderMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/ActivityThread$ProviderKey;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mProviderRefCountMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderRefCount;",
            ">;"
        }
    .end annotation
.end field

.field final mRelaunchingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mResourcePackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResourcesManager:Landroid/app/ResourcesManager;

.field final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field mShrinkRequested:Z

.field mSomeActivitiesChanged:Z

.field private mSystemContext:Landroid/app/ContextImpl;

.field mSystemThread:Z

.field mTempConfigurationForSelectiveOrientation:Landroid/content/res/Configuration;

.field mThemeAppIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailCanvas:Landroid/graphics/Canvas;

.field private mThumbnailHeight:I

.field private mThumbnailWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 224
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sput-object v2, Landroid/app/ActivityThread;->THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

    .line 228
    sget-boolean v2, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    sput-boolean v2, Landroid/app/ActivityThread;->DEBUG_DUALSCREEN:Z

    .line 229
    sget-boolean v2, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v2, :cond_0

    :cond_0
    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_DUALSCREEN_VERBOSE:Z

    .line 232
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v1, :cond_1

    :goto_0
    sput-boolean v0, Landroid/app/ActivityThread;->SAFE_DEBUG:Z

    .line 239
    const/4 v0, 0x0

    sput-object v0, Landroid/app/ActivityThread;->rCActivShort:Ljava/lang/String;

    .line 260
    const-string/jumbo v0, "sysprof.activitythread.slowloop"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/app/ActivityThread;->LOOPER_SLOW_LOOP_WARNING_TIMEOUT:I

    .line 397
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/ActivityThread;->sCSCSync:Ljava/lang/Object;

    .line 401
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/ActivityThread;->sThemeSync:Ljava/lang/Object;

    .line 408
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    sput-object v0, Landroid/app/ActivityThread;->sCscFeature:Lcom/sec/android/app/CscFeature;

    .line 410
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    sput-object v0, Landroid/app/ActivityThread;->sFloatingFeature:Lcom/samsung/android/feature/FloatingFeature;

    .line 3581
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    return-void

    :cond_1
    move v0, v1

    .line 232
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    new-instance v0, Landroid/app/ActivityThread$ApplicationThread;

    invoke-direct {v0, p0, v1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    .line 276
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    .line 277
    new-instance v0, Landroid/app/ActivityThread$H;

    invoke-direct {v0, p0, v1}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    .line 278
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    .line 281
    iput-object v1, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 283
    iput v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 285
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    .line 297
    new-instance v0, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    invoke-direct {v0}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpis:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    .line 298
    new-instance v0, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    invoke-direct {v0}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mConfigurations:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    .line 299
    new-instance v0, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    invoke-direct {v0}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mCompatConfigurations:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    .line 300
    new-instance v0, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    invoke-direct {v0}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mPendingConfigurations:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    .line 303
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/app/Application;

    iput-object v0, p0, Landroid/app/ActivityThread;->mInitialApplications:[Landroid/app/Application;

    .line 305
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mShrinkRequested:Z

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    .line 310
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    .line 314
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    .line 315
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 316
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    .line 317
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    .line 318
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 319
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    .line 320
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    .line 321
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 322
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    .line 323
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 334
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    .line 336
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    .line 340
    iput-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 345
    iput-object v1, p0, Landroid/app/ActivityThread;->mTempConfigurationForSelectiveOrientation:Landroid/content/res/Configuration;

    .line 346
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mPrevScreenOrientationDefined:Z

    .line 350
    iput-object v1, p0, Landroid/app/ActivityThread;->mLastIntendedActivityToken:Landroid/os/IBinder;

    .line 382
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    .line 384
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    .line 386
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    .line 388
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    .line 391
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    .line 394
    new-instance v0, Landroid/app/ActivityThread$GcIdler;

    invoke-direct {v0, p0}, Landroid/app/ActivityThread$GcIdler;-><init>(Landroid/app/ActivityThread;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    .line 395
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 398
    iput-object v1, p0, Landroid/app/ActivityThread;->mCSCStringMap:Landroid/util/ArrayMap;

    .line 399
    iput-object v1, p0, Landroid/app/ActivityThread;->mCSCIconMap:Landroid/util/ArrayMap;

    .line 402
    iput-object v1, p0, Landroid/app/ActivityThread;->mThemeAppIconMap:Ljava/util/HashMap;

    .line 406
    iput-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    .line 2295
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mMainThreadConfig:Landroid/content/res/Configuration;

    .line 4444
    iput v3, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    .line 4445
    iput v3, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I

    .line 4446
    iput-object v1, p0, Landroid/app/ActivityThread;->mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 4447
    iput-object v1, p0, Landroid/app/ActivityThread;->mThumbnailCanvas:Landroid/graphics/Canvas;

    .line 2583
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 2584
    return-void
.end method

.method static synthetic access$1000(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleResetTargetHeapUtilization(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 221
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZIZ)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # I
    .param p5, "x5"    # Z

    .prologue
    .line 221
    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->handlePauseActivity(Landroid/os/IBinder;ZZIZ)V

    return-void
.end method

.method static synthetic access$1400(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 221
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->handleStopActivity(Landroid/os/IBinder;ZI)V

    return-void
.end method

.method static synthetic access$1500(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Z

    .prologue
    .line 221
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleWindowVisibility(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$1600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ResultData;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$ResultData;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleSendResult(Landroid/app/ActivityThread$ResultData;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/app/ActivityThread;Landroid/os/IBinder;ZIZ)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .prologue
    .line 221
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/os/IBinder;ZIZ)V

    return-void
.end method

.method static synthetic access$1800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$AppBindData;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/app/ActivityThread;Landroid/app/ActivityThread$NewIntentData;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$NewIntentData;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleNewIntent(Landroid/app/ActivityThread$NewIntentData;)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;
    .locals 1
    .param p0, "x0"    # Landroid/app/ActivityThread;

    .prologue
    .line 221
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$ReceiverData;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$CreateServiceData;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$BindServiceData;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindService(Landroid/app/ActivityThread$BindServiceData;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$BindServiceData;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$ServiceArgsData;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleStopService(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/app/ActivityThread;Landroid/os/IBinder;I)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I

    .prologue
    .line 221
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleActivityDisplayIdChanged(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$2800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpContextRelationInfo(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/app/ActivityThread;I)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # I

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleApplicationDisplayIdChanged(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/app/ActivityThread;ILjava/lang/Object;I)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # I

    .prologue
    .line 221
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$3000(Landroid/app/ActivityThread;Landroid/os/IBinder;I)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I

    .prologue
    .line 221
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleSendExpandRequest(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$3100(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/samsung/android/dualscreen/DualScreen;I)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Lcom/samsung/android/dualscreen/DualScreen;
    .param p3, "x3"    # I

    .prologue
    .line 221
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->handleSendShrinkRequest(Landroid/os/IBinder;Lcom/samsung/android/dualscreen/DualScreen;I)V

    return-void
.end method

.method static synthetic access$3200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    return-void
.end method

.method static synthetic access$3300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    return-void
.end method

.method static synthetic access$3400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static synthetic access$3500(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static synthetic access$3600(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Z

    .prologue
    .line 221
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleSleeping(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$3700(Landroid/app/ActivityThread;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleSetCoreSettings(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$UpdateCompatibilityData;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    return-void
.end method

.method static synthetic access$3900(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleEnterAnimationComplete(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$400(Landroid/app/ActivityThread;ILjava/lang/Object;II)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 221
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$4000(Landroid/app/ActivityThread;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 221
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->handleUpdateOverlayPath(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$4100(Landroid/app/ActivityThread;Landroid/view/DisplayInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/view/DisplayInfo;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDisplayMetricsChanged(Landroid/view/DisplayInfo;)V

    return-void
.end method

.method static synthetic access$4200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->checkAppLockState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    return-void
.end method

.method static synthetic access$4300()V
    .locals 0

    .prologue
    .line 221
    invoke-static {}, Landroid/app/ActivityThread;->niceDown()V

    return-void
.end method

.method static synthetic access$4400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->isSelectiveOrientationStateInner(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/app/ActivityThread;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 221
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Z

    .prologue
    .line 221
    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    return-void
.end method

.method static synthetic access$700(Landroid/app/ActivityThread;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Z

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->updateShrinkRequestedState(Z)V

    return-void
.end method

.method static synthetic access$800(Landroid/app/ActivityThread;Ljava/io/FileDescriptor;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread;
    .param p1, "x1"    # Ljava/io/FileDescriptor;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->dumpGraphicsInfo(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method private attach(Z)V
    .locals 6
    .param p1, "system"    # Z

    .prologue
    .line 6841
    sput-object p0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    .line 6842
    iput-boolean p1, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 6843
    if-nez p1, :cond_0

    .line 6844
    new-instance v3, Landroid/app/ActivityThread$1;

    invoke-direct {v3, p0}, Landroid/app/ActivityThread$1;-><init>(Landroid/app/ActivityThread;)V

    invoke-static {v3}, Landroid/view/ViewRootImpl;->addFirstDrawHandler(Ljava/lang/Runnable;)V

    .line 6850
    const-string v3, "<pre-initialized>"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v3, v4}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    .line 6852
    iget-object v3, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/os/RuntimeInit;->setApplicationObject(Landroid/os/IBinder;)V

    .line 6853
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 6855
    .local v2, "mgr":Landroid/app/IActivityManager;
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->attachApplication(Landroid/app/IApplicationThread;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6860
    :goto_0
    new-instance v3, Landroid/app/ActivityThread$2;

    invoke-direct {v3, p0, v2}, Landroid/app/ActivityThread$2;-><init>(Landroid/app/ActivityThread;Landroid/app/IActivityManager;)V

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->addGcWatcher(Ljava/lang/Runnable;)V

    .line 6903
    .end local v2    # "mgr":Landroid/app/IActivityManager;
    :goto_1
    new-instance v3, Landroid/app/ActivityThread$DropBoxReporter;

    invoke-direct {v3, p0}, Landroid/app/ActivityThread$DropBoxReporter;-><init>(Landroid/app/ActivityThread;)V

    invoke-static {v3}, Llibcore/io/DropBox;->setReporter(Llibcore/io/DropBox$Reporter;)V

    .line 6905
    new-instance v3, Landroid/app/ActivityThread$3;

    invoke-direct {v3, p0}, Landroid/app/ActivityThread$3;-><init>(Landroid/app/ActivityThread;)V

    invoke-static {v3}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/content/ComponentCallbacks;)V

    .line 6944
    return-void

    .line 6883
    :cond_0
    const-string/jumbo v3, "system_process"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v3, v4}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    .line 6886
    :try_start_1
    new-instance v3, Landroid/app/Instrumentation;

    invoke-direct {v3}, Landroid/app/Instrumentation;-><init>()V

    iput-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 6887
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v3

    iget-object v3, v3, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-static {p0, v3}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v0

    .line 6889
    .local v0, "context":Landroid/app/ContextImpl;
    iget-object v3, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 6895
    iget-object v3, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->onCreate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 6896
    .end local v0    # "context":Landroid/app/ContextImpl;
    :catch_0
    move-exception v1

    .line 6897
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate Application():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 6856
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "mgr":Landroid/app/IActivityManager;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private callCallActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .prologue
    .line 5387
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 5388
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 5389
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5390
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 5391
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 5396
    :goto_0
    return-void

    .line 5394
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private checkAppLockState(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 9
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .prologue
    const/4 v8, 0x1

    .line 4175
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4176
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    .line 4177
    .local v4, "pkgName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v3

    .line 4178
    .local v3, "isAppLocked":Z
    const-string v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AppLock checkAppLockState isAppLocked = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pkgName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4179
    if-eqz v3, :cond_0

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->isAppLockedVerifying(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4180
    invoke-virtual {v0, v4, v8}, Landroid/app/ActivityManager;->setAppLockedVerifying(Ljava/lang/String;Z)V

    .line 4181
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.CHECK_APPLOCK_SERVICE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4182
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 4183
    const-string v5, "LAUNCH_FROM_RESUME"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4184
    const-string v5, "LOCKED_PACKAGE_NAME"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4185
    const-string v5, "LOCKED_PACKAGE_INTENT"

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4186
    const/4 v1, 0x0

    .line 4187
    .local v1, "appLockMultiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    if-eqz v5, :cond_1

    .line 4188
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    .line 4192
    :goto_0
    const-string v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AppLock verify multiwindow = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4193
    const-string v5, "LOCKED_PACKAGE_MULTIWINDOWSTYLE"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4195
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/ContextImpl;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4197
    .end local v1    # "appLockMultiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 4190
    .restart local v1    # "appLockMultiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    goto :goto_0
.end method

.method static final cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 5
    .param p0, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .prologue
    const/4 v4, 0x0

    .line 4201
    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 4202
    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 4203
    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 4204
    .local v0, "wtoken":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 4205
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Activity"

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 4209
    .end local v0    # "wtoken":Landroid/os/IBinder;
    :cond_0
    iput-object v4, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    .line 4210
    iput-object v4, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    .line 4211
    return-void
.end method

.method private createBaseContextForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/Activity;)Landroid/content/Context;
    .locals 1
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 3264
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/app/ActivityThread;->createBaseContextForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/Activity;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private createBaseContextForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/Activity;I)Landroid/content/Context;
    .locals 13
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "activityDisplayId"    # I

    .prologue
    .line 3269
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v5

    .line 3271
    .local v5, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    move/from16 v4, p3

    .line 3272
    .local v4, "displayId":I
    const/4 v10, -0x1

    if-ne v4, v10, :cond_0

    .line 3274
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    iget-object v11, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-interface {v10, v11}, Landroid/app/IActivityManager;->getActivityDisplayId(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3279
    :cond_0
    :goto_0
    iget-object v10, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    iget-object v11, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    iget-object v12, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-static {p0, v10, v4, v11, v12}, Landroid/app/ContextImpl;->createActivityContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;ILandroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/app/ContextImpl;

    move-result-object v0

    .line 3281
    .local v0, "appContext":Landroid/app/ContextImpl;
    invoke-virtual {v0, p2}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 3282
    move-object v2, v0

    .line 3303
    .local v2, "baseContext":Landroid/content/Context;
    const-string v10, "debug.second-display.pkg"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3304
    .local v9, "pkgName":Ljava/lang/String;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    iget-object v10, v10, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3306
    invoke-virtual {v5}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v1

    .local v1, "arr$":[I
    array-length v8, v1

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v8, :cond_1

    aget v7, v1, v6

    .line 3307
    .local v7, "id":I
    if-eqz v7, :cond_2

    .line 3308
    invoke-virtual {v0, v7}, Landroid/app/ContextImpl;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    move-result-object v10

    invoke-virtual {v5, v7, v10}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v3

    .line 3310
    .local v3, "display":Landroid/view/Display;
    invoke-virtual {v0, v3}, Landroid/app/ContextImpl;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    .line 3315
    .end local v1    # "arr$":[I
    .end local v3    # "display":Landroid/view/Display;
    .end local v6    # "i$":I
    .end local v7    # "id":I
    .end local v8    # "len$":I
    :cond_1
    return-object v2

    .line 3306
    .restart local v1    # "arr$":[I
    .restart local v6    # "i$":I
    .restart local v7    # "id":I
    .restart local v8    # "len$":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3275
    .end local v0    # "appContext":Landroid/app/ContextImpl;
    .end local v1    # "arr$":[I
    .end local v2    # "baseContext":Landroid/content/Context;
    .end local v6    # "i$":I
    .end local v7    # "id":I
    .end local v8    # "len$":I
    .end local v9    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v10

    goto :goto_0
.end method

.method private createThumbnailBitmap(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .prologue
    .line 4450
    iget-object v5, p0, Landroid/app/ActivityThread;->mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 4452
    .local v5, "thumbnail":Landroid/graphics/Bitmap;
    if-nez v5, :cond_0

    .line 4453
    :try_start_0
    iget v6, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    .line 4455
    .local v6, "w":I
    if-gez v6, :cond_4

    .line 4456
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 4457
    .local v4, "res":Landroid/content/res/Resources;
    const v7, 0x1050002

    .line 4458
    .local v7, "wId":I
    const v3, 0x1050001

    .line 4459
    .local v3, "hId":I
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    .line 4460
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .local v2, "h":I
    iput v2, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I

    .line 4466
    .end local v3    # "hId":I
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v7    # "wId":I
    :goto_0
    if-lez v6, :cond_0

    if-lez v2, :cond_0

    .line 4467
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    sget-object v9, Landroid/app/ActivityThread;->THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v6, v2, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 4469
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 4473
    .end local v2    # "h":I
    .end local v6    # "w":I
    :cond_0
    if-eqz v5, :cond_3

    .line 4474
    iget-object v0, p0, Landroid/app/ActivityThread;->mThumbnailCanvas:Landroid/graphics/Canvas;

    .line 4475
    .local v0, "cv":Landroid/graphics/Canvas;
    if-nez v0, :cond_1

    .line 4476
    new-instance v0, Landroid/graphics/Canvas;

    .end local v0    # "cv":Landroid/graphics/Canvas;
    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .restart local v0    # "cv":Landroid/graphics/Canvas;
    iput-object v0, p0, Landroid/app/ActivityThread;->mThumbnailCanvas:Landroid/graphics/Canvas;

    .line 4479
    :cond_1
    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 4480
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v5, v0}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 4481
    iput-object v5, p0, Landroid/app/ActivityThread;->mAvailThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 4482
    const/4 v5, 0x0

    .line 4484
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 4497
    .end local v0    # "cv":Landroid/graphics/Canvas;
    :cond_3
    :goto_1
    return-object v5

    .line 4462
    .restart local v6    # "w":I
    :cond_4
    iget v2, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "h":I
    goto :goto_0

    .line 4487
    .end local v2    # "h":I
    .end local v6    # "w":I
    :catch_0
    move-exception v1

    .line 4488
    .local v1, "e":Ljava/lang/Exception;
    iget-object v8, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v9, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 4489
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to create thumbnail of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 4494
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static currentActivityThread()Landroid/app/ActivityThread;
    .locals 1

    .prologue
    .line 2253
    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    return-object v0
.end method

.method public static currentApplication()Landroid/app/Application;
    .locals 2

    .prologue
    .line 2279
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2280
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static currentOpPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2261
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2262
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static currentPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2267
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2268
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static currentProcessName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2273
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 2274
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .locals 5
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3418
    .local p2, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 3419
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3420
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/content/ReferrerIntent;

    .line 3421
    .local v2, "intent":Lcom/android/internal/content/ReferrerIntent;
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/content/ReferrerIntent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 3422
    invoke-virtual {v2}, Lcom/android/internal/content/ReferrerIntent;->prepareToEnterProcess()V

    .line 3423
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v3, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 3424
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Lcom/android/internal/content/ReferrerIntent;)V

    .line 3419
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3426
    .end local v2    # "intent":Lcom/android/internal/content/ReferrerIntent;
    :cond_0
    return-void
.end method

.method private deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .locals 9
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4907
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 4908
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 4909
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ResultInfo;

    .line 4911
    .local v3, "ri":Landroid/app/ResultInfo;
    :try_start_0
    iget-object v4, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    if-eqz v4, :cond_0

    .line 4912
    iget-object v4, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 4913
    iget-object v4, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 4917
    :cond_0
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v5, v3, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    iget v6, v3, Landroid/app/ResultInfo;->mRequestCode:I

    iget v7, v3, Landroid/app/ResultInfo;->mResultCode:I

    iget-object v8, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/app/Activity;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4908
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4919
    :catch_0
    move-exception v1

    .line 4920
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4921
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure delivering result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 4928
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "ri":Landroid/app/ResultInfo;
    :cond_2
    return-void
.end method

.method private native dumpGraphicsInfo(Ljava/io/FileDescriptor;)V
.end method

.method public static dumpMemInfoTable(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZILjava/lang/String;JJJJJJ)V
    .locals 24
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p2, "checkin"    # Z
    .param p3, "dumpFullInfo"    # Z
    .param p4, "dumpDalvik"    # Z
    .param p5, "dumpSummaryOnly"    # Z
    .param p6, "pid"    # I
    .param p7, "processName"    # Ljava/lang/String;
    .param p8, "nativeMax"    # J
    .param p10, "nativeAllocated"    # J
    .param p12, "nativeFree"    # J
    .param p14, "dalvikMax"    # J
    .param p16, "dalvikAllocated"    # J
    .param p18, "dalvikFree"    # J

    .prologue
    .line 2697
    if-eqz p2, :cond_0

    .line 2702
    const/16 v19, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2703
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2704
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2707
    move-object/from16 v0, p0

    move-wide/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2708
    move-object/from16 v0, p0

    move-wide/from16 v1, p14

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2709
    const-string v19, "N/A,"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2710
    add-long v20, p8, p14

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2713
    move-object/from16 v0, p0

    move-wide/from16 v1, p10

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2714
    move-object/from16 v0, p0

    move-wide/from16 v1, p16

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2715
    const-string v19, "N/A,"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2716
    add-long v20, p10, p16

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2719
    move-object/from16 v0, p0

    move-wide/from16 v1, p12

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2720
    move-object/from16 v0, p0

    move-wide/from16 v1, p18

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2721
    const-string v19, "N/A,"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2722
    add-long v20, p12, p18

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2725
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2726
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2727
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2728
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2731
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2732
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2733
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2734
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2737
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2738
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2739
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2740
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2743
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2744
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2745
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2746
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2749
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2750
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2751
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2752
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2755
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2756
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2757
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2758
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2761
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v19, 0x11

    move/from16 v0, v19

    if-ge v4, v0, :cond_b

    .line 2762
    invoke-static {v4}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2763
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2764
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2765
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2766
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2767
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2768
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v19, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2761
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 2773
    .end local v4    # "i":I
    :cond_0
    if-nez p5, :cond_a

    .line 2774
    if-eqz p3, :cond_3

    .line 2775
    const-string v19, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0xb

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, ""

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "Pss"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "Pss"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    const-string v22, "Shared"

    aput-object v22, v20, v21

    const/16 v21, 0x4

    const-string v22, "Private"

    aput-object v22, v20, v21

    const/16 v21, 0x5

    const-string v22, "Shared"

    aput-object v22, v20, v21

    const/16 v21, 0x6

    const-string v22, "Private"

    aput-object v22, v20, v21

    const/16 v21, 0x7

    const-string v22, "Swapped"

    aput-object v22, v20, v21

    const/16 v21, 0x8

    const-string v22, "Heap"

    aput-object v22, v20, v21

    const/16 v21, 0x9

    const-string v22, "Heap"

    aput-object v22, v20, v21

    const/16 v21, 0xa

    const-string v22, "Heap"

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2777
    const-string v19, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0xb

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, ""

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "Total"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "Clean"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    const-string v22, "Dirty"

    aput-object v22, v20, v21

    const/16 v21, 0x4

    const-string v22, "Dirty"

    aput-object v22, v20, v21

    const/16 v21, 0x5

    const-string v22, "Clean"

    aput-object v22, v20, v21

    const/16 v21, 0x6

    const-string v22, "Clean"

    aput-object v22, v20, v21

    const/16 v21, 0x7

    const-string v22, "Dirty"

    aput-object v22, v20, v21

    const/16 v21, 0x8

    const-string v22, "Size"

    aput-object v22, v20, v21

    const/16 v21, 0x9

    const-string v22, "Alloc"

    aput-object v22, v20, v21

    const/16 v21, 0xa

    const-string v22, "Free"

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2779
    const-string v19, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0xb

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, ""

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "------"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "------"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    const-string v22, "------"

    aput-object v22, v20, v21

    const/16 v21, 0x4

    const-string v22, "------"

    aput-object v22, v20, v21

    const/16 v21, 0x5

    const-string v22, "------"

    aput-object v22, v20, v21

    const/16 v21, 0x6

    const-string v22, "------"

    aput-object v22, v20, v21

    const/16 v21, 0x7

    const-string v22, "------"

    aput-object v22, v20, v21

    const/16 v21, 0x8

    const-string v22, "------"

    aput-object v22, v20, v21

    const/16 v21, 0x9

    const-string v22, "------"

    aput-object v22, v20, v21

    const/16 v21, 0xa

    const-string v22, "------"

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2781
    const-string v19, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0xb

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "Native Heap"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x4

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x8

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x9

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0xa

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2786
    const-string v19, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0xb

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "Dalvik Heap"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x4

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x8

    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x9

    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0xa

    invoke-static/range {p18 .. p19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2808
    :goto_1
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 2809
    .local v14, "otherPss":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    move/from16 v17, v0

    .line 2810
    .local v17, "otherSwappablePss":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    move/from16 v16, v0

    .line 2811
    .local v16, "otherSharedDirty":I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    .line 2812
    .local v13, "otherPrivateDirty":I
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    .line 2813
    .local v15, "otherSharedClean":I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    .line 2814
    .local v12, "otherPrivateClean":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    move/from16 v18, v0

    .line 2816
    .local v18, "otherSwappedOut":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    const/16 v19, 0x11

    move/from16 v0, v19

    if-ge v4, v0, :cond_5

    .line 2817
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v7

    .line 2818
    .local v7, "myPss":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v10

    .line 2819
    .local v10, "mySwappablePss":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v9

    .line 2820
    .local v9, "mySharedDirty":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v6

    .line 2821
    .local v6, "myPrivateDirty":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v8

    .line 2822
    .local v8, "mySharedClean":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v5

    .line 2823
    .local v5, "myPrivateClean":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v11

    .line 2824
    .local v11, "mySwappedOut":I
    if-nez v7, :cond_1

    if-nez v9, :cond_1

    if-nez v6, :cond_1

    if-nez v8, :cond_1

    if-nez v5, :cond_1

    if-eqz v11, :cond_2

    .line 2826
    :cond_1
    if-eqz p3, :cond_4

    .line 2827
    const-string v19, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0xb

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v4}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x8

    const-string v22, ""

    aput-object v22, v20, v21

    const/16 v21, 0x9

    const-string v22, ""

    aput-object v22, v20, v21

    const/16 v21, 0xa

    const-string v22, ""

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2835
    :goto_3
    sub-int/2addr v14, v7

    .line 2836
    sub-int v17, v17, v10

    .line 2837
    sub-int v16, v16, v9

    .line 2838
    sub-int/2addr v13, v6

    .line 2839
    sub-int/2addr v15, v8

    .line 2840
    sub-int/2addr v12, v5

    .line 2841
    sub-int v18, v18, v11

    .line 2816
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 2792
    .end local v4    # "i":I
    .end local v5    # "myPrivateClean":I
    .end local v6    # "myPrivateDirty":I
    .end local v7    # "myPss":I
    .end local v8    # "mySharedClean":I
    .end local v9    # "mySharedDirty":I
    .end local v10    # "mySwappablePss":I
    .end local v11    # "mySwappedOut":I
    .end local v12    # "otherPrivateClean":I
    .end local v13    # "otherPrivateDirty":I
    .end local v14    # "otherPss":I
    .end local v15    # "otherSharedClean":I
    .end local v16    # "otherSharedDirty":I
    .end local v17    # "otherSwappablePss":I
    .end local v18    # "otherSwappedOut":I
    :cond_3
    const-string v19, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, ""

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "Pss"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "Private"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    const-string v22, "Private"

    aput-object v22, v20, v21

    const/16 v21, 0x4

    const-string v22, "Swapped"

    aput-object v22, v20, v21

    const/16 v21, 0x5

    const-string v22, "Heap"

    aput-object v22, v20, v21

    const/16 v21, 0x6

    const-string v22, "Heap"

    aput-object v22, v20, v21

    const/16 v21, 0x7

    const-string v22, "Heap"

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2794
    const-string v19, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, ""

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "Total"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "Dirty"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    const-string v22, "Clean"

    aput-object v22, v20, v21

    const/16 v21, 0x4

    const-string v22, "Dirty"

    aput-object v22, v20, v21

    const/16 v21, 0x5

    const-string v22, "Size"

    aput-object v22, v20, v21

    const/16 v21, 0x6

    const-string v22, "Alloc"

    aput-object v22, v20, v21

    const/16 v21, 0x7

    const-string v22, "Free"

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2796
    const-string v19, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0x9

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, ""

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "------"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "------"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    const-string v22, "------"

    aput-object v22, v20, v21

    const/16 v21, 0x4

    const-string v22, "------"

    aput-object v22, v20, v21

    const/16 v21, 0x5

    const-string v22, "------"

    aput-object v22, v20, v21

    const/16 v21, 0x6

    const-string v22, "------"

    aput-object v22, v20, v21

    const/16 v21, 0x7

    const-string v22, "------"

    aput-object v22, v20, v21

    const/16 v21, 0x8

    const-string v22, "------"

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2798
    const-string v19, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "Native Heap"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x4

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x5

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x6

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x7

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2802
    const-string v19, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "Dalvik Heap"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x4

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x5

    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x6

    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x7

    invoke-static/range {p18 .. p19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2831
    .restart local v4    # "i":I
    .restart local v5    # "myPrivateClean":I
    .restart local v6    # "myPrivateDirty":I
    .restart local v7    # "myPss":I
    .restart local v8    # "mySharedClean":I
    .restart local v9    # "mySharedDirty":I
    .restart local v10    # "mySwappablePss":I
    .restart local v11    # "mySwappedOut":I
    .restart local v12    # "otherPrivateClean":I
    .restart local v13    # "otherPrivateDirty":I
    .restart local v14    # "otherPss":I
    .restart local v15    # "otherSharedClean":I
    .restart local v16    # "otherSharedDirty":I
    .restart local v17    # "otherSwappablePss":I
    .restart local v18    # "otherSwappedOut":I
    :cond_4
    const-string v19, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v4}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x5

    const-string v22, ""

    aput-object v22, v20, v21

    const/16 v21, 0x6

    const-string v22, ""

    aput-object v22, v20, v21

    const/16 v21, 0x7

    const-string v22, ""

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2845
    .end local v5    # "myPrivateClean":I
    .end local v6    # "myPrivateDirty":I
    .end local v7    # "myPss":I
    .end local v8    # "mySharedClean":I
    .end local v9    # "mySharedDirty":I
    .end local v10    # "mySwappablePss":I
    .end local v11    # "mySwappedOut":I
    :cond_5
    if-eqz p3, :cond_8

    .line 2846
    const-string v19, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0xb

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "Unknown"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x8

    const-string v22, ""

    aput-object v22, v20, v21

    const/16 v21, 0x9

    const-string v22, ""

    aput-object v22, v20, v21

    const/16 v21, 0xa

    const-string v22, ""

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2849
    const-string v19, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0xb

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "TOTAL"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x8

    add-long v22, p8, p14

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x9

    add-long v22, p10, p16

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0xa

    add-long v22, p12, p18

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2867
    :goto_4
    if-eqz p4, :cond_a

    .line 2868
    const-string v19, " "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2869
    const-string v19, " Dalvik Details"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2871
    const/16 v4, 0x11

    .line 2872
    :goto_5
    const/16 v19, 0x19

    move/from16 v0, v19

    if-ge v4, v0, :cond_a

    .line 2873
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v7

    .line 2874
    .restart local v7    # "myPss":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v10

    .line 2875
    .restart local v10    # "mySwappablePss":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v9

    .line 2876
    .restart local v9    # "mySharedDirty":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v6

    .line 2877
    .restart local v6    # "myPrivateDirty":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v8

    .line 2878
    .restart local v8    # "mySharedClean":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v5

    .line 2879
    .restart local v5    # "myPrivateClean":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v11

    .line 2880
    .restart local v11    # "mySwappedOut":I
    if-nez v7, :cond_6

    if-nez v9, :cond_6

    if-nez v6, :cond_6

    if-nez v8, :cond_6

    if-eqz v5, :cond_7

    .line 2882
    :cond_6
    if-eqz p3, :cond_9

    .line 2883
    const-string v19, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0xb

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v4}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x8

    const-string v22, ""

    aput-object v22, v20, v21

    const/16 v21, 0x9

    const-string v22, ""

    aput-object v22, v20, v21

    const/16 v21, 0xa

    const-string v22, ""

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2872
    :cond_7
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    .line 2856
    .end local v5    # "myPrivateClean":I
    .end local v6    # "myPrivateDirty":I
    .end local v7    # "myPss":I
    .end local v8    # "mySharedClean":I
    .end local v9    # "mySharedDirty":I
    .end local v10    # "mySwappablePss":I
    .end local v11    # "mySwappedOut":I
    :cond_8
    const-string v19, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "Unknown"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x5

    const-string v22, ""

    aput-object v22, v20, v21

    const/16 v21, 0x6

    const-string v22, ""

    aput-object v22, v20, v21

    const/16 v21, 0x7

    const-string v22, ""

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2859
    const-string v19, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "TOTAL"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x5

    add-long v22, p8, p14

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x6

    add-long v22, p10, p16

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x7

    add-long v22, p12, p18

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2887
    .restart local v5    # "myPrivateClean":I
    .restart local v6    # "myPrivateDirty":I
    .restart local v7    # "myPss":I
    .restart local v8    # "mySharedClean":I
    .restart local v9    # "mySharedDirty":I
    .restart local v10    # "mySwappablePss":I
    .restart local v11    # "mySwappedOut":I
    :cond_9
    const-string v19, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v4}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x5

    const-string v22, ""

    aput-object v22, v20, v21

    const/16 v21, 0x6

    const-string v22, ""

    aput-object v22, v20, v21

    const/16 v21, 0x7

    const-string v22, ""

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2896
    .end local v4    # "i":I
    .end local v5    # "myPrivateClean":I
    .end local v6    # "myPrivateDirty":I
    .end local v7    # "myPss":I
    .end local v8    # "mySharedClean":I
    .end local v9    # "mySharedDirty":I
    .end local v10    # "mySwappablePss":I
    .end local v11    # "mySwappedOut":I
    .end local v12    # "otherPrivateClean":I
    .end local v13    # "otherPrivateDirty":I
    .end local v14    # "otherPss":I
    .end local v15    # "otherSharedClean":I
    .end local v16    # "otherSharedDirty":I
    .end local v17    # "otherSwappablePss":I
    .end local v18    # "otherSwappedOut":I
    :cond_a
    const-string v19, " "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2897
    const-string v19, " App Summary"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2898
    const-string v19, "%21s %8s"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, ""

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "Pss(KB)"

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2899
    const-string v19, "%21s %8s"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, ""

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "------"

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2900
    const-string v19, "%21s %8d"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "Java Heap:"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2902
    const-string v19, "%21s %8d"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "Native Heap:"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2904
    const-string v19, "%21s %8d"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "Code:"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2906
    const-string v19, "%21s %8d"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "Stack:"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2908
    const-string v19, "%21s %8d"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "Graphics:"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2910
    const-string v19, "%21s %8d"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "Private Other:"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2912
    const-string v19, "%21s %8d"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "System:"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2914
    const-string v19, " "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2915
    const-string v19, "%21s %8d %21s %8d"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "TOTAL:"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "TOTAL SWAP (KB):"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2918
    :cond_b
    return-void
.end method

.method static freeTextLayoutCachesIfNeeded(I)V
    .locals 2
    .param p0, "configDiff"    # I

    .prologue
    .line 5784
    if-eqz p0, :cond_0

    .line 5786
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 5787
    .local v0, "hasLocaleConfigChange":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 5788
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 5792
    .end local v0    # "hasLocaleConfigChange":Z
    :cond_0
    return-void

    .line 5786
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCurrActivityFromThread()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3036
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 3037
    .local v0, "am":Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    sget-object v1, Landroid/app/ActivityThread;->rCActivShort:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3038
    sget-object v1, Landroid/app/ActivityThread;->rCActivShort:Ljava/lang/String;

    .line 3040
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getIntentBeingBroadcast()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 3589
    sget-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method private getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;
    .locals 11
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "baseLoader"    # Ljava/lang/ClassLoader;
    .param p4, "securityViolation"    # Z
    .param p5, "includeCode"    # Z
    .param p6, "registerPackage"    # Z

    .prologue
    .line 2538
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-eq v1, v2, :cond_3

    const/4 v8, 0x1

    .line 2539
    .local v8, "differentUser":Z
    :goto_0
    iget-object v10, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v10

    .line 2541
    if-eqz v8, :cond_4

    .line 2543
    const/4 v9, 0x0

    .line 2550
    .local v9, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_1
    if-eqz v9, :cond_6

    :try_start_0
    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoadedApk;

    move-object v0, v1

    .line 2551
    .local v0, "packageInfo":Landroid/app/LoadedApk;
    :goto_2
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2558
    :cond_0
    new-instance v0, Landroid/app/LoadedApk;

    .end local v0    # "packageInfo":Landroid/app/LoadedApk;
    if-eqz p5, :cond_7

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_7

    const/4 v6, 0x1

    :goto_3
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)V

    .line 2563
    .restart local v0    # "packageInfo":Landroid/app/LoadedApk;
    iget-boolean v1, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    if-eqz v1, :cond_1

    const-string v1, "android"

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2564
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iget-object v1, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/LoadedApk;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 2568
    :cond_1
    if-eqz v8, :cond_8

    .line 2578
    :cond_2
    :goto_4
    monitor-exit v10

    return-object v0

    .line 2538
    .end local v0    # "packageInfo":Landroid/app/LoadedApk;
    .end local v8    # "differentUser":Z
    .end local v9    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 2544
    .restart local v8    # "differentUser":Z
    :cond_4
    if-eqz p5, :cond_5

    .line 2545
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/WeakReference;

    .restart local v9    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_1

    .line 2547
    .end local v9    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_5
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/WeakReference;

    .restart local v9    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_1

    .line 2550
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 2558
    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    .line 2570
    .restart local v0    # "packageInfo":Landroid/app/LoadedApk;
    :cond_8
    if-eqz p5, :cond_9

    .line 2571
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 2579
    .end local v0    # "packageInfo":Landroid/app/LoadedApk;
    .end local v9    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2574
    .restart local v0    # "packageInfo":Landroid/app/LoadedApk;
    .restart local v9    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_9
    :try_start_1
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method public static getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 2

    .prologue
    .line 2284
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_0

    .line 2286
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 2292
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 2288
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2290
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    sput-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 2292
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    goto :goto_0
.end method

.method private getThemeResourceFromMappingTable()V
    .locals 18

    .prologue
    .line 7097
    const-string v3, "ThemeApp"

    .line 7098
    .local v3, "TAG_THEME_APP":Ljava/lang/String;
    const-string v1, "className"

    .line 7099
    .local v1, "TAG_ATTR_CLASSNAME":Ljava/lang/String;
    const-string/jumbo v2, "iconId"

    .line 7100
    .local v2, "TAG_ATTR_ICONID":Ljava/lang/String;
    const/4 v12, 0x0

    .line 7103
    .local v12, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1110019

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 7104
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/app/ActivityThread;->mThemeAppIconMap:Ljava/util/HashMap;

    .line 7105
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ActivityThread;->mThemeAppIconMap:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->clear()V

    .line 7106
    if-eqz v12, :cond_5

    .line 7107
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 7111
    .local v7, "depth":I
    :cond_0
    :goto_0
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    .local v14, "type":I
    const/4 v15, 0x3

    if-ne v14, v15, :cond_1

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v7, :cond_5

    :cond_1
    const/4 v15, 0x1

    if-eq v14, v15, :cond_5

    .line 7112
    const/4 v15, 0x2

    if-ne v14, v15, :cond_0

    .line 7116
    const/4 v6, 0x0

    .line 7117
    .local v6, "className":Ljava/lang/String;
    const/4 v10, 0x0

    .line 7118
    .local v10, "iconId":Ljava/lang/String;
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 7120
    .local v11, "name":Ljava/lang/String;
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 7121
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v13

    .line 7122
    .local v13, "size":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v13, :cond_4

    .line 7123
    invoke-interface {v12, v9}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 7124
    .local v4, "attrName":Ljava/lang/String;
    invoke-interface {v12, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 7125
    .local v5, "attrValue":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 7126
    move-object v6, v5

    .line 7128
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 7129
    move-object v10, v5

    .line 7122
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 7132
    .end local v4    # "attrName":Ljava/lang/String;
    .end local v5    # "attrValue":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ActivityThread;->mThemeAppIconMap:Ljava/util/HashMap;

    invoke-virtual {v15, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7133
    const/4 v6, 0x0

    .line 7134
    goto :goto_0

    .line 7138
    .end local v6    # "className":Ljava/lang/String;
    .end local v7    # "depth":I
    .end local v9    # "i":I
    .end local v10    # "iconId":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    .end local v13    # "size":I
    .end local v14    # "type":I
    :catch_0
    move-exception v8

    .line 7139
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v15, "ActivityThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception during parsing theme app list XmlPullParserException"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7140
    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 7145
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_5
    :goto_2
    return-void

    .line 7141
    :catch_1
    move-exception v8

    .line 7142
    .local v8, "e":Ljava/lang/Exception;
    const-string v15, "ActivityThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception during parsing theme app list"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7143
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private handleActivityDisplayIdChanged(Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I

    .prologue
    .line 7482
    return-void
.end method

.method private handleApplicationDisplayIdChanged(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 7519
    return-void
.end method

.method private handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    .locals 28
    .param p1, "data"    # Landroid/app/ActivityThread$AppBindData;

    .prologue
    .line 6018
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    .line 6019
    new-instance v2, Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-direct {v2, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 6020
    new-instance v2, Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-direct {v2, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 6022
    new-instance v2, Landroid/app/ActivityThread$Profiler;

    invoke-direct {v2}, Landroid/app/ActivityThread$Profiler;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 6023
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    if-eqz v2, :cond_0

    .line 6024
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v4, v4, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iput-object v4, v2, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    .line 6025
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v4, v4, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    iput-object v4, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 6026
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget v4, v4, Landroid/app/ProfilerInfo;->samplingInterval:I

    iput v4, v2, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    .line 6027
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-boolean v4, v4, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iput-boolean v4, v2, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    .line 6031
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 6032
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v2, v4}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    .line 6035
    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/app/ActivityThread$AppBindData;->persistent:Z

    if-eqz v2, :cond_1

    .line 6039
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.android.phone"

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6041
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/view/HardwareRenderer;->disable(Z)V

    .line 6045
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_2

    .line 6046
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v2}, Landroid/app/ActivityThread$Profiler;->startProfiling()V

    .line 6053
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xc

    if-gt v2, v4, :cond_3

    .line 6054
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v2}, Landroid/os/AsyncTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 6057
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v2}, Landroid/os/Message;->updateCheckRecycle(I)V

    .line 6065
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 6070
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 6077
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v2, v4, v5}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 6093
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 6094
    move-object/from16 v0, p0

    iget v2, v0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread;->applyCompatConfiguration(I)Landroid/content/res/Configuration;

    .line 6097
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 6102
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x2000

    if-nez v2, :cond_4

    .line 6104
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    .line 6105
    const/16 v2, 0xa0

    invoke-static {v2}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    .line 6107
    :cond_4
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread;->updateDefaultDensity()V

    .line 6109
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/ActivityThread$AppBindData;->displayId:I

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;I)Landroid/app/ContextImpl;

    move-result-object v12

    .line 6112
    .local v12, "appContext":Landroid/app/ContextImpl;
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v2

    if-nez v2, :cond_5

    .line 6113
    invoke-virtual {v12}, Landroid/app/ContextImpl;->getCacheDir()Ljava/io/File;

    move-result-object v15

    .line 6115
    .local v15, "cacheDir":Ljava/io/File;
    if-eqz v15, :cond_b

    .line 6117
    const-string/jumbo v2, "java.io.tmpdir"

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6123
    :goto_0
    invoke-virtual {v12}, Landroid/app/ContextImpl;->getCodeCacheDir()Ljava/io/File;

    move-result-object v17

    .line 6124
    .local v17, "codeCacheDir":Ljava/io/File;
    if-eqz v17, :cond_c

    .line 6125
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Landroid/app/ActivityThread;->setupGraphicsSupport(Landroid/app/LoadedApk;Ljava/io/File;)V

    .line 6133
    .end local v15    # "cacheDir":Ljava/io/File;
    .end local v17    # "codeCacheDir":Ljava/io/File;
    :cond_5
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getLibDir()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/view/HardwareRenderer;->setLibDir(Ljava/lang/String;)V

    .line 6136
    const-string v2, "24"

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    const-string/jumbo v5, "time_12_24"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 6137
    .local v21, "is24Hr":Z
    invoke-static/range {v21 .. v21}, Ljava/text/DateFormat;->set24HourTimePref(Z)V

    .line 6139
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    const-string v4, "debug_view_attributes"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    :goto_2
    sput-boolean v2, Landroid/view/View;->mDebugViewAttributes:Z

    .line 6146
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x81

    if-eqz v2, :cond_6

    .line 6149
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    .line 6159
    :cond_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x9

    if-le v2, v4, :cond_7

    .line 6160
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnNetwork()V

    .line 6163
    :cond_7
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x8000000

    and-int/2addr v2, v5

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v4, v2}, Landroid/security/NetworkSecurityPolicy;->setCleartextTrafficPermitted(Z)V

    .line 6166
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    if-eqz v2, :cond_8

    .line 6168
    const/16 v2, 0x1fa4

    invoke-static {v2}, Landroid/os/Debug;->changeDebugPort(I)V

    .line 6169
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_f

    .line 6170
    const-string v2, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Application "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v5}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is waiting for the debugger on port 8100..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6173
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v22

    .line 6175
    .local v22, "mgr":Landroid/app/IActivityManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_6

    .line 6179
    :goto_4
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 6182
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5

    .line 6193
    .end local v22    # "mgr":Landroid/app/IActivityManager;
    :cond_8
    :goto_5
    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/app/ActivityThread$AppBindData;->enableOpenGlTrace:Z

    if-eqz v2, :cond_9

    .line 6194
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/opengl/GLUtils;->setTracingLevel(I)V

    .line 6198
    :cond_9
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_10

    const/4 v13, 0x1

    .line 6199
    .local v13, "appTracingAllowed":Z
    :goto_6
    invoke-static {v13}, Landroid/os/Trace;->setAppTracingAllowed(Z)V

    .line 6204
    const-string v2, "connectivity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    .line 6205
    .local v14, "b":Landroid/os/IBinder;
    if-eqz v14, :cond_a

    .line 6209
    invoke-static {v14}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v27

    .line 6211
    .local v27, "service":Landroid/net/IConnectivityManager;
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/net/IConnectivityManager;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object v25

    .line 6212
    .local v25, "proxyInfo":Landroid/net/ProxyInfo;
    invoke-static/range {v25 .. v25}, Landroid/net/Proxy;->setHttpProxySystemProperty(Landroid/net/ProxyInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    .line 6216
    .end local v25    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v27    # "service":Landroid/net/IConnectivityManager;
    :cond_a
    :goto_7
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    if-eqz v2, :cond_15

    .line 6217
    const/16 v20, 0x0

    .line 6219
    .local v20, "ii":Landroid/content/pm/InstrumentationInfo;
    :try_start_3
    invoke-virtual {v12}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v20

    .line 6223
    :goto_8
    if-nez v20, :cond_11

    .line 6224
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find instrumentation info for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6119
    .end local v13    # "appTracingAllowed":Z
    .end local v14    # "b":Landroid/os/IBinder;
    .end local v20    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v21    # "is24Hr":Z
    .restart local v15    # "cacheDir":Ljava/io/File;
    :cond_b
    const-string v2, "ActivityThread"

    const-string v4, "Unable to initialize \"java.io.tmpdir\" property due to missing cache directory"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6127
    .restart local v17    # "codeCacheDir":Ljava/io/File;
    :cond_c
    const-string v2, "ActivityThread"

    const-string v4, "Unable to setupGraphicsSupport due to missing code-cache directory"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 6139
    .end local v15    # "cacheDir":Ljava/io/File;
    .end local v17    # "codeCacheDir":Ljava/io/File;
    .restart local v21    # "is24Hr":Z
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 6163
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 6187
    :cond_f
    const-string v2, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Application "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v5}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " can be debugged on port 8100..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 6198
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_6

    .line 6229
    .restart local v13    # "appTracingAllowed":Z
    .restart local v14    # "b":Landroid/os/IBinder;
    .restart local v20    # "ii":Landroid/content/pm/InstrumentationInfo;
    :cond_11
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    .line 6230
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 6231
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    .line 6232
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    .line 6233
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 6234
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getSplitAppDirs()[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    .line 6235
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getLibDir()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    .line 6237
    new-instance v3, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v3}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 6238
    .local v3, "instrApp":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 6239
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 6240
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 6241
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 6242
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    .line 6243
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 6244
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 6245
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v12}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object v23

    .line 6247
    .local v23, "pi":Landroid/app/LoadedApk;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v6

    .line 6250
    .local v6, "instrContext":Landroid/app/ContextImpl;
    :try_start_4
    invoke-virtual {v6}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v16

    .line 6251
    .local v16, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Instrumentation;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 6259
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    new-instance v8, Landroid/content/ComponentName;

    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    move-object/from16 v5, p0

    move-object v7, v12

    invoke-virtual/range {v4 .. v10}, Landroid/app/Instrumentation;->init(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/content/Context;Landroid/content/ComponentName;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;)V

    .line 6263
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v2, :cond_12

    move-object/from16 v0, v20

    iget-boolean v2, v0, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_12

    .line 6265
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/app/ActivityThread$Profiler;->handlingProfiling:Z

    .line 6266
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, v2, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6267
    .local v19, "file":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 6268
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x800000

    invoke-static {v2, v4}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 6275
    .end local v3    # "instrApp":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "instrContext":Landroid/app/ContextImpl;
    .end local v16    # "cl":Ljava/lang/ClassLoader;
    .end local v19    # "file":Ljava/io/File;
    .end local v20    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v23    # "pi":Landroid/app/LoadedApk;
    :cond_12
    :goto_9
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x100000

    and-int/2addr v2, v4

    if-eqz v2, :cond_16

    .line 6276
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 6286
    :goto_a
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v26

    .line 6290
    .local v26, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v11

    .line 6291
    .local v11, "app":Landroid/app/Application;
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 6295
    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    if-nez v2, :cond_13

    .line 6296
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    move-object/from16 v24, v0

    .line 6297
    .local v24, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    if-eqz v24, :cond_13

    .line 6298
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v11, v1}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    .line 6301
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v4, 0x84

    const-wide/16 v8, 0x2710

    invoke-virtual {v2, v4, v8, v9}, Landroid/app/ActivityThread$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 6308
    .end local v24    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :cond_13
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    invoke-virtual {v2, v4}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 6317
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v11}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 6326
    :cond_14
    invoke-static/range {v26 .. v26}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 6328
    return-void

    .line 6253
    .end local v11    # "app":Landroid/app/Application;
    .end local v26    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v3    # "instrApp":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "instrContext":Landroid/app/ContextImpl;
    .restart local v20    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v23    # "pi":Landroid/app/LoadedApk;
    :catch_0
    move-exception v18

    .line 6254
    .local v18, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate instrumentation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 6272
    .end local v3    # "instrApp":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "instrContext":Landroid/app/ContextImpl;
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v20    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v23    # "pi":Landroid/app/LoadedApk;
    :cond_15
    new-instance v2, Landroid/app/Instrumentation;

    invoke-direct {v2}, Landroid/app/Instrumentation;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    goto/16 :goto_9

    .line 6280
    :cond_16
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->clampGrowthLimit()V

    goto/16 :goto_a

    .line 6310
    .restart local v11    # "app":Landroid/app/Application;
    .restart local v26    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catch_1
    move-exception v18

    .line 6311
    .restart local v18    # "e":Ljava/lang/Exception;
    :try_start_8
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown in onCreate() of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 6326
    .end local v11    # "app":Landroid/app/Application;
    .end local v18    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-static/range {v26 .. v26}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v2

    .line 6318
    .restart local v11    # "app":Landroid/app/Application;
    :catch_2
    move-exception v18

    .line 6319
    .restart local v18    # "e":Ljava/lang/Exception;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, v18

    invoke-virtual {v2, v11, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 6320
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create application "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 6221
    .end local v11    # "app":Landroid/app/Application;
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v26    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v20    # "ii":Landroid/content/pm/InstrumentationInfo;
    :catch_3
    move-exception v2

    goto/16 :goto_8

    .line 6213
    .end local v20    # "ii":Landroid/content/pm/InstrumentationInfo;
    .restart local v27    # "service":Landroid/net/IConnectivityManager;
    :catch_4
    move-exception v2

    goto/16 :goto_7

    .line 6183
    .end local v13    # "appTracingAllowed":Z
    .end local v14    # "b":Landroid/os/IBinder;
    .end local v27    # "service":Landroid/net/IConnectivityManager;
    .restart local v22    # "mgr":Landroid/app/IActivityManager;
    :catch_5
    move-exception v2

    goto/16 :goto_5

    .line 6176
    :catch_6
    move-exception v2

    goto/16 :goto_4
.end method

.method private handleBindService(Landroid/app/ActivityThread$BindServiceData;)V
    .locals 8
    .param p1, "data"    # Landroid/app/ActivityThread$BindServiceData;

    .prologue
    .line 3825
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Service;

    .line 3828
    .local v2, "s":Landroid/app/Service;
    if-eqz v2, :cond_0

    .line 3830
    :try_start_0
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 3831
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->prepareToEnterProcess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3833
    :try_start_1
    iget-boolean v3, p1, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    if-nez v3, :cond_1

    .line 3834
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 3835
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-interface {v3, v4, v5, v0}, Landroid/app/IActivityManager;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 3842
    .end local v0    # "binder":Landroid/os/IBinder;
    :goto_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    .line 3853
    :cond_0
    :goto_1
    return-void

    .line 3838
    :cond_1
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 3839
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3843
    :catch_0
    move-exception v3

    goto :goto_1

    .line 3845
    :catch_1
    move-exception v1

    .line 3846
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v2, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3847
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to bind to service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 15
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    .prologue
    const/4 v14, 0x3

    .line 3660
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    invoke-interface {v10, v11, v12, v13}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 3662
    .local v9, "requestedPackage":Landroid/content/pm/PackageInfo;
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v11

    if-eq v10, v11, :cond_0

    .line 3663
    const-string v10, "ActivityThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Asked to instantiate non-matching package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3740
    .end local v9    # "requestedPackage":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 3667
    :catch_0
    move-exception v6

    .line 3668
    .local v6, "e":Landroid/os/RemoteException;
    const-string v10, "ActivityThread"

    const-string v11, "Can\'t reach package manager"

    invoke-static {v10, v11, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3673
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v9    # "requestedPackage":Landroid/content/pm/PackageInfo;
    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 3676
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v10, v11}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v7

    .line 3677
    .local v7, "packageInfo":Landroid/app/LoadedApk;
    iget-object v8, v7, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 3678
    .local v8, "packageName":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 3679
    const-string v10, "ActivityThread"

    const-string v11, "Asked to create backup agent for nonexistent package"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3683
    :cond_1
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v10, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 3685
    .local v4, "classname":Ljava/lang/String;
    if-nez v4, :cond_3

    move-object/from16 v0, p1

    iget v10, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    move-object/from16 v0, p1

    iget v10, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    if-ne v10, v14, :cond_3

    .line 3687
    :cond_2
    const-string v4, "android.app.backup.FullBackupAgent"

    .line 3691
    :cond_3
    const/4 v2, 0x0

    .line 3692
    .local v2, "binder":Landroid/os/IBinder;
    :try_start_1
    iget-object v10, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/backup/BackupAgent;

    .line 3693
    .local v1, "agent":Landroid/app/backup/BackupAgent;
    if-eqz v1, :cond_5

    .line 3698
    invoke-virtual {v1}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    .line 3732
    :cond_4
    :goto_1
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    invoke-interface {v10, v8, v2}, Landroid/app/IActivityManager;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 3733
    :catch_1
    move-exception v10

    goto :goto_0

    .line 3703
    :cond_5
    :try_start_3
    invoke-virtual {v7}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 3704
    .local v3, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Landroid/app/backup/BackupAgent;

    move-object v1, v0

    .line 3707
    invoke-static {p0, v7}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v5

    .line 3708
    .local v5, "context":Landroid/app/ContextImpl;
    invoke-virtual {v5, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 3709
    invoke-virtual {v1, v5}, Landroid/app/backup/BackupAgent;->attach(Landroid/content/Context;)V

    .line 3715
    invoke-virtual {v1}, Landroid/app/backup/BackupAgent;->onCreate()V

    .line 3716
    invoke-virtual {v1}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v2

    .line 3717
    iget-object v10, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 3718
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    .end local v5    # "context":Landroid/app/ContextImpl;
    :catch_2
    move-exception v6

    .line 3721
    .local v6, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v10, "ActivityThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Agent threw during creation: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3722
    move-object/from16 v0, p1

    iget v10, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_4

    move-object/from16 v0, p1

    iget v10, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    if-eq v10, v14, :cond_4

    .line 3724
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 3736
    .end local v1    # "agent":Landroid/app/backup/BackupAgent;
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v6

    .line 3737
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to create BackupAgent "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
.end method

.method private handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V
    .locals 12
    .param p1, "data"    # Landroid/app/ActivityThread$CreateServiceData;

    .prologue
    .line 3765
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 3767
    iget-object v3, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p1, Landroid/app/ActivityThread$CreateServiceData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v3, v4}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v10

    .line 3769
    .local v10, "packageInfo":Landroid/app/LoadedApk;
    const/4 v1, 0x0

    .line 3771
    .local v1, "service":Landroid/app/Service;
    :try_start_0
    invoke-virtual {v10}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 3772
    .local v8, "cl":Ljava/lang/ClassLoader;
    iget-object v3, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/app/Service;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3784
    .end local v8    # "cl":Ljava/lang/ClassLoader;
    :cond_0
    :try_start_1
    iget v3, p1, Landroid/app/ActivityThread$CreateServiceData;->displayId:I

    invoke-static {p0, v10, v3}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;I)Landroid/app/ContextImpl;

    move-result-object v2

    .line 3786
    .local v2, "context":Landroid/app/ContextImpl;
    invoke-virtual {v2, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 3788
    const/4 v3, 0x0

    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v10, v3, v4}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v6

    .line 3805
    .local v6, "app":Landroid/app/Application;
    iget-object v3, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    move-object v3, p0

    invoke-virtual/range {v1 .. v7}, Landroid/app/Service;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V

    .line 3807
    invoke-virtual {v1}, Landroid/app/Service;->onCreate()V

    .line 3808
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v4, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3810
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-interface {v3, v4, v5, v7, v11}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3822
    .end local v2    # "context":Landroid/app/ContextImpl;
    .end local v6    # "app":Landroid/app/Application;
    :cond_1
    :goto_0
    return-void

    .line 3773
    :catch_0
    move-exception v9

    .line 3774
    .local v9, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v9}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3775
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 3815
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 3816
    .restart local v9    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v9}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3817
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 3812
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v2    # "context":Landroid/app/ContextImpl;
    .restart local v6    # "app":Landroid/app/Application;
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method private handleDestroyActivity(Landroid/os/IBinder;ZIZ)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finishing"    # Z
    .param p3, "configChanges"    # I
    .param p4, "getNonConfigInstance"    # Z

    .prologue
    .line 5085
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v1

    .line 5087
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v1, :cond_5

    .line 5088
    invoke-static {v1}, Landroid/app/ActivityThread;->cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 5089
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    .line 5090
    .local v3, "wm":Landroid/view/WindowManager;
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, v5, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 5091
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 5092
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v5, v5, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v5, :cond_0

    .line 5093
    iget v5, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 5095
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    .line 5096
    .local v4, "wtoken":Landroid/os/IBinder;
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v5, v5, Landroid/app/Activity;->mWindowAdded:Z

    if-eqz v5, :cond_1

    .line 5097
    iget-boolean v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    if-eqz v5, :cond_7

    .line 5100
    iput-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    .line 5101
    iput-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    .line 5119
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    if-nez v5, :cond_2

    .line 5120
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Activity"

    invoke-virtual {v5, v4, v6, v7}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 5123
    :cond_2
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 5125
    .end local v4    # "wtoken":Landroid/os/IBinder;
    :cond_3
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/View;

    if-nez v5, :cond_4

    .line 5132
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Activity"

    invoke-virtual {v5, p1, v6, v7}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 5140
    :cond_4
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 5141
    .local v0, "c":Landroid/content/Context;
    instance-of v5, v0, Landroid/app/ContextImpl;

    if-eqz v5, :cond_5

    .line 5142
    check-cast v0, Landroid/app/ContextImpl;

    .end local v0    # "c":Landroid/content/Context;
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Activity"

    invoke-virtual {v0, v5, v6}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 5146
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "wm":Landroid/view/WindowManager;
    :cond_5
    if-eqz p2, :cond_6

    .line 5148
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, p1}, Landroid/app/IActivityManager;->activityDestroyed(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5153
    :cond_6
    :goto_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 5154
    return-void

    .line 5103
    .restart local v2    # "v":Landroid/view/View;
    .restart local v3    # "wm":Landroid/view/WindowManager;
    .restart local v4    # "wtoken":Landroid/os/IBinder;
    :cond_7
    invoke-interface {v3, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    .line 5149
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "wm":Landroid/view/WindowManager;
    .end local v4    # "wtoken":Landroid/os/IBinder;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 7
    .param p1, "data"    # Landroid/app/ActivityThread$CreateBackupAgentData;

    .prologue
    .line 3746
    iget-object v4, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v4, v5}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v2

    .line 3747
    .local v2, "packageInfo":Landroid/app/LoadedApk;
    iget-object v3, v2, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 3748
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/backup/BackupAgent;

    .line 3749
    .local v0, "agent":Landroid/app/backup/BackupAgent;
    if-eqz v0, :cond_0

    .line 3751
    :try_start_0
    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3756
    :goto_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3760
    :goto_1
    return-void

    .line 3752
    :catch_0
    move-exception v1

    .line 3753
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception thrown in onDestroy by backup agent of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3754
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3758
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to destroy unknown backup agent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleDisplayMetricsChanged(Landroid/view/DisplayInfo;)V
    .locals 2
    .param p1, "dInfo"    # Landroid/view/DisplayInfo;

    .prologue
    .line 3546
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 3550
    :try_start_0
    monitor-exit v1

    .line 3551
    return-void

    .line 3550
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 7
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .prologue
    .line 3924
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 3926
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3927
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 3928
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 3930
    .local v1, "pw":Ljava/io/PrintWriter;
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v1, v6}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3936
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3939
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_0
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3940
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3942
    return-void

    .line 3939
    .end local v2    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :catchall_0
    move-exception v3

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3940
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v3
.end method

.method private handleDumpContextRelationInfo(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 13
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .prologue
    .line 3946
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6

    .line 3947
    .local v6, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v9, 0x0

    .line 3949
    .local v9, "pw":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v10, Ljava/io/PrintWriter;

    new-instance v11, Ljava/io/FileOutputStream;

    iget-object v12, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v10, v11}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3950
    .end local v9    # "pw":Ljava/io/PrintWriter;
    .local v10, "pw":Ljava/io/PrintWriter;
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p1, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3951
    .local v5, "innerPrefix":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3952
    .local v3, "dumpDetail":Z
    const/4 v2, 0x0

    .line 3953
    .local v2, "dumpCallStack":Z
    iget-object v0, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 3954
    .local v0, "args":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 3956
    .local v8, "opti":I
    :goto_0
    array-length v11, v0

    if-ge v8, v11, :cond_0

    .line 3957
    aget-object v7, v0, v8

    .line 3958
    .local v7, "opt":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-eq v11, v12, :cond_5

    .line 3964
    .end local v7    # "opt":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 3965
    .local v1, "cmd":Ljava/lang/String;
    array-length v11, v0

    if-ge v8, v11, :cond_1

    .line 3966
    aget-object v1, v0, v8

    .line 3967
    add-int/lit8 v8, v8, 0x1

    .line 3968
    const-string v11, "cc"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 3969
    const/4 v2, 0x1

    .line 3972
    :cond_1
    if-eqz v1, :cond_2

    const-string v11, "cs"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    array-length v11, v0

    if-ge v8, v11, :cond_2

    .line 3973
    const/4 v3, 0x1

    .line 3977
    :cond_2
    if-eqz v3, :cond_3

    .line 3978
    invoke-virtual {p0, v10, v5, v3, v2}, Landroid/app/ActivityThread;->dumpThread(Ljava/io/PrintWriter;Ljava/lang/String;ZZ)V

    .line 3980
    :cond_3
    invoke-static {}, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->getInstance()Lcom/samsung/android/multidisplay/common/ContextRelationManager;

    move-result-object v11

    invoke-virtual {v11, v10, v5, v3, v2}, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ZZ)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3984
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/io/PrintWriter;->flush()V

    .line 3985
    :cond_4
    iget-object v11, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3986
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v9, v10

    .line 3988
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "dumpCallStack":Z
    .end local v3    # "dumpDetail":Z
    .end local v5    # "innerPrefix":Ljava/lang/String;
    .end local v8    # "opti":I
    .end local v10    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "pw":Ljava/io/PrintWriter;
    :goto_1
    return-void

    .line 3961
    .end local v9    # "pw":Ljava/io/PrintWriter;
    .restart local v0    # "args":[Ljava/lang/String;
    .restart local v2    # "dumpCallStack":Z
    .restart local v3    # "dumpDetail":Z
    .restart local v5    # "innerPrefix":Ljava/lang/String;
    .restart local v7    # "opt":Ljava/lang/String;
    .restart local v8    # "opti":I
    .restart local v10    # "pw":Ljava/io/PrintWriter;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 3962
    goto :goto_0

    .line 3981
    .end local v0    # "args":[Ljava/lang/String;
    .end local v2    # "dumpCallStack":Z
    .end local v3    # "dumpDetail":Z
    .end local v5    # "innerPrefix":Ljava/lang/String;
    .end local v7    # "opt":Ljava/lang/String;
    .end local v8    # "opti":I
    .end local v10    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "pw":Ljava/io/PrintWriter;
    :catch_0
    move-exception v4

    .line 3982
    .local v4, "e":Ljava/lang/NullPointerException;
    :goto_2
    :try_start_2
    const-string v11, "ActivityThread"

    const-string/jumbo v12, "handleDumpContextRelationInfo failed"

    invoke-static {v11, v12, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3984
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/io/PrintWriter;->flush()V

    .line 3985
    :cond_6
    iget-object v11, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3986
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_1

    .line 3984
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v11

    :goto_3
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/io/PrintWriter;->flush()V

    .line 3985
    :cond_7
    iget-object v12, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3986
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v11

    .line 3984
    .end local v9    # "pw":Ljava/io/PrintWriter;
    .restart local v10    # "pw":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "pw":Ljava/io/PrintWriter;
    goto :goto_3

    .line 3981
    .end local v9    # "pw":Ljava/io/PrintWriter;
    .restart local v10    # "pw":Ljava/io/PrintWriter;
    :catch_1
    move-exception v4

    move-object v9, v10

    .end local v10    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "pw":Ljava/io/PrintWriter;
    goto :goto_2
.end method

.method static final handleDumpHeap(ZLandroid/app/ActivityThread$DumpHeapData;)V
    .locals 4
    .param p0, "managed"    # Z
    .param p1, "dhd"    # Landroid/app/ActivityThread$DumpHeapData;

    .prologue
    .line 5894
    if-eqz p0, :cond_0

    .line 5896
    :try_start_0
    iget-object v1, p1, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    iget-object v2, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5902
    :try_start_1
    iget-object v1, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5911
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->dumpHeapFinished(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    .line 5914
    :goto_1
    return-void

    .line 5903
    :catch_0
    move-exception v0

    .line 5904
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ActivityThread"

    const-string v2, "Failure closing profile fd"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5897
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 5898
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Managed heap dump failed on path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- can the process access this path?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5902
    :try_start_4
    iget-object v1, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 5903
    :catch_2
    move-exception v0

    .line 5904
    const-string v1, "ActivityThread"

    const-string v2, "Failure closing profile fd"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5901
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 5902
    :try_start_5
    iget-object v2, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 5905
    :goto_2
    throw v1

    .line 5903
    :catch_3
    move-exception v0

    .line 5904
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "ActivityThread"

    const-string v3, "Failure closing profile fd"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 5908
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Debug;->dumpNativeHeap(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 5912
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .prologue
    .line 4037
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 4039
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 4040
    .local v2, "r":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    if-eqz v3, :cond_0

    .line 4041
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 4043
    .local v1, "pw":Ljava/io/PrintWriter;
    iget-object v3, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/ContentProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4044
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4047
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_0
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4048
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4050
    return-void

    .line 4047
    .end local v2    # "r":Landroid/app/ActivityThread$ProviderClientRecord;
    :catchall_0
    move-exception v3

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4048
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v3
.end method

.method private handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/app/ActivityThread$DumpComponentInfo;

    .prologue
    .line 3908
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 3910
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Service;

    .line 3911
    .local v2, "s":Landroid/app/Service;
    if-eqz v2, :cond_0

    .line 3912
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 3914
    .local v1, "pw":Ljava/io/PrintWriter;
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3915
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3918
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_0
    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3919
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3921
    return-void

    .line 3918
    .end local v2    # "s":Landroid/app/Service;
    :catchall_0
    move-exception v3

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3919
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v3
.end method

.method private handleEnterAnimationComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 3555
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3556
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    .line 3557
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->dispatchEnterAnimationComplete()V

    .line 3559
    :cond_0
    return-void
.end method

.method private handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V
    .locals 8
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "customIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3321
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 3324
    invoke-static {}, Landroid/app/ActivityThread;->niceUp()V

    .line 3327
    iput-boolean v4, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 3329
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    if-eqz v3, :cond_0

    .line 3330
    iget-object v3, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    invoke-virtual {v3, v6}, Landroid/app/ActivityThread$Profiler;->setProfiler(Landroid/app/ProfilerInfo;)V

    .line 3331
    iget-object v3, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v3}, Landroid/app/ActivityThread$Profiler;->startProfiling()V

    .line 3340
    :cond_0
    invoke-virtual {p0, v7, v7}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 3347
    invoke-static {}, Landroid/view/WindowManagerGlobal;->initialize()V

    .line 3349
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    .line 3351
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_5

    .line 3357
    new-instance v3, Landroid/content/res/Configuration;

    iget-object v6, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v3, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 3359
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 3360
    .local v2, "oldState":Landroid/os/Bundle;
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-boolean v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mFinished:Z

    if-nez v3, :cond_2

    iget-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    if-nez v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {p0, v6, v5, v7, v3}, Landroid/app/ActivityThread;->handleResumeActivity(Landroid/os/IBinder;ZZZ)V

    .line 3363
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mFinished:Z

    if-nez v3, :cond_4

    iget-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    if-eqz v3, :cond_4

    .line 3374
    :try_start_0
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/app/Activity;->mCalled:Z

    .line 3375
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v5}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 3383
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3384
    iput-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 3386
    :cond_1
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_3

    .line 3387
    new-instance v3, Landroid/util/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onPause()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/util/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3392
    :catch_0
    move-exception v1

    .line 3393
    .local v1, "e":Landroid/util/SuperNotCalledException;
    throw v1

    .end local v1    # "e":Landroid/util/SuperNotCalledException;
    :cond_2
    move v3, v5

    .line 3360
    goto :goto_0

    .line 3395
    :catch_1
    move-exception v1

    .line 3396
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v5, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3397
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to pause activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 3403
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iput-boolean v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 3415
    .end local v2    # "oldState":Landroid/os/Bundle;
    :cond_4
    :goto_1
    return-void

    .line 3409
    :cond_5
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 3411
    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method private handleNewIntent(Landroid/app/ActivityThread$NewIntentData;)V
    .locals 2
    .param p1, "data"    # Landroid/app/ActivityThread$NewIntentData;

    .prologue
    .line 3445
    iget-object v0, p1, Landroid/app/ActivityThread$NewIntentData;->token:Landroid/os/IBinder;

    iget-object v1, p1, Landroid/app/ActivityThread$NewIntentData;->intents:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->performNewIntents(Landroid/os/IBinder;Ljava/util/List;)V

    .line 3446
    return-void
.end method

.method private handlePauseActivity(Landroid/os/IBinder;ZZIZ)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finished"    # Z
    .param p3, "userLeaving"    # Z
    .param p4, "configChanges"    # I
    .param p5, "dontReport"    # Z

    .prologue
    .line 4502
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4503
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_3

    .line 4516
    if-eqz p3, :cond_0

    .line 4517
    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4520
    :cond_0
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v2, p4

    iput v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 4521
    invoke-virtual {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZZ)Landroid/os/Bundle;

    .line 4524
    invoke-virtual {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4525
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 4529
    :cond_1
    if-nez p5, :cond_2

    .line 4531
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->activityPaused(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4535
    :cond_2
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 4537
    :cond_3
    return-void

    .line 4532
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V
    .locals 12
    .param p1, "data"    # Landroid/app/ActivityThread$ReceiverData;

    .prologue
    const/4 v11, 0x0

    .line 3595
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 3597
    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 3599
    .local v2, "component":Ljava/lang/String;
    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v8, v9}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v6

    .line 3602
    .local v6, "packageInfo":Landroid/app/LoadedApk;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 3606
    .local v5, "mgr":Landroid/app/IActivityManager;
    :try_start_0
    invoke-virtual {v6}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 3607
    .local v1, "cl":Ljava/lang/ClassLoader;
    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 3608
    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 3609
    invoke-virtual {p1, v1}, Landroid/app/ActivityThread$ReceiverData;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 3610
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3621
    .local v7, "receiver":Landroid/content/BroadcastReceiver;
    const/4 v8, 0x0

    :try_start_1
    iget-object v9, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v6, v8, v9}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v0

    .line 3631
    .local v0, "app":Landroid/app/Application;
    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/ContextImpl;

    .line 3632
    .local v3, "context":Landroid/app/ContextImpl;
    sget-object v8, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v8, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3633
    invoke-virtual {v7, p1}, Landroid/content/BroadcastReceiver;->setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 3634
    invoke-virtual {v3}, Landroid/app/ContextImpl;->getReceiverRestrictedContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v7, v8, v9}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3646
    sget-object v8, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v8, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3649
    .end local v0    # "app":Landroid/app/Application;
    .end local v3    # "context":Landroid/app/ContextImpl;
    :goto_0
    invoke-virtual {v7}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 3650
    invoke-virtual {p1}, Landroid/app/ActivityThread$ReceiverData;->finish()V

    .line 3652
    :cond_0
    return-void

    .line 3611
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v7    # "receiver":Landroid/content/BroadcastReceiver;
    :catch_0
    move-exception v4

    .line 3614
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v5}, Landroid/app/ActivityThread$ReceiverData;->sendFinished(Landroid/app/IActivityManager;)V

    .line 3615
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to instantiate receiver "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 3636
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "cl":Ljava/lang/ClassLoader;
    .restart local v7    # "receiver":Landroid/content/BroadcastReceiver;
    :catch_1
    move-exception v4

    .line 3639
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p1, v5}, Landroid/app/ActivityThread$ReceiverData;->sendFinished(Landroid/app/IActivityManager;)V

    .line 3640
    iget-object v8, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v8, v7, v4}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 3641
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to start receiver "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3646
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    sget-object v9, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v9, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v8

    .restart local v4    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v8, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v8, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 13
    .param p1, "tmp"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 5228
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 5229
    iput-boolean v11, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 5231
    const/4 v1, 0x0

    .line 5232
    .local v1, "changedConfig":Landroid/content/res/Configuration;
    const/4 v2, 0x0

    .line 5234
    .local v2, "configChanges":I
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    if-eqz v8, :cond_1

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    iget v4, v8, Landroid/content/res/Configuration;->displayId:I

    .line 5240
    .local v4, "displayId":I
    :goto_0
    iget-object v9, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v9

    .line 5241
    :try_start_0
    iget-object v8, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5242
    .local v0, "N":I
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 5243
    .local v7, "token":Landroid/os/IBinder;
    const/4 p1, 0x0

    .line 5244
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_2

    .line 5245
    iget-object v8, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5246
    .local v6, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    if-ne v8, v7, :cond_0

    .line 5247
    move-object p1, v6

    .line 5248
    iget v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    or-int/2addr v2, v8

    .line 5249
    iget-object v8, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5250
    add-int/lit8 v5, v5, -0x1

    .line 5251
    add-int/lit8 v0, v0, -0x1

    .line 5244
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 5234
    .end local v0    # "N":I
    .end local v4    # "displayId":I
    .end local v5    # "i":I
    .end local v6    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v7    # "token":Landroid/os/IBinder;
    :cond_1
    iget v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->displayId:I

    goto :goto_0

    .line 5255
    .restart local v0    # "N":I
    .restart local v4    # "displayId":I
    .restart local v5    # "i":I
    .restart local v7    # "token":Landroid/os/IBinder;
    :cond_2
    if-nez p1, :cond_4

    .line 5257
    :try_start_1
    monitor-exit v9

    .line 5384
    :cond_3
    :goto_2
    return-void

    .line 5272
    :cond_4
    iget-object v8, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v8, :cond_5

    .line 5273
    iget-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 5274
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 5277
    :cond_5
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5279
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    if-eqz v8, :cond_8

    .line 5295
    iget-object v8, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v8, :cond_6

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    iget-object v9, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v8, v9}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    invoke-virtual {v8, v9}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v8

    if-eqz v8, :cond_8

    .line 5298
    :cond_6
    if-eqz v1, :cond_7

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    invoke-virtual {v8, v1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 5300
    :cond_7
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 5310
    :cond_8
    if-eqz v1, :cond_9

    .line 5316
    iget v8, v1, Landroid/content/res/Configuration;->densityDpi:I

    iput v8, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 5318
    invoke-direct {p0}, Landroid/app/ActivityThread;->updateDefaultDensity()V

    .line 5319
    invoke-virtual {p0, v1, v10}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 5322
    :cond_9
    iget-object v8, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5324
    .restart local v6    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v6, :cond_3

    .line 5328
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v9, v8, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v9, v2

    iput v9, v8, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 5329
    iget-boolean v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    iput-boolean v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 5330
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v8, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 5332
    .local v3, "currentIntent":Landroid/content/Intent;
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v11, v8, Landroid/app/Activity;->mChangingConfigurations:Z

    .line 5335
    iget-boolean v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    if-eqz v8, :cond_a

    .line 5336
    iget-boolean v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    iput-boolean v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 5341
    :cond_a
    iget-boolean v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v8, :cond_b

    .line 5342
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v6}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v9

    invoke-virtual {p0, v8, v12, v9}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZZ)Landroid/os/Bundle;

    .line 5344
    :cond_b
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-nez v8, :cond_c

    iget-boolean v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v8, :cond_c

    invoke-virtual {v6}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v8

    if-nez v8, :cond_c

    .line 5345
    invoke-direct {p0, v6}, Landroid/app/ActivityThread;->callCallActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 5348
    :cond_c
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-direct {p0, v8, v12, v2, v11}, Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/os/IBinder;ZIZ)V

    .line 5350
    iput-object v10, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5351
    iput-object v10, v6, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 5352
    iput-boolean v12, v6, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 5353
    iput-object v10, v6, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5355
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v8, :cond_d

    .line 5356
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-nez v8, :cond_10

    .line 5357
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    iput-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 5362
    :cond_d
    :goto_3
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-eqz v8, :cond_e

    .line 5363
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-nez v8, :cond_11

    .line 5364
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    iput-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 5369
    :cond_e
    :goto_4
    iget-boolean v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    iput-boolean v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 5371
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    iput-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 5374
    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v8, :cond_f

    .line 5375
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8, v9, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 5383
    :cond_f
    invoke-direct {p0, v6, v3}, Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 5277
    .end local v0    # "N":I
    .end local v3    # "currentIntent":Landroid/content/Intent;
    .end local v5    # "i":I
    .end local v6    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v7    # "token":Landroid/os/IBinder;
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 5359
    .restart local v0    # "N":I
    .restart local v3    # "currentIntent":Landroid/content/Intent;
    .restart local v5    # "i":I
    .restart local v6    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v7    # "token":Landroid/os/IBinder;
    :cond_10
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 5366
    :cond_11
    iget-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4
.end method

.method private handleResetTargetHeapUtilization(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 3904
    return-void
.end method

.method private handleSendExpandRequest(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "notifyReason"    # I

    .prologue
    .line 7531
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 7532
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    sget-boolean v1, Landroid/app/ActivityThread;->DEBUG_DUALSCREEN:Z

    if-eqz v1, :cond_0

    .line 7533
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleSendExpandRequest() : r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " notifyReason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7535
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-nez v1, :cond_2

    .line 7539
    :cond_1
    :goto_0
    return-void

    .line 7538
    :cond_2
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->onExpandRequested(I)V

    goto :goto_0
.end method

.method private handleSendResult(Landroid/app/ActivityThread$ResultData;)V
    .locals 7
    .param p1, "res"    # Landroid/app/ActivityThread$ResultData;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4931
    iget-object v5, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v6, p1, Landroid/app/ActivityThread$ResultData;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4933
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v1, :cond_3

    .line 4934
    iget-boolean v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v5, :cond_1

    move v2, v3

    .line 4935
    .local v2, "resumed":Z
    :goto_0
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v5, v5, Landroid/app/Activity;->mFinished:Z

    if-nez v5, :cond_0

    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v5, v5, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-boolean v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    .line 4940
    invoke-direct {p0, v1, v3}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 4942
    :cond_0
    if-eqz v2, :cond_2

    .line 4945
    :try_start_0
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/app/Activity;->mCalled:Z

    .line 4946
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/app/Activity;->mTemporaryPause:Z

    .line 4947
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v5}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 4948
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_2

    .line 4949
    new-instance v3, Landroid/util/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onPause()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/util/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4953
    :catch_0
    move-exception v0

    .line 4954
    .local v0, "e":Landroid/util/SuperNotCalledException;
    throw v0

    .end local v0    # "e":Landroid/util/SuperNotCalledException;
    .end local v2    # "resumed":Z
    :cond_1
    move v2, v4

    .line 4934
    goto :goto_0

    .line 4955
    .restart local v2    # "resumed":Z
    :catch_1
    move-exception v0

    .line 4956
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v5, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4957
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to pause activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 4964
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v3, p1, Landroid/app/ActivityThread$ResultData;->results:Ljava/util/List;

    invoke-direct {p0, v1, v3}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 4965
    if-eqz v2, :cond_3

    .line 4966
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->performResume()V

    .line 4967
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v4, v3, Landroid/app/Activity;->mTemporaryPause:Z

    .line 4970
    .end local v2    # "resumed":Z
    :cond_3
    return-void
.end method

.method private handleSendShrinkRequest(Landroid/os/IBinder;Lcom/samsung/android/dualscreen/DualScreen;I)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "toScreen"    # Lcom/samsung/android/dualscreen/DualScreen;
    .param p3, "notifyReason"    # I

    .prologue
    .line 7542
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 7543
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    sget-boolean v1, Landroid/app/ActivityThread;->DEBUG_DUALSCREEN:Z

    if-eqz v1, :cond_0

    .line 7544
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleSendShrinkRequest() : r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " toScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " notifyReason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7546
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-nez v1, :cond_2

    .line 7550
    :cond_1
    :goto_0
    return-void

    .line 7549
    :cond_2
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2, p3}, Landroid/app/Activity;->onShrinkRequested(Lcom/samsung/android/dualscreen/DualScreen;I)V

    goto :goto_0
.end method

.method private handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V
    .locals 7
    .param p1, "data"    # Landroid/app/ActivityThread$ServiceArgsData;

    .prologue
    .line 4053
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Service;

    .line 4054
    .local v2, "s":Landroid/app/Service;
    if-eqz v2, :cond_1

    .line 4056
    :try_start_0
    iget-object v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 4057
    iget-object v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 4058
    iget-object v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 4061
    :cond_0
    iget-boolean v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    if-nez v3, :cond_2

    .line 4062
    iget-object v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    iget v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    iget v5, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    .line 4068
    .local v1, "res":I
    :goto_0
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4071
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    const/4 v5, 0x1

    iget v6, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    invoke-interface {v3, v4, v5, v6, v1}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4076
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    .line 4085
    .end local v1    # "res":I
    :cond_1
    return-void

    .line 4064
    :cond_2
    iget-object v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 4065
    const/16 v1, 0x3e8

    .restart local v1    # "res":I
    goto :goto_0

    .line 4077
    .end local v1    # "res":I
    :catch_0
    move-exception v0

    .line 4078
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4079
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to start service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 4073
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "res":I
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private handleSetCoreSettings(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "coreSettings"    # Landroid/os/Bundle;

    .prologue
    .line 4872
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 4873
    :try_start_0
    iput-object p1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    .line 4874
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4875
    invoke-direct {p0}, Landroid/app/ActivityThread;->onCoreSettingsChange()V

    .line 4876
    return-void

    .line 4874
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleSleeping(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sleeping"    # Z

    .prologue
    .line 4830
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4832
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v1, :cond_1

    .line 4833
    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleSleeping: no activity for token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4869
    :cond_0
    :goto_0
    return-void

    .line 4837
    :cond_1
    if-eqz p2, :cond_5

    .line 4838
    iget-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v2, :cond_3

    invoke-virtual {v1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4841
    :try_start_0
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->performStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4850
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 4854
    :cond_3
    invoke-virtual {v1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v2

    if-nez v2, :cond_4

    .line 4855
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 4860
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->activitySlept(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4861
    :catch_0
    move-exception v2

    goto :goto_0

    .line 4842
    :catch_1
    move-exception v0

    .line 4843
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4844
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to stop activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 4864
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    iget-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v2, :cond_0

    .line 4865
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->performRestart()V

    .line 4866
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    goto :goto_0
.end method

.method private handleStopActivity(Landroid/os/IBinder;ZI)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "show"    # Z
    .param p3, "configChanges"    # I

    .prologue
    const/4 v4, 0x1

    .line 4766
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4767
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v3, p3

    iput v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 4769
    new-instance v0, Landroid/app/ActivityThread$StopInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/app/ActivityThread$StopInfo;-><init>(Landroid/app/ActivityThread$1;)V

    .line 4770
    .local v0, "info":Landroid/app/ActivityThread$StopInfo;
    invoke-direct {p0, v1, v0, p2, v4}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZ)V

    .line 4776
    invoke-direct {p0, v1, p2}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 4779
    invoke-virtual {v1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPreHoneycomb()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4780
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 4788
    :cond_0
    iput-object v1, v0, Landroid/app/ActivityThread$StopInfo;->activity:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4789
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iput-object v2, v0, Landroid/app/ActivityThread$StopInfo;->state:Landroid/os/Bundle;

    .line 4790
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    iput-object v2, v0, Landroid/app/ActivityThread$StopInfo;->persistentState:Landroid/os/PersistableBundle;

    .line 4791
    iget-object v2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v2, v0}, Landroid/app/ActivityThread$H;->post(Ljava/lang/Runnable;)Z

    .line 4792
    iput-boolean v4, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 4793
    return-void
.end method

.method private handleStopService(Landroid/os/IBinder;)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 4088
    iget-object v4, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Service;

    .line 4089
    .local v2, "s":Landroid/app/Service;
    if-eqz v2, :cond_2

    .line 4092
    :try_start_0
    invoke-virtual {v2}, Landroid/app/Service;->onDestroy()V

    .line 4093
    invoke-virtual {v2}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 4094
    .local v0, "context":Landroid/content/Context;
    instance-of v4, v0, Landroid/app/ContextImpl;

    if-eqz v4, :cond_0

    .line 4095
    invoke-virtual {v2}, Landroid/app/Service;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 4096
    .local v3, "who":Ljava/lang/String;
    check-cast v0, Landroid/app/ContextImpl;

    .end local v0    # "context":Landroid/content/Context;
    const-string v4, "Service"

    invoke-virtual {v0, v3, v4}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 4099
    .end local v3    # "who":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4102
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v4, p1, v5, v6, v7}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4121
    :goto_0
    return-void

    .line 4104
    :catch_0
    move-exception v1

    .line 4106
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleStopService: unable to execute serviceDoneExecuting for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 4109
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 4110
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v4, v2, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4111
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to stop service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 4115
    :cond_1
    const-string v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleStopService: exception for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4118
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleStopService: token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V
    .locals 8
    .param p1, "data"    # Landroid/app/ActivityThread$BindServiceData;

    .prologue
    .line 3856
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Service;

    .line 3857
    .local v2, "s":Landroid/app/Service;
    if-eqz v2, :cond_0

    .line 3859
    :try_start_0
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 3860
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 3861
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 3863
    .local v0, "doRebind":Z
    if-eqz v0, :cond_1

    .line 3864
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-interface {v3, v4, v5, v0}, Landroid/app/IActivityManager;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 3880
    .end local v0    # "doRebind":Z
    :cond_0
    :goto_0
    return-void

    .line 3867
    .restart local v0    # "doRebind":Z
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3870
    :catch_0
    move-exception v3

    goto :goto_0

    .line 3872
    .end local v0    # "doRebind":Z
    :catch_1
    move-exception v1

    .line 3873
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v2, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3874
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to unbind to service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private handleUpdateOverlayPath(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isDisable"    # I

    .prologue
    .line 3563
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    iget-object v0, v0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    iget-object v0, v0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3567
    :cond_0
    const-string v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bound aplication is null .. for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " . Not updating overlay path"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3578
    :goto_0
    return-void

    .line 3570
    :cond_1
    if-eqz p3, :cond_2

    .line 3572
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    iget-object v0, v0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->removeOverlayPath(Ljava/lang/String;)I

    goto :goto_0

    .line 3576
    :cond_2
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    iget-object v0, v0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    .locals 3
    .param p1, "data"    # Landroid/app/ActivityThread$UpdateCompatibilityData;

    .prologue
    .line 4894
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v0

    .line 4895
    .local v0, "apk":Landroid/app/LoadedApk;
    if-eqz v0, :cond_0

    .line 4896
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 4898
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v0

    .line 4899
    if-eqz v0, :cond_1

    .line 4900
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 4902
    :cond_1
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 4903
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerGlobal;->reportNewConfiguration(Landroid/content/res/Configuration;)V

    .line 4904
    return-void
.end method

.method private handleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "show"    # Z

    .prologue
    const/4 v2, 0x0

    .line 4804
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4806
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v0, :cond_0

    .line 4807
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleWindowVisibility: no activity for token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4827
    :goto_0
    return-void

    .line 4811
    :cond_0
    if-nez p2, :cond_3

    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v1, :cond_3

    .line 4812
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2, v2}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZ)V

    .line 4821
    :cond_1
    :goto_1
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 4824
    invoke-direct {p0, v0, p2}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 4826
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    goto :goto_0

    .line 4813
    :cond_3
    if-eqz p2, :cond_1

    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v1, :cond_1

    .line 4816
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 4818
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->performRestart()V

    .line 4819
    iput-boolean v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    goto :goto_1
.end method

.method private hasInputMethodService()Z
    .locals 3

    .prologue
    .line 7452
    iget-object v2, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 7453
    .local v0, "NSVC":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7454
    iget-object v2, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/inputmethodservice/InputMethodService;

    if-eqz v2, :cond_0

    .line 7455
    const/4 v2, 0x1

    .line 7457
    :goto_1
    return v2

    .line 7453
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7457
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private hasMatchedActivityDisplayId(I)Z
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 7444
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 7445
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    iget v1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->displayId:I

    if-ne v1, p1, :cond_0

    .line 7446
    const/4 v1, 0x1

    .line 7448
    :goto_1
    return v1

    .line 7444
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7448
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private final incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    .locals 5
    .param p1, "prc"    # Landroid/app/ActivityThread$ProviderRefCount;
    .param p2, "stable"    # Z

    .prologue
    const/16 v4, 0x83

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 6405
    if-eqz p2, :cond_2

    .line 6406
    iget v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    .line 6407
    iget v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-ne v1, v2, :cond_0

    .line 6410
    iget-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-eqz v1, :cond_1

    .line 6414
    const/4 v0, -0x1

    .line 6420
    .local v0, "unstableDelta":I
    iput-boolean v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 6423
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v4, p1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    .line 6433
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v2, v2, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v0}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6470
    .end local v0    # "unstableDelta":I
    :cond_0
    :goto_1
    return-void

    .line 6425
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "unstableDelta":I
    goto :goto_0

    .line 6440
    .end local v0    # "unstableDelta":I
    :cond_2
    iget v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    .line 6441
    iget v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-ne v1, v2, :cond_0

    .line 6443
    iget-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-eqz v1, :cond_3

    .line 6452
    iput-boolean v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 6453
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v4, p1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    goto :goto_1

    .line 6462
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v2, v2, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 6464
    :catch_0
    move-exception v1

    goto :goto_1

    .line 6435
    .restart local v0    # "unstableDelta":I
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    const/4 v5, 0x1

    .line 6346
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 6349
    .local v9, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ProviderInfo;

    .line 6358
    .local v3, "cpi":Landroid/content/pm/ProviderInfo;
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/IActivityManager$ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v7

    .line 6360
    .local v7, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    if-eqz v7, :cond_0

    .line 6361
    iput-boolean v5, v7, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    .line 6362
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6367
    .end local v3    # "cpi":Landroid/content/pm/ProviderInfo;
    .end local v7    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Landroid/app/IActivityManager;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6371
    :goto_1
    return-void

    .line 6369
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private installProvider(Landroid/content/Context;Landroid/app/IActivityManager$ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/IActivityManager$ContentProviderHolder;
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "holder"    # Landroid/app/IActivityManager$ContentProviderHolder;
    .param p3, "info"    # Landroid/content/pm/ProviderInfo;
    .param p4, "noisy"    # Z
    .param p5, "noReleaseNeeded"    # Z
    .param p6, "stable"    # Z

    .prologue
    .line 6720
    const/4 v10, 0x0

    .line 6722
    .local v10, "localProvider":Landroid/content/ContentProvider;
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v15, :cond_7

    .line 6723
    :cond_0
    if-eqz p4, :cond_1

    .line 6724
    const-string v15, "ActivityThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Loading provider "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6727
    :cond_1
    const/4 v3, 0x0

    .line 6728
    .local v3, "c":Landroid/content/Context;
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 6729
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 6730
    move-object/from16 v3, p1

    .line 6742
    :goto_0
    if-nez v3, :cond_4

    .line 6743
    const-string v15, "ActivityThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unable to get context for package "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " while loading content provider "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6747
    const/4 v14, 0x0

    .line 6837
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "c":Landroid/content/Context;
    :goto_1
    return-object v14

    .line 6731
    .restart local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "c":Landroid/content/Context;
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v15}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v15

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 6733
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    goto :goto_0

    .line 6736
    :cond_3
    :try_start_0
    iget-object v15, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    goto :goto_0

    .line 6750
    :cond_4
    :try_start_1
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 6751
    .local v4, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p3

    iget-object v15, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Landroid/content/ContentProvider;

    move-object v10, v0

    .line 6753
    invoke-virtual {v10}, Landroid/content/ContentProvider;->getIContentProvider()Landroid/content/IContentProvider;

    move-result-object v13

    .line 6754
    .local v13, "provider":Landroid/content/IContentProvider;
    if-nez v13, :cond_5

    .line 6755
    const-string v15, "ActivityThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed to instantiate class "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " from sourceDir "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6758
    const/4 v14, 0x0

    goto :goto_1

    .line 6763
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v10, v3, v0}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6780
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "c":Landroid/content/Context;
    .end local v4    # "cl":Ljava/lang/ClassLoader;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 6783
    :try_start_2
    invoke-interface {v13}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 6784
    .local v9, "jBinder":Landroid/os/IBinder;
    if-eqz v10, :cond_9

    .line 6785
    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, p3

    iget-object v15, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v6, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6786
    .local v6, "cname":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 6787
    .local v11, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v11, :cond_8

    .line 6792
    iget-object v13, v11, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    .line 6801
    :goto_3
    iget-object v14, v11, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/IActivityManager$ContentProviderHolder;

    .line 6835
    .end local v6    # "cname":Landroid/content/ComponentName;
    .end local v11    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    .local v14, "retHolder":Landroid/app/IActivityManager$ContentProviderHolder;
    :goto_4
    monitor-exit v16

    goto/16 :goto_1

    .end local v9    # "jBinder":Landroid/os/IBinder;
    .end local v14    # "retHolder":Landroid/app/IActivityManager$ContentProviderHolder;
    :catchall_0
    move-exception v15

    :goto_5
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v15

    .line 6764
    .end local v13    # "provider":Landroid/content/IContentProvider;
    .restart local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "c":Landroid/content/Context;
    :catch_0
    move-exception v7

    .line 6765
    .local v7, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v7}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 6766
    new-instance v15, Ljava/lang/RuntimeException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unable to get provider "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 6770
    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 6773
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "c":Landroid/content/Context;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_7
    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .restart local v13    # "provider":Landroid/content/IContentProvider;
    goto :goto_2

    .line 6794
    .restart local v6    # "cname":Landroid/content/ComponentName;
    .restart local v9    # "jBinder":Landroid/os/IBinder;
    .restart local v11    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_8
    :try_start_3
    new-instance v8, Landroid/app/IActivityManager$ContentProviderHolder;

    move-object/from16 v0, p3

    invoke-direct {v8, v0}, Landroid/app/IActivityManager$ContentProviderHolder;-><init>(Landroid/content/pm/ProviderInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6795
    .end local p2    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .local v8, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    :try_start_4
    iput-object v13, v8, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 6796
    const/4 v15, 0x1

    iput-boolean v15, v8, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    .line 6797
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v10, v8}, Landroid/app/ActivityThread;->installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/IActivityManager$ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;

    move-result-object v11

    .line 6798
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    invoke-virtual {v15, v9, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6799
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 p2, v8

    .end local v8    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local p2    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    goto :goto_3

    .line 6803
    .end local v6    # "cname":Landroid/content/ComponentName;
    .end local v11    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v15, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityThread$ProviderRefCount;

    .line 6804
    .local v12, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v12, :cond_b

    .line 6812
    if-nez p5, :cond_a

    .line 6813
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v12, v1}, Landroid/app/ActivityThread;->incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 6815
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v15

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p6

    invoke-interface {v15, v0, v1}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/os/IBinder;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 6833
    :cond_a
    :goto_6
    :try_start_7
    iget-object v14, v12, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    .restart local v14    # "retHolder":Landroid/app/IActivityManager$ContentProviderHolder;
    goto/16 :goto_4

    .line 6822
    .end local v14    # "retHolder":Landroid/app/IActivityManager$ContentProviderHolder;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v13, v10, v1}, Landroid/app/ActivityThread;->installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/IActivityManager$ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;

    move-result-object v5

    .line 6824
    .local v5, "client":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz p5, :cond_c

    .line 6825
    new-instance v12, Landroid/app/ActivityThread$ProviderRefCount;

    .end local v12    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    const/16 v15, 0x3e8

    const/16 v17, 0x3e8

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-direct {v12, v0, v5, v15, v1}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/IActivityManager$ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    .line 6831
    .restart local v12    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :goto_7
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v15, v9, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 6827
    :cond_c
    if-eqz p6, :cond_d

    new-instance v12, Landroid/app/ActivityThread$ProviderRefCount;

    .end local v12    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    const/4 v15, 0x1

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-direct {v12, v0, v5, v15, v1}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/IActivityManager$ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    .restart local v12    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :goto_8
    goto :goto_7

    :cond_d
    new-instance v12, Landroid/app/ActivityThread$ProviderRefCount;

    .end local v12    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    const/4 v15, 0x0

    const/16 v17, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-direct {v12, v0, v5, v15, v1}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/IActivityManager$ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_8

    .line 6835
    .end local v5    # "client":Landroid/app/ActivityThread$ProviderClientRecord;
    .end local p2    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v6    # "cname":Landroid/content/ComponentName;
    .restart local v8    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v11    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    :catchall_1
    move-exception v15

    move-object/from16 p2, v8

    .end local v8    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local p2    # "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    goto/16 :goto_5

    .line 6817
    .end local v6    # "cname":Landroid/content/ComponentName;
    .end local v11    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    .restart local v12    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :catch_1
    move-exception v15

    goto :goto_6

    .line 6738
    .end local v9    # "jBinder":Landroid/os/IBinder;
    .end local v12    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v13    # "provider":Landroid/content/IContentProvider;
    .restart local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "c":Landroid/content/Context;
    :catch_2
    move-exception v15

    goto/16 :goto_0
.end method

.method private installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/IActivityManager$ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;
    .locals 14
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "localProvider"    # Landroid/content/ContentProvider;
    .param p3, "holder"    # Landroid/app/IActivityManager$ContentProviderHolder;

    .prologue
    .line 6685
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 6686
    .local v3, "auths":[Ljava/lang/String;
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 6688
    .local v13, "userId":I
    new-instance v1, Landroid/app/ActivityThread$ProviderClientRecord;

    move-object v2, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/app/ActivityThread$ProviderClientRecord;-><init>(Landroid/app/ActivityThread;[Ljava/lang/String;Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/IActivityManager$ContentProviderHolder;)V

    .line 6690
    .local v1, "pcr":Landroid/app/ActivityThread$ProviderClientRecord;
    move-object v7, v3

    .local v7, "arr$":[Ljava/lang/String;
    array-length v12, v7

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v12, :cond_1

    aget-object v8, v7, v10

    .line 6691
    .local v8, "auth":Ljava/lang/String;
    new-instance v11, Landroid/app/ActivityThread$ProviderKey;

    invoke-direct {v11, v8, v13}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    .line 6692
    .local v11, "key":Landroid/app/ActivityThread$ProviderKey;
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 6693
    .local v9, "existing":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v9, :cond_0

    .line 6694
    const-string v2, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v5, v5, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " already published as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6690
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 6697
    :cond_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v11, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6700
    .end local v8    # "auth":Ljava/lang/String;
    .end local v9    # "existing":Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v11    # "key":Landroid/app/ActivityThread$ProviderKey;
    :cond_1
    return-object v1
.end method

.method private isFixedOrientationCascadeInner(Landroid/app/ActivityThread$ActivityClientRecord;)Z
    .locals 5
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7350
    sget-boolean v4, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v4, :cond_3

    .line 7351
    if-eqz p1, :cond_0

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 7362
    :cond_1
    :goto_0
    return v2

    .line 7354
    :cond_2
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 7355
    .local v0, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v4, :cond_3

    .line 7356
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    iget v1, v4, Landroid/content/res/Configuration;->orientation:I

    .line 7357
    .local v1, "overrideOr":I
    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    if-eq v1, v2, :cond_1

    .end local v0    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v1    # "overrideOr":I
    :cond_3
    move v2, v3

    .line 7362
    goto :goto_0
.end method

.method private isSelectiveOrientationStateInner(Landroid/app/ActivityThread$ActivityClientRecord;)Z
    .locals 8
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 7385
    sget-boolean v5, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v5, :cond_4

    .line 7386
    if-eqz p1, :cond_0

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-nez v5, :cond_2

    :cond_0
    move v3, v4

    .line 7401
    :cond_1
    :goto_0
    return v3

    .line 7389
    :cond_2
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 7390
    .local v1, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v5, :cond_4

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v5, :cond_4

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    sget-object v6, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 7392
    iget-object v5, p0, Landroid/app/ActivityThread;->mTempConfigurationForSelectiveOrientation:Landroid/content/res/Configuration;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/app/ActivityThread;->mTempConfigurationForSelectiveOrientation:Landroid/content/res/Configuration;

    iget v0, v5, Landroid/content/res/Configuration;->orientation:I

    .line 7393
    .local v0, "globalOr":I
    :goto_1
    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    .line 7395
    .local v2, "overrideOr":I
    if-ne v0, v3, :cond_3

    if-eq v2, v7, :cond_1

    :cond_3
    if-ne v0, v7, :cond_4

    if-eq v2, v3, :cond_1

    .end local v0    # "globalOr":I
    .end local v1    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v2    # "overrideOr":I
    :cond_4
    move v3, v4

    .line 7401
    goto :goto_0

    .line 7392
    .restart local v1    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_5
    iget-object v5, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v5, Landroid/content/res/Configuration;->orientation:I

    goto :goto_1
.end method

.method public static isSystem()Z
    .locals 1

    .prologue
    .line 2257
    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    iget-boolean v0, v0, Landroid/app/ActivityThread;->mSystemThread:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 12
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x40

    const/4 v9, 0x0

    .line 7166
    const-string v6, "ActivityThreadMain"

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7167
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 7172
    invoke-static {v9}, Ldalvik/system/CloseGuard;->setEnabled(Z)V

    .line 7174
    invoke-static {}, Landroid/os/Environment;->initForCurrentUser()V

    .line 7177
    new-instance v6, Landroid/app/ActivityThread$EventLoggingReporter;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/app/ActivityThread$EventLoggingReporter;-><init>(Landroid/app/ActivityThread$1;)V

    invoke-static {v6}, Llibcore/io/EventLogger;->setReporter(Llibcore/io/EventLogger$Reporter;)V

    .line 7179
    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreProvider;->install()V

    .line 7183
    :try_start_0
    const-string v6, "1"

    const-string/jumbo v7, "ro.config.tima"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 7184
    .local v4, "timaEnabled":Z
    if-eqz v4, :cond_0

    .line 7185
    const-string v6, "3.0"

    const-string/jumbo v7, "ro.config.timaversion"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 7186
    .local v5, "timaversion":Z
    if-eqz v5, :cond_0

    .line 7187
    const-string v6, "com.sec.tima.TimaKeyStoreProvider"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 7189
    .local v2, "keyStoreClass":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/Provider;

    invoke-static {v6}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 7190
    const-string v6, "ActivityThread"

    const-string v7, "Added TimaKeyStore provider"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7199
    .end local v2    # "keyStoreClass":Ljava/lang/Class;
    .end local v4    # "timaEnabled":Z
    .end local v5    # "timaversion":Z
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v6}, Landroid/os/Environment;->getUserConfigDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 7200
    .local v0, "configDir":Ljava/io/File;
    invoke-static {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->setDefaultUserDirectory(Ljava/io/File;)V

    .line 7202
    const-string v6, "<pre-initialized>"

    invoke-static {v6}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 7204
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 7206
    new-instance v3, Landroid/app/ActivityThread;

    invoke-direct {v3}, Landroid/app/ActivityThread;-><init>()V

    .line 7207
    .local v3, "thread":Landroid/app/ActivityThread;
    invoke-direct {v3, v9}, Landroid/app/ActivityThread;->attach(Z)V

    .line 7209
    sget-object v6, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v6, :cond_1

    .line 7210
    invoke-virtual {v3}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    sput-object v6, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    .line 7213
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    sget v7, Landroid/app/ActivityThread;->LOOPER_SLOW_LOOP_WARNING_TIMEOUT:I

    invoke-virtual {v6, v7}, Landroid/os/Looper;->setSlowLapTimeEvent(I)V

    .line 7215
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, v3, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v7, v7, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/os/Looper;->setPackageName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 7224
    :goto_1
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 7225
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 7227
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Main thread loop unexpectedly exited"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 7193
    .end local v0    # "configDir":Ljava/io/File;
    .end local v3    # "thread":Landroid/app/ActivityThread;
    :catch_0
    move-exception v1

    .line 7194
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "ActivityThread"

    const-string v7, "Unable to add TimaKeyStore provider"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7195
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 7216
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "configDir":Ljava/io/File;
    .restart local v3    # "thread":Landroid/app/ActivityThread;
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method private static niceDown()V
    .locals 3

    .prologue
    .line 7158
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7162
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 7159
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 7160
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "ActivityThread"

    const-string v2, "Nice Down"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static niceUp()V
    .locals 3

    .prologue
    .line 7150
    const/16 v1, -0xb

    :try_start_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7154
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 7151
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 7152
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "ActivityThread"

    const-string v2, "Nice UP"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onCoreSettingsChange()V
    .locals 14

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 4879
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    const-string v1, "debug_view_attributes"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v11, 0x1

    .line 4881
    .local v11, "debugViewAttributes":Z
    :goto_0
    sget-boolean v0, Landroid/view/View;->mDebugViewAttributes:Z

    if-eq v11, v0, :cond_1

    .line 4882
    sput-boolean v11, Landroid/view/View;->mDebugViewAttributes:Z

    .line 4885
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 4886
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/ActivityThread$ActivityClientRecord;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v9, v0, Landroid/app/ActivityThread$ActivityClientRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    iget v10, v0, Landroid/app/ActivityThread$ActivityClientRecord;->displayId:I

    move-object v0, p0

    move-object v3, v2

    move v5, v4

    move-object v6, v2

    move-object v7, v2

    move v8, v4

    invoke-virtual/range {v0 .. v10}, Landroid/app/ActivityThread;->requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;ZLcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    goto :goto_1

    .end local v11    # "debugViewAttributes":Z
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/app/ActivityThread$ActivityClientRecord;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_0
    move v11, v4

    .line 4879
    goto :goto_0

    .line 4891
    .restart local v11    # "debugViewAttributes":Z
    :cond_1
    return-void
.end method

.method private parseCSCAppResource()V
    .locals 12

    .prologue
    .line 7026
    const/4 v6, 0x0

    .line 7028
    .local v6, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    iput-object v10, p0, Landroid/app/ActivityThread;->mCSCIconMap:Landroid/util/ArrayMap;

    .line 7029
    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    iput-object v10, p0, Landroid/app/ActivityThread;->mCSCStringMap:Landroid/util/ArrayMap;

    .line 7031
    new-instance v1, Ljava/io/File;

    const-string v10, "/system/csc/appresource/CSCAppResource.xml"

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7032
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 7033
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7034
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .local v7, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 7035
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v10, 0x0

    invoke-interface {v2, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 7037
    iget-object v10, p0, Landroid/app/ActivityThread;->mCSCIconMap:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->clear()V

    .line 7038
    iget-object v10, p0, Landroid/app/ActivityThread;->mCSCStringMap:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->clear()V

    .line 7040
    const/4 v9, 0x0

    .line 7042
    .local v9, "type":I
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 7043
    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 7044
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 7046
    .local v8, "tag":Ljava/lang/String;
    const-string/jumbo v10, "item"

    invoke-virtual {v8, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_1

    .line 7047
    const/4 v10, 0x0

    const-string/jumbo v11, "name"

    invoke-interface {v2, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7048
    .local v4, "strName":Ljava/lang/String;
    const/4 v10, 0x0

    const-string/jumbo v11, "iconid"

    invoke-interface {v2, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7049
    .local v3, "strIconId":Ljava/lang/String;
    const/4 v10, 0x0

    const-string/jumbo v11, "stringid"

    invoke-interface {v2, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 7051
    .local v5, "strStringId":Ljava/lang/String;
    if-eqz v4, :cond_1

    if-nez v3, :cond_4

    if-nez v5, :cond_4

    .line 7063
    .end local v3    # "strIconId":Ljava/lang/String;
    .end local v4    # "strName":Ljava/lang/String;
    .end local v5    # "strStringId":Ljava/lang/String;
    .end local v8    # "tag":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    move-object v6, v7

    .line 7076
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .end local v9    # "type":I
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :cond_2
    if-eqz v6, :cond_3

    .line 7078
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 7082
    :goto_1
    const/4 v6, 0x0

    .line 7085
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    :goto_2
    return-void

    .line 7055
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "strIconId":Ljava/lang/String;
    .restart local v4    # "strName":Ljava/lang/String;
    .restart local v5    # "strStringId":Ljava/lang/String;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "tag":Ljava/lang/String;
    .restart local v9    # "type":I
    :cond_4
    if-eqz v3, :cond_5

    .line 7056
    :try_start_3
    iget-object v10, p0, Landroid/app/ActivityThread;->mCSCIconMap:Landroid/util/ArrayMap;

    const/16 v11, 0x10

    invoke-static {v3, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7058
    :cond_5
    if-eqz v5, :cond_1

    .line 7059
    iget-object v10, p0, Landroid/app/ActivityThread;->mCSCStringMap:Landroid/util/ArrayMap;

    const/16 v11, 0x10

    invoke-static {v5, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 7065
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "strIconId":Ljava/lang/String;
    .end local v4    # "strName":Ljava/lang/String;
    .end local v5    # "strStringId":Ljava/lang/String;
    .end local v8    # "tag":Ljava/lang/String;
    .end local v9    # "type":I
    :catch_0
    move-exception v0

    move-object v6, v7

    .line 7066
    .end local v1    # "file":Ljava/io/File;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/lang/NullPointerException;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :goto_3
    :try_start_4
    const-string v10, "ActivityThread"

    const-string/jumbo v11, "parseCSCAppResource: Got exception:"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 7076
    if-eqz v6, :cond_3

    .line 7078
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 7082
    :goto_4
    const/4 v6, 0x0

    goto :goto_2

    .line 7067
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 7068
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_5
    :try_start_6
    const-string v10, "ActivityThread"

    const-string/jumbo v11, "parseCSCAppResource: Got exception:"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 7076
    if-eqz v6, :cond_3

    .line 7078
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 7082
    :goto_6
    const/4 v6, 0x0

    goto :goto_2

    .line 7069
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v0

    .line 7070
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_7
    :try_start_8
    const-string v10, "ActivityThread"

    const-string/jumbo v11, "parseCSCAppResource: Got exception:"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 7076
    if-eqz v6, :cond_3

    .line 7078
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 7082
    :goto_8
    const/4 v6, 0x0

    goto :goto_2

    .line 7071
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v0

    .line 7072
    .local v0, "e":Ljava/io/IOException;
    :goto_9
    :try_start_a
    const-string v10, "ActivityThread"

    const-string/jumbo v11, "parseCSCAppResource: Got exception:"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 7076
    if-eqz v6, :cond_3

    .line 7078
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 7082
    :goto_a
    const/4 v6, 0x0

    goto :goto_2

    .line 7073
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 7074
    .local v0, "e":Ljava/lang/Exception;
    :goto_b
    :try_start_c
    const-string v10, "ActivityThread"

    const-string/jumbo v11, "parseCSCAppResource: Got exception:"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 7076
    if-eqz v6, :cond_3

    .line 7078
    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 7082
    :goto_c
    const/4 v6, 0x0

    goto :goto_2

    .line 7076
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_d
    if-eqz v6, :cond_6

    .line 7078
    :try_start_e
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 7082
    :goto_e
    const/4 v6, 0x0

    :cond_6
    throw v10

    .line 7079
    .restart local v1    # "file":Ljava/io/File;
    :catch_5
    move-exception v10

    goto :goto_1

    .end local v1    # "file":Ljava/io/File;
    .local v0, "e":Ljava/lang/NullPointerException;
    :catch_6
    move-exception v10

    goto :goto_4

    .local v0, "e":Ljava/lang/NumberFormatException;
    :catch_7
    move-exception v10

    goto :goto_6

    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_8
    move-exception v10

    goto :goto_8

    .local v0, "e":Ljava/io/IOException;
    :catch_9
    move-exception v10

    goto :goto_a

    .local v0, "e":Ljava/lang/Exception;
    :catch_a
    move-exception v10

    goto :goto_c

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_b
    move-exception v11

    goto :goto_e

    .line 7076
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_d

    .line 7073
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_c
    move-exception v0

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_b

    .line 7071
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_d
    move-exception v0

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_9

    .line 7069
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_e
    move-exception v0

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_7

    .line 7067
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_f
    move-exception v0

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 7065
    .end local v1    # "file":Ljava/io/File;
    :catch_10
    move-exception v0

    goto :goto_3
.end method

.method private static performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V
    .locals 6
    .param p0, "cb"    # Landroid/content/ComponentCallbacks2;
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v4, 0x0

    .line 5482
    instance-of v3, p0, Landroid/app/Activity;

    if-eqz v3, :cond_3

    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    move-object v0, v3

    .line 5483
    .local v0, "activity":Landroid/app/Activity;
    :goto_0
    if-eqz v0, :cond_0

    .line 5484
    iput-boolean v4, v0, Landroid/app/Activity;->mCalled:Z

    .line 5487
    :cond_0
    const/4 v2, 0x0

    .line 5488
    .local v2, "shouldChangeConfig":Z
    if-eqz v0, :cond_1

    iget-object v3, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    if-nez v3, :cond_4

    .line 5489
    :cond_1
    const/4 v2, 0x1

    .line 5515
    :cond_2
    :goto_1
    if-eqz v2, :cond_6

    .line 5516
    invoke-interface {p0, p1}, Landroid/content/ComponentCallbacks2;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5518
    if-eqz v0, :cond_6

    .line 5524
    iget-boolean v3, v0, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_5

    .line 5525
    new-instance v3, Landroid/util/SuperNotCalledException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did not call through to super.onConfigurationChanged()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5482
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "shouldChangeConfig":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 5500
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v2    # "shouldChangeConfig":Z
    :cond_4
    iget-object v3, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    .line 5503
    .local v1, "diff":I
    if-eqz v1, :cond_2

    .line 5507
    iget-object v3, v0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v3

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v1

    if-nez v3, :cond_2

    .line 5508
    const/4 v2, 0x1

    goto :goto_1

    .line 5529
    .end local v1    # "diff":I
    :cond_5
    iput v4, v0, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 5530
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v3, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 5533
    :cond_6
    return-void
.end method

.method private performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finishing"    # Z
    .param p3, "configChanges"    # I
    .param p4, "getNonConfigInstance"    # Z

    .prologue
    const/4 v7, 0x1

    .line 4978
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4979
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v0, 0x0

    .line 4981
    .local v0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz v2, :cond_7

    .line 4982
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 4983
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v4, v3, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v4, p3

    iput v4, v3, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 4984
    if-eqz p2, :cond_0

    .line 4985
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v7, v3, Landroid/app/Activity;->mFinished:Z

    .line 4987
    :cond_0
    iget-boolean v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v3, :cond_2

    .line 4989
    :try_start_0
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/app/Activity;->mCalled:Z

    .line 4990
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 4991
    const/16 v3, 0x7545

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4993
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_1

    .line 4994
    new-instance v3, Landroid/util/SuperNotCalledException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v5}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did not call through to super.onPause()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/util/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4998
    :catch_0
    move-exception v1

    .line 4999
    .local v1, "e":Landroid/util/SuperNotCalledException;
    throw v1

    .line 5000
    .end local v1    # "e":Landroid/util/SuperNotCalledException;
    :catch_1
    move-exception v1

    .line 5001
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5002
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to pause activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v5}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 5008
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iput-boolean v7, v2, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 5010
    :cond_2
    iget-boolean v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v3, :cond_4

    .line 5012
    :try_start_1
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->performStop()V
    :try_end_1
    .catch Landroid/util/SuperNotCalledException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 5023
    :cond_3
    iput-boolean v7, v2, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 5025
    :cond_4
    if-eqz p4, :cond_5

    .line 5027
    :try_start_2
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->retainNonConfigurationInstances()Landroid/app/Activity$NonConfigurationInstances;

    move-result-object v3

    iput-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 5039
    :cond_5
    :try_start_3
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/app/Activity;->mCalled:Z

    .line 5040
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    .line 5041
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_6

    .line 5042
    new-instance v3, Landroid/util/SuperNotCalledException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v5}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did not call through to super.onDestroy()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Landroid/util/SuperNotCalledException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 5058
    :catch_2
    move-exception v1

    .line 5059
    .local v1, "e":Landroid/util/SuperNotCalledException;
    throw v1

    .line 5013
    .end local v1    # "e":Landroid/util/SuperNotCalledException;
    :catch_3
    move-exception v1

    .line 5014
    .restart local v1    # "e":Landroid/util/SuperNotCalledException;
    throw v1

    .line 5015
    .end local v1    # "e":Landroid/util/SuperNotCalledException;
    :catch_4
    move-exception v1

    .line 5016
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 5017
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to stop activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v5}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 5029
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v1

    .line 5030
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 5031
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to retain activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 5046
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_4
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v3, :cond_7

    .line 5047
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->closeAllPanels()V
    :try_end_4
    .catch Landroid/util/SuperNotCalledException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 5073
    :cond_7
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5074
    invoke-static {v0}, Landroid/os/StrictMode;->decrementExpectedActivityCount(Ljava/lang/Class;)V

    .line 5075
    return-object v2

    .line 5060
    :catch_6
    move-exception v1

    .line 5061
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 5062
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to destroy activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v5}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 29
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "customIntent"    # Landroid/content/Intent;

    .prologue
    .line 3062
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    .line 3063
    .local v20, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    if-nez v6, :cond_0

    .line 3064
    move-object/from16 v0, v20

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v6

    move-object/from16 v0, p1

    iput-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 3068
    :cond_0
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    .line 3069
    .local v24, "component":Landroid/content/ComponentName;
    if-nez v24, :cond_1

    .line 3070
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v7}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v24

    .line 3072
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3075
    :cond_1
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 3076
    new-instance v24, Landroid/content/ComponentName;

    .end local v24    # "component":Landroid/content/ComponentName;
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3080
    .restart local v24    # "component":Landroid/content/ComponentName;
    :cond_2
    const/4 v4, 0x0

    .line 3082
    .local v4, "activity":Landroid/app/Activity;
    :try_start_0
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v6}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v23

    .line 3083
    .local v23, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v23

    invoke-virtual {v6, v0, v7, v8}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v4

    .line 3085
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Landroid/os/StrictMode;->incrementExpectedActivityCount(Ljava/lang/Class;)V

    .line 3086
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 3087
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->prepareToEnterProcess()V

    .line 3088
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-eqz v6, :cond_3

    .line 3089
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3100
    .end local v23    # "cl":Ljava/lang/ClassLoader;
    :cond_3
    :try_start_1
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v6, v7, v8}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v10

    .line 3110
    .local v10, "app":Landroid/app/Application;
    if-eqz v4, :cond_12

    .line 3111
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->displayId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v6}, Landroid/app/ActivityThread;->createBaseContextForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/Activity;I)Landroid/content/Context;

    move-result-object v5

    .line 3122
    .local v5, "appContext":Landroid/content/Context;
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 3129
    .local v13, "title":Ljava/lang/CharSequence;
    new-instance v17, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 3133
    .local v17, "config":Landroid/content/res/Configuration;
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Landroid/app/ActivityThread;->defaultHeapUtil:F

    .line 3134
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    const/high16 v7, 0x3e800000    # 0.25f

    invoke-virtual {v6, v7}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 3135
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v21

    .line 3136
    .local v21, "activShortName":Ljava/lang/String;
    sput-object v21, Landroid/app/ActivityThread;->rCActivShort:Ljava/lang/String;

    .line 3138
    const/16 v26, 0x0

    .line 3139
    .local v26, "file":Ljava/io/File;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_4

    if-eqz v21, :cond_4

    .line 3140
    new-instance v26, Ljava/io/File;

    .end local v26    # "file":Ljava/io/File;
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "rList-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3145
    .restart local v26    # "file":Ljava/io/File;
    :cond_4
    if-eqz v26, :cond_5

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3146
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->setReadOnly()Z

    .line 3155
    :cond_5
    if-eqz v26, :cond_6

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x258

    cmp-long v6, v6, v8

    if-lez v6, :cond_6

    if-eqz v5, :cond_6

    .line 3156
    new-instance v28, Ljava/lang/Thread;

    new-instance v6, Landroid/app/ActivityThread$mRunnable;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v26

    invoke-direct {v6, v0, v5, v1, v2}, Landroid/app/ActivityThread$mRunnable;-><init>(Landroid/app/ActivityThread;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    move-object/from16 v0, v28

    invoke-direct {v0, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3157
    .local v28, "threadRC":Ljava/lang/Thread;
    if-eqz v28, :cond_6

    .line 3158
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Thread;->start()V

    .line 3164
    .end local v28    # "threadRC":Ljava/lang/Thread;
    :cond_6
    if-eqz v26, :cond_8

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Landroid/util/SuperNotCalledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result v6

    if-nez v6, :cond_8

    if-eqz v5, :cond_8

    .line 3166
    :try_start_2
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->createNewFile()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 3167
    .local v22, "bool":Ljava/lang/Boolean;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_7

    .line 3168
    const-string v6, "ActivityThread"

    const-string v7, "File already exists"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    :cond_7
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v6, v7, v0}, Landroid/content/res/Resources;->setRCable(ILjava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/util/SuperNotCalledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 3182
    .end local v22    # "bool":Ljava/lang/Boolean;
    :cond_8
    :goto_0
    :try_start_3
    iget-object v6, v4, Landroid/app/Activity;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 3183
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v6

    iput v6, v4, Landroid/app/Activity;->mPreferredOrientation:I

    .line 3187
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->referrer:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v19, v0

    move-object/from16 v6, p0

    invoke-virtual/range {v4 .. v19}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 3192
    if-eqz p2, :cond_9

    .line 3193
    move-object/from16 v0, p2

    iput-object v0, v4, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 3195
    :cond_9
    const/4 v6, 0x0

    move-object/from16 v0, p1

    iput-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 3196
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/app/Activity;->mStartedActivity:Z

    .line 3197
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v27

    .line 3198
    .local v27, "theme":I
    if-eqz v27, :cond_a

    .line 3199
    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 3202
    :cond_a
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/app/Activity;->mCalled:Z

    .line 3203
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 3204
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v6, v4, v7, v8}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 3208
    :goto_1
    iget-boolean v6, v4, Landroid/app/Activity;->mCalled:Z

    if-nez v6, :cond_c

    .line 3209
    new-instance v6, Landroid/util/SuperNotCalledException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " did not call through to super.onCreate()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3
    .catch Landroid/util/SuperNotCalledException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 3248
    .end local v5    # "appContext":Landroid/content/Context;
    .end local v10    # "app":Landroid/app/Application;
    .end local v13    # "title":Ljava/lang/CharSequence;
    .end local v17    # "config":Landroid/content/res/Configuration;
    .end local v21    # "activShortName":Ljava/lang/String;
    .end local v26    # "file":Ljava/io/File;
    .end local v27    # "theme":I
    :catch_0
    move-exception v25

    .line 3249
    .local v25, "e":Landroid/util/SuperNotCalledException;
    throw v25

    .line 3091
    .end local v25    # "e":Landroid/util/SuperNotCalledException;
    :catch_1
    move-exception v25

    .line 3092
    .local v25, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, v25

    invoke-virtual {v6, v4, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 3093
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to instantiate activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v25

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 3170
    .end local v25    # "e":Ljava/lang/Exception;
    .restart local v5    # "appContext":Landroid/content/Context;
    .restart local v10    # "app":Landroid/app/Application;
    .restart local v13    # "title":Ljava/lang/CharSequence;
    .restart local v17    # "config":Landroid/content/res/Configuration;
    .restart local v21    # "activShortName":Ljava/lang/String;
    .restart local v26    # "file":Ljava/io/File;
    :catch_2
    move-exception v25

    .line 3171
    .local v25, "e":Ljava/io/IOException;
    :try_start_4
    const-string v6, "ActivityThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException - to create new rList-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " file for pkg : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v10}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and file : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " path : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v25

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Landroid/util/SuperNotCalledException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 3251
    .end local v5    # "appContext":Landroid/content/Context;
    .end local v10    # "app":Landroid/app/Application;
    .end local v13    # "title":Ljava/lang/CharSequence;
    .end local v17    # "config":Landroid/content/res/Configuration;
    .end local v21    # "activShortName":Ljava/lang/String;
    .end local v25    # "e":Ljava/io/IOException;
    .end local v26    # "file":Ljava/io/File;
    :catch_3
    move-exception v25

    .line 3252
    .local v25, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, v25

    invoke-virtual {v6, v4, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 3253
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to start activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v25

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 3206
    .end local v25    # "e":Ljava/lang/Exception;
    .restart local v5    # "appContext":Landroid/content/Context;
    .restart local v10    # "app":Landroid/app/Application;
    .restart local v13    # "title":Ljava/lang/CharSequence;
    .restart local v17    # "config":Landroid/content/res/Configuration;
    .restart local v21    # "activShortName":Ljava/lang/String;
    .restart local v26    # "file":Ljava/io/File;
    .restart local v27    # "theme":I
    :cond_b
    :try_start_5
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v6, v4, v7}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 3213
    :cond_c
    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 3214
    const/4 v6, 0x1

    move-object/from16 v0, p1

    iput-boolean v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 3215
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v6, v6, Landroid/app/Activity;->mFinished:Z

    if-nez v6, :cond_d

    .line 3216
    invoke-virtual {v4}, Landroid/app/Activity;->performStart()V

    .line 3217
    const/4 v6, 0x0

    move-object/from16 v0, p1

    iput-boolean v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 3219
    :cond_d
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v6, v6, Landroid/app/Activity;->mFinished:Z

    if-nez v6, :cond_f

    .line 3220
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 3221
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-nez v6, :cond_e

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    if-eqz v6, :cond_f

    .line 3222
    :cond_e
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v6, v4, v7, v8}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 3229
    :cond_f
    :goto_2
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v6, v6, Landroid/app/Activity;->mFinished:Z

    if-nez v6, :cond_12

    .line 3230
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/app/Activity;->mCalled:Z

    .line 3231
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 3232
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v6, v4, v7, v8}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 3237
    :goto_3
    iget-boolean v6, v4, Landroid/app/Activity;->mCalled:Z

    if-nez v6, :cond_12

    .line 3238
    new-instance v6, Landroid/util/SuperNotCalledException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " did not call through to super.onPostCreate()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3225
    :cond_10
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-eqz v6, :cond_f

    .line 3226
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v6, v4, v7}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_2

    .line 3235
    :cond_11
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v6, v4, v7}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_3

    .line 3244
    .end local v5    # "appContext":Landroid/content/Context;
    .end local v13    # "title":Ljava/lang/CharSequence;
    .end local v17    # "config":Landroid/content/res/Configuration;
    .end local v21    # "activShortName":Ljava/lang/String;
    .end local v26    # "file":Ljava/io/File;
    .end local v27    # "theme":I
    :cond_12
    const/4 v6, 0x1

    move-object/from16 v0, p1

    iput-boolean v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 3246
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    move-object/from16 v0, p1

    invoke-virtual {v6, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Landroid/util/SuperNotCalledException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 3259
    .end local v10    # "app":Landroid/app/Application;
    :cond_13
    return-object v4
.end method

.method private performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZ)V
    .locals 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "info"    # Landroid/app/ActivityThread$StopInfo;
    .param p3, "keepShown"    # Z
    .param p4, "saveState"    # Z

    .prologue
    const/4 v3, 0x1

    .line 4663
    if-eqz p1, :cond_0

    .line 4664
    if-nez p3, :cond_2

    iget-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v1, :cond_2

    .line 4665
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mFinished:Z

    if-eqz v1, :cond_1

    .line 4717
    :cond_0
    :goto_0
    return-void

    .line 4671
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Performing stop of activity that is not resumed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 4674
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "ActivityThread"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4677
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    if-eqz p2, :cond_3

    .line 4682
    :try_start_0
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p2, Landroid/app/ActivityThread$StopInfo;->description:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4694
    :cond_3
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mFinished:Z

    if-nez v1, :cond_4

    if-eqz p4, :cond_4

    .line 4695
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-nez v1, :cond_4

    .line 4696
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callCallActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4700
    :cond_4
    if-nez p3, :cond_6

    .line 4703
    :try_start_1
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->performStop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4712
    :cond_5
    iput-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 4715
    :cond_6
    iput-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    goto :goto_0

    .line 4683
    :catch_0
    move-exception v0

    .line 4684
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4685
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save state of activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 4704
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 4705
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 4706
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to stop activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static varargs printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 2687
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2688
    return-void
.end method

.method private static safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5079
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 5080
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    const-string v1, "[Unknown]"

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private sendMessage(ILjava/lang/Object;)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 2999
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    .line 3000
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;I)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I

    .prologue
    const/4 v4, 0x0

    .line 3003
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    .line 3004
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;II)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .prologue
    .line 3007
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    .line 3008
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;IIZ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "async"    # Z

    .prologue
    .line 3014
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3015
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 3016
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3017
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 3018
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 3019
    if-eqz p5, :cond_0

    .line 3020
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3022
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 3023
    return-void
.end method

.method private setupGraphicsSupport(Landroid/app/LoadedApk;Ljava/io/File;)V
    .locals 4
    .param p1, "info"    # Landroid/app/LoadedApk;
    .param p2, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 5980
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5997
    :cond_0
    :goto_0
    return-void

    .line 5985
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 5986
    .local v1, "uid":I
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 5990
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 5991
    invoke-static {p2}, Landroid/view/HardwareRenderer;->setupDiskCache(Ljava/io/File;)V

    .line 5992
    invoke-static {p2}, Landroid/renderscript/RenderScriptCacheDir;->setupDiskCache(Ljava/io/File;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5994
    .end local v0    # "packages":[Ljava/lang/String;
    .end local v1    # "uid":I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static systemMain()Landroid/app/ActivityThread;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 6950
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6951
    invoke-static {v2}, Landroid/view/HardwareRenderer;->disable(Z)V

    .line 6955
    :goto_0
    new-instance v0, Landroid/app/ActivityThread;

    invoke-direct {v0}, Landroid/app/ActivityThread;-><init>()V

    .line 6956
    .local v0, "thread":Landroid/app/ActivityThread;
    invoke-direct {v0, v2}, Landroid/app/ActivityThread;->attach(Z)V

    .line 6957
    return-object v0

    .line 6953
    .end local v0    # "thread":Landroid/app/ActivityThread;
    :cond_0
    invoke-static {}, Landroid/view/HardwareRenderer;->enableForegroundTrimming()V

    goto :goto_0
.end method

.method private updateDefaultDensity()V
    .locals 3

    .prologue
    .line 6000
    iget v0, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    if-nez v0, :cond_0

    .line 6003
    const-string v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switching default density from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6006
    iget v0, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    sput v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    .line 6012
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    .line 6015
    :cond_0
    return-void
.end method

.method private updateShrinkRequestedState(Z)V
    .locals 3
    .param p1, "shrinkRequested"    # Z

    .prologue
    .line 7522
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_DUALSCREEN:Z

    if-eqz v0, :cond_0

    .line 7523
    const-string v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateShrinkRequestedState() : shrinkRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7525
    :cond_0
    monitor-enter p0

    .line 7526
    :try_start_0
    iput-boolean p1, p0, Landroid/app/ActivityThread;->mShrinkRequested:Z

    .line 7527
    monitor-exit p0

    .line 7528
    return-void

    .line 7527
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .locals 4
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "show"    # Z

    .prologue
    .line 4720
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 4721
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 4722
    if-eqz p2, :cond_5

    .line 4723
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    if-nez v1, :cond_0

    .line 4724
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 4725
    iget v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 4726
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v1, :cond_0

    .line 4727
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->makeVisible()V

    .line 4730
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    if-eqz v1, :cond_2

    .line 4731
    # getter for: Landroid/app/ActivityThread$ActivityClientRecord;->tmpConfig:Landroid/content/res/Configuration;
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4500(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 4732
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4734
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v1, :cond_4

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->isStackOverrideConfig()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4736
    # getter for: Landroid/app/ActivityThread$ActivityClientRecord;->tmpConfig:Landroid/content/res/Configuration;
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4500(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFromStackOverrideConfig(Landroid/content/res/Configuration;)I

    .line 4744
    :cond_1
    :goto_0
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    # getter for: Landroid/app/ActivityThread$ActivityClientRecord;->tmpConfig:Landroid/content/res/Configuration;
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4500(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V

    .line 4745
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    # getter for: Landroid/app/ActivityThread$ActivityClientRecord;->tmpConfig:Landroid/content/res/Configuration;
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4500(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    invoke-static {v1}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    .line 4746
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    .line 4756
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 4757
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateVisibility : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " show : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4758
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/Window;->onVisibilityChanged(Z)V

    .line 4763
    :cond_3
    return-void

    .line 4739
    :cond_4
    # getter for: Landroid/app/ActivityThread$ActivityClientRecord;->tmpConfig:Landroid/content/res/Configuration;
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4500(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    goto :goto_0

    .line 4749
    :cond_5
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v1, :cond_2

    .line 4750
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 4751
    iget v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 4752
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public final acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;
    .locals 10
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "stable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 6474
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 6475
    :try_start_0
    new-instance v1, Landroid/app/ActivityThread$ProviderKey;

    invoke-direct {v1, p2, p3}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    .line 6476
    .local v1, "key":Landroid/app/ActivityThread$ProviderKey;
    iget-object v7, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 6477
    .local v2, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    if-nez v2, :cond_0

    .line 6478
    monitor-exit v6

    move-object v4, v5

    .line 6498
    :goto_0
    return-object v4

    .line 6481
    :cond_0
    iget-object v4, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    .line 6482
    .local v4, "provider":Landroid/content/IContentProvider;
    invoke-interface {v4}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 6483
    .local v0, "jBinder":Landroid/os/IBinder;
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v7

    if-nez v7, :cond_1

    .line 6486
    const-string v7, "ActivityThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Acquiring provider "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": existing object\'s process dead"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6488
    const/4 v7, 0x1

    invoke-virtual {p0, v0, v7}, Landroid/app/ActivityThread;->handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V

    .line 6489
    monitor-exit v6

    move-object v4, v5

    goto :goto_0

    .line 6494
    :cond_1
    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    .line 6495
    .local v3, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v3, :cond_2

    .line 6496
    invoke-direct {p0, v3, p4}, Landroid/app/ActivityThread;->incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V

    .line 6498
    :cond_2
    monitor-exit v6

    goto :goto_0

    .line 6499
    .end local v0    # "jBinder":Landroid/os/IBinder;
    .end local v1    # "key":Landroid/app/ActivityThread$ProviderKey;
    .end local v2    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    .end local v3    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v4    # "provider":Landroid/content/IContentProvider;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public final acquireProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;
    .locals 8
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "stable"    # Z

    .prologue
    .line 6375
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    move-result-object v7

    .line 6376
    .local v7, "provider":Landroid/content/IContentProvider;
    if-eqz v7, :cond_0

    .line 6401
    .end local v7    # "provider":Landroid/content/IContentProvider;
    :goto_0
    return-object v7

    .line 6386
    .restart local v7    # "provider":Landroid/content/IContentProvider;
    :cond_0
    const/4 v2, 0x0

    .line 6388
    .local v2, "holder":Landroid/app/IActivityManager$ContentProviderHolder;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p4}, Landroid/app/IActivityManager;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/IActivityManager$ContentProviderHolder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 6392
    :goto_1
    if-nez v2, :cond_1

    .line 6393
    const-string v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find provider info for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6394
    const/4 v7, 0x0

    goto :goto_0

    .line 6399
    :cond_1
    iget-object v3, v2, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    const/4 v4, 0x1

    iget-boolean v5, v2, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    move-object v0, p0

    move-object v1, p1

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/IActivityManager$ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v2

    .line 6401
    iget-object v7, v2, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    goto :goto_0

    .line 6390
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method final appNotRespondingViaProvider(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "provider"    # Landroid/os/IBinder;

    .prologue
    .line 6671
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 6672
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ProviderRefCount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6673
    .local v0, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v0, :cond_0

    .line 6675
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v3, v0, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v3, v3, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v1, v3}, Landroid/app/IActivityManager;->appNotRespondingViaProvider(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6680
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 6681
    return-void

    .line 6680
    .end local v0    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 6677
    .restart local v0    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method final applyCompatConfiguration(I)Landroid/content/res/Configuration;
    .locals 3
    .param p1, "displayDensity"    # I

    .prologue
    .line 5542
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 5543
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    if-nez v1, :cond_0

    .line 5544
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 5546
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 5547
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    iget-object v2, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1, v2}, Landroid/app/ResourcesManager;->applyCompatConfiguration(ILandroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5548
    iget-object v0, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 5550
    :cond_1
    return-object v0
.end method

.method final applyCompatConfiguration(II)Landroid/content/res/Configuration;
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "displayDensity"    # I

    .prologue
    .line 5556
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfigurations:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    .line 5557
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Landroid/app/ActivityThread;->mCompatConfigurations:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5558
    iget-object v1, p0, Landroid/app/ActivityThread;->mCompatConfigurations:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5560
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mCompatConfigurations:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Landroid/app/ActivityThread;->mConfigurations:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    invoke-virtual {v2, p1}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 5561
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    iget-object v1, p0, Landroid/app/ActivityThread;->mCompatConfigurations:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    invoke-virtual {v2, p2, v1}, Landroid/app/ResourcesManager;->applyCompatConfiguration(ILandroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5562
    iget-object v1, p0, Landroid/app/ActivityThread;->mCompatConfigurations:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "config":Landroid/content/res/Configuration;
    check-cast v0, Landroid/content/res/Configuration;

    .line 5564
    .restart local v0    # "config":Landroid/content/res/Configuration;
    :cond_1
    return-object v0
.end method

.method applyConfigCompatMainThread(ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Configuration;
    .locals 1
    .param p1, "displayDensity"    # I
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 2298
    if-nez p2, :cond_0

    .line 2299
    const/4 v0, 0x0

    .line 2306
    :goto_0
    return-object v0

    .line 2301
    :cond_0
    invoke-virtual {p3}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2302
    iget-object v0, p0, Landroid/app/ActivityThread;->mMainThreadConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2303
    iget-object p2, p0, Landroid/app/ActivityThread;->mMainThreadConfig:Landroid/content/res/Configuration;

    .line 2304
    invoke-virtual {p3, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    :cond_1
    move-object v0, p2

    .line 2306
    goto :goto_0
.end method

.method public final applyConfigurationToResources(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 5536
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 5537
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 5538
    monitor-exit v1

    .line 5539
    return-void

    .line 5538
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "allActivities"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/res/Configuration;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5400
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5403
    .local v6, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    iget-object v11, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v11

    .line 5404
    :try_start_0
    iget-object v10, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5405
    .local v1, "NAPP":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_0

    .line 5411
    iget-object v10, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5405
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 5413
    :cond_0
    iget-object v10, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 5414
    .local v0, "NACT":I
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_4

    .line 5415
    iget-object v10, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v10, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5417
    .local v5, "ar":Landroid/app/ActivityThread$ActivityClientRecord;
    iget v8, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 5426
    .local v8, "mCurDefaultDisplayDpi":I
    iget-object v4, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 5427
    .local v4, "a":Landroid/app/Activity;
    if-eqz v4, :cond_2

    .line 5428
    iget-object v10, v5, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v10}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v10

    invoke-virtual {p0, v8, p2, v10}, Landroid/app/ActivityThread;->applyConfigCompatMainThread(ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Configuration;

    move-result-object v9

    .line 5431
    .local v9, "thisConfig":Landroid/content/res/Configuration;
    iget-object v10, v5, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v10, v10, Landroid/app/Activity;->mFinished:Z

    if-nez v10, :cond_3

    if-nez p1, :cond_1

    iget-boolean v10, v5, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v10, :cond_3

    .line 5434
    :cond_1
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5414
    .end local v9    # "thisConfig":Landroid/content/res/Configuration;
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 5435
    .restart local v9    # "thisConfig":Landroid/content/res/Configuration;
    :cond_3
    if-eqz v9, :cond_2

    .line 5445
    iput-object v9, v5, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    goto :goto_2

    .line 5461
    .end local v0    # "NACT":I
    .end local v1    # "NAPP":I
    .end local v4    # "a":Landroid/app/Activity;
    .end local v5    # "ar":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v7    # "i":I
    .end local v8    # "mCurDefaultDisplayDpi":I
    .end local v9    # "thisConfig":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 5449
    .restart local v0    # "NACT":I
    .restart local v1    # "NAPP":I
    .restart local v7    # "i":I
    :cond_4
    :try_start_1
    iget-object v10, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 5450
    .local v3, "NSVC":I
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v3, :cond_5

    .line 5459
    iget-object v10, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v10, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5450
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 5461
    :cond_5
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5462
    iget-object v11, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v11

    .line 5463
    :try_start_2
    iget-object v10, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 5464
    .local v2, "NPRV":I
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v2, :cond_6

    .line 5471
    iget-object v10, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    invoke-virtual {v10, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityThread$ProviderClientRecord;

    iget-object v10, v10, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5464
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 5473
    :cond_6
    monitor-exit v11

    .line 5475
    return-object v6

    .line 5473
    .end local v2    # "NPRV":I
    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v10
.end method

.method final completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V
    .locals 8
    .param p1, "prc"    # Landroid/app/ActivityThread$ProviderRefCount;

    .prologue
    .line 6592
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 6593
    :try_start_0
    iget-boolean v5, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-nez v5, :cond_0

    .line 6599
    monitor-exit v6

    .line 6632
    :goto_0
    return-void

    .line 6605
    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 6607
    iget-object v5, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v5, v5, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    invoke-interface {v5}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 6608
    .local v2, "jBinder":Landroid/os/IBinder;
    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ProviderRefCount;

    .line 6609
    .local v0, "existingPrc":Landroid/app/ActivityThread$ProviderRefCount;
    if-ne v0, p1, :cond_1

    .line 6610
    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6613
    :cond_1
    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 6614
    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 6615
    .local v4, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    iget-object v5, v4, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v5}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 6616
    .local v3, "myBinder":Landroid/os/IBinder;
    if-ne v3, v2, :cond_2

    .line 6617
    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 6613
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 6620
    .end local v3    # "myBinder":Landroid/os/IBinder;
    .end local v4    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6627
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v6, v6, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/os/IBinder;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6629
    :catch_0
    move-exception v5

    goto :goto_0

    .line 6620
    .end local v0    # "existingPrc":Landroid/app/ActivityThread$ProviderRefCount;
    .end local v1    # "i":I
    .end local v2    # "jBinder":Landroid/os/IBinder;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method doGcIfNeeded()V
    .locals 6

    .prologue
    .line 2665
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 2666
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2669
    .local v0, "now":J
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->getLastGcTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 2671
    const-string v2, "bg"

    invoke-static {v2}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 2673
    :cond_0
    return-void
.end method

.method public dumpIntArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "list"    # Ljava/util/ArrayList;
    .param p2, "arrayName"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "prefix"    # Ljava/lang/String;

    .prologue
    .line 4020
    if-nez p1, :cond_0

    .line 4021
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4022
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " { }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4033
    :goto_0
    return-void

    .line 4025
    :cond_0
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4026
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4027
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4028
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4029
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4027
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4031
    :cond_1
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4032
    const-string/jumbo v1, "}"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dumpObjArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5
    .param p1, "list"    # Ljava/util/ArrayList;
    .param p2, "listName"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "prefix"    # Ljava/lang/String;

    .prologue
    .line 4000
    if-nez p1, :cond_1

    .line 4001
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4002
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4017
    :cond_0
    return-void

    .line 4005
    :cond_1
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4006
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4007
    const/4 v0, 0x0

    .line 4008
    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4009
    .local v2, "o":Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4010
    if-nez v2, :cond_2

    .line 4011
    const-string/jumbo v3, "null"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4015
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 4016
    goto :goto_0

    .line 4013
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public dumpThread(Ljava/io/PrintWriter;Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpDetail"    # Z
    .param p4, "dumpCallStack"    # Z

    .prologue
    .line 3991
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroid/app/ActivityThread;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3992
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3993
    .local v0, "innerPrefix":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpis:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    const-string/jumbo v2, "mCurDefaultDisplayDpis"

    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/app/ActivityThread;->dumpIntArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3994
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfigurations:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    const-string/jumbo v2, "mConfigurations"

    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/app/ActivityThread;->dumpObjArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3995
    iget-object v1, p0, Landroid/app/ActivityThread;->mCompatConfigurations:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    const-string/jumbo v2, "mCompatConfigurations"

    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/app/ActivityThread;->dumpObjArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3996
    iget-object v1, p0, Landroid/app/ActivityThread;->mPendingConfigurations:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    const-string/jumbo v2, "mPendingConfigurations"

    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/app/ActivityThread;->dumpObjArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3997
    return-void
.end method

.method ensureJitEnabled()V
    .locals 1

    .prologue
    .line 2642
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    if-nez v0, :cond_0

    .line 2643
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    .line 2644
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    .line 2646
    :cond_0
    return-void
.end method

.method final finishInstrumentation(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "results"    # Landroid/os/Bundle;

    .prologue
    .line 6331
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 6332
    .local v0, "am":Landroid/app/IActivityManager;
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v1, v1, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-boolean v1, v1, Landroid/app/ActivityThread$Profiler;->handlingProfiling:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v1, v1, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v1, :cond_0

    .line 6334
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 6339
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6342
    :goto_0
    return-void

    .line 6340
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public forceRestartActivity(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 7428
    if-nez p1, :cond_0

    .line 7433
    :goto_0
    return-void

    .line 7430
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 7431
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/ActivityThread;->performRestartActivity(Landroid/os/IBinder;)V

    .line 7432
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public forceStopActivity(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 7406
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 7407
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 7408
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v1, :cond_0

    .line 7409
    const-string v2, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forceStopActivity: no activity for token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7410
    monitor-exit v3

    .line 7424
    :goto_0
    return-void

    .line 7412
    :cond_0
    iget-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v2, :cond_2

    iget-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 7414
    :try_start_1
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->performStop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7420
    :cond_1
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 7422
    :cond_2
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 7423
    monitor-exit v3

    goto :goto_0

    .end local v1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 7415
    .restart local v1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :catch_0
    move-exception v0

    .line 7416
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v4, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7417
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to stop activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public final getActivity(Landroid/os/IBinder;)Landroid/app/Activity;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 2985
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getAppMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 7233
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 7234
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 7235
    if-eqz p1, :cond_1

    .line 7236
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 7237
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v2, :cond_3

    .line 7238
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 7239
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    monitor-exit v4

    .line 7261
    .end local v2    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :goto_0
    return-object v3

    .line 7241
    .restart local v2    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_0
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    monitor-exit v4

    goto :goto_0

    .line 7260
    .end local v2    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 7246
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 7247
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 7248
    .restart local v2    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v2, :cond_2

    .line 7249
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4

    goto :goto_0

    .line 7246
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 7252
    .end local v1    # "i":I
    .end local v2    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :catch_0
    move-exception v0

    .line 7256
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 7260
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7261
    sget-object v3, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    goto :goto_0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 2610
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;
    .locals 1

    .prologue
    .line 2588
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    return-object v0
.end method

.method public getBaseActivityToken()Landroid/os/IBinder;
    .locals 4

    .prologue
    .line 7295
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 7296
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 7297
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 7298
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v1, :cond_0

    .line 7299
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    monitor-exit v3

    .line 7303
    .end local v1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :goto_1
    return-object v2

    .line 7296
    .restart local v1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7302
    .end local v1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_1
    monitor-exit v3

    .line 7303
    const/4 v2, 0x0

    goto :goto_1

    .line 7302
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getCSCAppIconMap()Landroid/util/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7017
    sget-object v1, Landroid/app/ActivityThread;->sCSCSync:Ljava/lang/Object;

    monitor-enter v1

    .line 7018
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mCSCIconMap:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 7019
    invoke-direct {p0}, Landroid/app/ActivityThread;->parseCSCAppResource()V

    .line 7021
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7022
    iget-object v0, p0, Landroid/app/ActivityThread;->mCSCIconMap:Landroid/util/ArrayMap;

    return-object v0

    .line 7021
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCSCAppStringMap()Landroid/util/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7008
    sget-object v1, Landroid/app/ActivityThread;->sCSCSync:Ljava/lang/Object;

    monitor-enter v1

    .line 7009
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mCSCStringMap:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 7010
    invoke-direct {p0}, Landroid/app/ActivityThread;->parseCSCAppResource()V

    .line 7012
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7013
    iget-object v0, p0, Landroid/app/ActivityThread;->mCSCStringMap:Landroid/util/ArrayMap;

    return-object v0

    .line 7012
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDisplayConfiguration(I)Landroid/content/res/Configuration;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 2315
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfigurations:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    return-object v0
.end method

.method final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2373
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    return-object v0
.end method

.method public getInstrumentation()Landroid/app/Instrumentation;
    .locals 1

    .prologue
    .line 2593
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method public getIntCoreSetting(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 6967
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 6968
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 6969
    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .end local p2    # "defaultValue":I
    monitor-exit v1

    .line 6971
    :goto_0
    return p2

    .restart local p2    # "defaultValue":I
    :cond_0
    monitor-exit v1

    goto :goto_0

    .line 6972
    .end local p2    # "defaultValue":I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLastIntendedActivityToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 7438
    iget-object v0, p0, Landroid/app/ActivityThread;->mLastIntendedActivityToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread;->mLastIntendedActivityToken:Landroid/os/IBinder;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getBaseActivityToken()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 2606
    iget-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public getOverrideConfiguration(Landroid/os/IBinder;)Landroid/content/res/Configuration;
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 7322
    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v2, :cond_1

    .line 7323
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 7324
    if-eqz p1, :cond_2

    .line 7325
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 7326
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    :cond_0
    monitor-exit v2

    .line 7330
    .end local v0    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_1
    :goto_0
    return-object v1

    .line 7328
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;
    .locals 8
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "flags"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 2429
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_3

    move v5, v0

    .line 2430
    .local v5, "includeCode":Z
    :goto_0
    if-eqz v5, :cond_4

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v1, :cond_4

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v2, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_0
    move v4, v0

    .line 2434
    .local v4, "securityViolation":Z
    :goto_1
    if-eqz v5, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p3

    if-eqz v1, :cond_1

    move v6, v0

    .line 2435
    .local v6, "registerPackage":Z
    :cond_1
    and-int/lit8 v1, p3, 0x3

    if-ne v1, v0, :cond_5

    .line 2438
    if-eqz v4, :cond_5

    .line 2439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting code from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (with uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2441
    .local v7, "msg":Ljava/lang/String;
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v0, :cond_2

    .line 2442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to be run in process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (with uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2446
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .end local v4    # "securityViolation":Z
    .end local v5    # "includeCode":Z
    .end local v6    # "registerPackage":Z
    .end local v7    # "msg":Ljava/lang/String;
    :cond_3
    move v5, v6

    .line 2429
    goto/16 :goto_0

    .restart local v5    # "includeCode":Z
    :cond_4
    move v4, v6

    .line 2430
    goto :goto_1

    .line 2449
    .restart local v4    # "securityViolation":Z
    .restart local v6    # "registerPackage":Z
    :cond_5
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;I)Landroid/app/LoadedApk;
    .locals 8
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "baseLoader"    # Ljava/lang/ClassLoader;
    .param p4, "flags"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 2495
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_3

    move v5, v0

    .line 2496
    .local v5, "includeCode":Z
    :goto_0
    if-eqz v5, :cond_4

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v1, :cond_4

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v2, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_0
    move v4, v0

    .line 2500
    .local v4, "securityViolation":Z
    :goto_1
    if-eqz v5, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p4

    if-eqz v1, :cond_1

    move v6, v0

    .line 2501
    .local v6, "registerPackage":Z
    :cond_1
    and-int/lit8 v1, p4, 0x3

    if-ne v1, v0, :cond_5

    .line 2504
    if-eqz v4, :cond_5

    .line 2505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting code from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (with uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2507
    .local v7, "msg":Ljava/lang/String;
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v0, :cond_2

    .line 2508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to be run in process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (with uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2512
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .end local v4    # "securityViolation":Z
    .end local v5    # "includeCode":Z
    .end local v6    # "registerPackage":Z
    .end local v7    # "msg":Ljava/lang/String;
    :cond_3
    move v5, v6

    .line 2495
    goto/16 :goto_0

    .restart local v5    # "includeCode":Z
    :cond_4
    move v4, v6

    .line 2496
    goto :goto_1

    .restart local v4    # "securityViolation":Z
    .restart local v6    # "registerPackage":Z
    :cond_5
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 2515
    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "flags"    # I

    .prologue
    .line 2378
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 2383
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eq v4, p4, :cond_1

    const/4 v1, 0x1

    .line 2384
    .local v1, "differentUser":Z
    :goto_0
    iget-object v6, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v6

    .line 2386
    if-eqz v1, :cond_2

    .line 2388
    const/4 v3, 0x0

    .line 2394
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_1
    if-eqz v3, :cond_4

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LoadedApk;

    move-object v2, v4

    .line 2398
    .local v2, "packageInfo":Landroid/app/LoadedApk;
    :goto_2
    if-eqz v2, :cond_6

    iget-object v4, v2, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2400
    :cond_0
    invoke-virtual {v2}, Landroid/app/LoadedApk;->isSecurityViolation()Z

    move-result v4

    if-eqz v4, :cond_5

    and-int/lit8 v4, p3, 0x2

    if-nez v4, :cond_5

    .line 2402
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requesting code from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " to be run in process "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v7, v7, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v7, v7, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2410
    .end local v2    # "packageInfo":Landroid/app/LoadedApk;
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2383
    .end local v1    # "differentUser":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2389
    .restart local v1    # "differentUser":Z
    :cond_2
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_3

    .line 2390
    :try_start_1
    iget-object v4, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .restart local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_1

    .line 2392
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_3
    iget-object v4, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .restart local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_1

    :cond_4
    move-object v2, v5

    .line 2394
    goto :goto_2

    .line 2408
    .restart local v2    # "packageInfo":Landroid/app/LoadedApk;
    :cond_5
    monitor-exit v6

    .line 2424
    .end local v2    # "packageInfo":Landroid/app/LoadedApk;
    :goto_3
    return-object v2

    .line 2410
    .restart local v2    # "packageInfo":Landroid/app/LoadedApk;
    :cond_6
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2412
    const/4 v0, 0x0

    .line 2414
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/16 v6, 0x400

    invoke-interface {v4, p1, v6, p4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 2420
    :goto_4
    if-eqz v0, :cond_7

    .line 2421
    invoke-virtual {p0, v0, p2, p3}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v2

    goto :goto_3

    :cond_7
    move-object v2, v5

    .line 2424
    goto :goto_3

    .line 2416
    :catch_0
    move-exception v4

    goto :goto_4
.end method

.method public final getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;II)Landroid/app/LoadedApk;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "baseLoader"    # Ljava/lang/ClassLoader;
    .param p4, "flags"    # I
    .param p5, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2455
    iget-object v5, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v5

    .line 2457
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    .line 2458
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 2462
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoadedApk;

    move-object v1, v3

    .line 2463
    .local v1, "packageInfo":Landroid/app/LoadedApk;
    :goto_1
    if-eqz v1, :cond_4

    iget-object v3, v1, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2465
    :cond_0
    invoke-virtual {v1}, Landroid/app/LoadedApk;->isSecurityViolation()Z

    move-result v3

    if-eqz v3, :cond_3

    and-int/lit8 v3, p4, 0x2

    if-nez v3, :cond_3

    .line 2467
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requesting code from "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " to be run in process "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v6, v6, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v6, v6, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2475
    .end local v1    # "packageInfo":Landroid/app/LoadedApk;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2460
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .restart local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_0

    :cond_2
    move-object v1, v4

    .line 2462
    goto :goto_1

    .line 2473
    .restart local v1    # "packageInfo":Landroid/app/LoadedApk;
    :cond_3
    monitor-exit v5

    .line 2489
    .end local v1    # "packageInfo":Landroid/app/LoadedApk;
    :goto_2
    return-object v1

    .line 2475
    .restart local v1    # "packageInfo":Landroid/app/LoadedApk;
    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2477
    const/4 v0, 0x0

    .line 2479
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v5, 0x400

    invoke-interface {v3, p1, v5, p5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 2485
    :goto_3
    if-eqz v0, :cond_5

    .line 2486
    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;I)Landroid/app/LoadedApk;

    move-result-object v1

    goto :goto_2

    :cond_5
    move-object v1, v4

    .line 2489
    goto :goto_2

    .line 2481
    :catch_0
    move-exception v3

    goto :goto_3
.end method

.method public final getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;
    .locals 7
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    const/4 v4, 0x0

    .line 2520
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2614
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2602
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    return-object v0
.end method

.method public getShrinkRequested()Z
    .locals 1

    .prologue
    .line 7556
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mShrinkRequested:Z

    return v0
.end method

.method public getSuspectActivityToken()Landroid/os/IBinder;
    .locals 4

    .prologue
    .line 7308
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 7309
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 7310
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 7311
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mResumed:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->hasStackFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7313
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    monitor-exit v3

    .line 7317
    .end local v1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :goto_1
    return-object v2

    .line 7309
    .restart local v1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7316
    .end local v1    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7317
    iget-object v2, p0, Landroid/app/ActivityThread;->mLastIntendedActivityToken:Landroid/os/IBinder;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/ActivityThread;->mLastIntendedActivityToken:Landroid/os/IBinder;

    goto :goto_1

    .line 7316
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 7317
    .restart local v0    # "i":I
    :cond_2
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getBaseActivityToken()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1
.end method

.method public getSystemContext()Landroid/app/ContextImpl;
    .locals 1

    .prologue
    .line 2618
    monitor-enter p0

    .line 2619
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    if-nez v0, :cond_0

    .line 2620
    invoke-static {p0}, Landroid/app/ContextImpl;->createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    .line 2628
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    monitor-exit p0

    return-object v0

    .line 2629
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getThemeAppIconMap()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7088
    sget-object v1, Landroid/app/ActivityThread;->sThemeSync:Ljava/lang/Object;

    monitor-enter v1

    .line 7089
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mThemeAppIconMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 7090
    invoke-direct {p0}, Landroid/app/ActivityThread;->getThemeResourceFromMappingTable()V

    .line 7092
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7093
    iget-object v0, p0, Landroid/app/ActivityThread;->mThemeAppIconMap:Ljava/util/HashMap;

    return-object v0

    .line 7092
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/app/LoadedApk;)Landroid/content/res/Resources;
    .locals 9
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayDirs"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p7, "pkgInfo"    # Landroid/app/LoadedApk;

    .prologue
    .line 2326
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/app/LoadedApk;I)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/app/LoadedApk;I)Landroid/content/res/Resources;
    .locals 8
    .param p1, "resDir"    # Ljava/lang/String;
    .param p2, "splitResDirs"    # [Ljava/lang/String;
    .param p3, "overlayDirs"    # [Ljava/lang/String;
    .param p4, "libDirs"    # [Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "overrideConfiguration"    # Landroid/content/res/Configuration;
    .param p7, "pkgInfo"    # Landroid/app/LoadedApk;
    .param p8, "userId"    # I

    .prologue
    .line 2364
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {p7}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/ResourcesManager;->getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method final handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityConfigChangeData;)V
    .locals 14
    .param p1, "data"    # Landroid/app/ActivityThread$ActivityConfigChangeData;

    .prologue
    .line 5795
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityConfigChangeData;->activityToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5796
    .local v12, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v12, :cond_0

    iget-object v0, v12, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 5863
    :cond_0
    :goto_0
    return-void

    .line 5804
    :cond_1
    iget-object v9, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 5808
    .local v9, "mCompatConfiguration":Landroid/content/res/Configuration;
    # getter for: Landroid/app/ActivityThread$ActivityClientRecord;->tmpConfig:Landroid/content/res/Configuration;
    invoke-static {v12}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4500(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 5809
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityConfigChangeData;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_6

    .line 5811
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityConfigChangeData;->overrideConfig:Landroid/content/res/Configuration;

    iget v10, v0, Landroid/content/res/Configuration;->orientation:I

    .line 5812
    .local v10, "nextOverrideOr":I
    iget-object v0, v12, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_7

    iget-object v0, v12, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    iget v11, v0, Landroid/content/res/Configuration;->orientation:I

    .line 5815
    .local v11, "prevOverrideOr":I
    :goto_1
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityConfigChangeData;->overrideConfig:Landroid/content/res/Configuration;

    iput-object v0, v12, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 5817
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityConfigChangeData;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5820
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v0, :cond_8

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityConfigChangeData;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isStackOverrideConfig()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5822
    # getter for: Landroid/app/ActivityThread$ActivityClientRecord;->tmpConfig:Landroid/content/res/Configuration;
    invoke-static {v12}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4500(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityConfigChangeData;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFromStackOverrideConfig(Landroid/content/res/Configuration;)I

    .line 5829
    :cond_2
    :goto_2
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v0, :cond_6

    .line 5830
    if-eq v11, v10, :cond_6

    iget-object v0, v12, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    if-eqz v0, :cond_6

    iget-object v0, v12, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_6

    .line 5831
    iget-object v0, v12, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v12, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getSplitResDirs()[Ljava/lang/String;

    move-result-object v2

    iget-object v0, v12, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v3

    iget-object v0, v12, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iget v5, v12, Landroid/app/ActivityThread$ActivityClientRecord;->displayId:I

    iget-object v6, v12, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    iget-object v7, v12, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/app/LoadedApk;)Landroid/content/res/Resources;

    move-result-object v13

    .line 5836
    .local v13, "topResources":Landroid/content/res/Resources;
    iget-object v0, v12, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 5837
    .local v8, "curResources":Landroid/content/res/Resources;
    if-eqz v13, :cond_4

    if-eq v8, v13, :cond_4

    .line 5838
    sget-boolean v0, Landroid/app/ActivityThread;->SAFE_DEBUG:Z

    if-eqz v0, :cond_3

    .line 5839
    const-string v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Replace res, r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", curRes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newRes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", overConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v12, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5842
    :cond_3
    iget-object v0, v12, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v13}, Landroid/app/Activity;->setResources(Landroid/content/res/Resources;)V

    .line 5843
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, v12, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v13}, Landroid/view/WindowManagerGlobal;->setResources(Landroid/os/IBinder;Landroid/content/res/Resources;)V

    .line 5845
    :cond_4
    if-nez v10, :cond_6

    iget-object v0, v12, Landroid/app/ActivityThread$ActivityClientRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5846
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 5847
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_5

    .line 5848
    # getter for: Landroid/app/ActivityThread$ActivityClientRecord;->tmpConfig:Landroid/content/res/Configuration;
    invoke-static {v12}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4500(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v2, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 5849
    const-string v0, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applied pendingConfig, tmp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Landroid/app/ActivityThread$ActivityClientRecord;->tmpConfig:Landroid/content/res/Configuration;
    invoke-static {v12}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4500(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5851
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5858
    .end local v8    # "curResources":Landroid/content/res/Resources;
    .end local v10    # "nextOverrideOr":I
    .end local v11    # "prevOverrideOr":I
    .end local v13    # "topResources":Landroid/content/res/Resources;
    :cond_6
    iget-object v0, v12, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    # getter for: Landroid/app/ActivityThread$ActivityClientRecord;->tmpConfig:Landroid/content/res/Configuration;
    invoke-static {v12}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4500(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V

    .line 5860
    iget-object v0, v12, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v9}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    invoke-static {v0}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    .line 5862
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    goto/16 :goto_0

    .line 5812
    .restart local v10    # "nextOverrideOr":I
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 5825
    .restart local v11    # "prevOverrideOr":I
    :cond_8
    # getter for: Landroid/app/ActivityThread$ActivityClientRecord;->tmpConfig:Landroid/content/res/Configuration;
    invoke-static {v12}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4500(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityConfigChangeData;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    goto/16 :goto_2

    .line 5851
    .restart local v8    # "curResources":Landroid/content/res/Resources;
    .restart local v13    # "topResources":Landroid/content/res/Resources;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public handleCancelVisibleBehind(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, 0x0

    .line 3507
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3508
    .local v1, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v1, :cond_1

    .line 3509
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 3510
    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 3511
    .local v0, "activity":Landroid/app/Activity;
    iget-boolean v2, v0, Landroid/app/Activity;->mVisibleBehind:Z

    if-eqz v2, :cond_1

    .line 3512
    iput-boolean v3, v0, Landroid/app/Activity;->mCalled:Z

    .line 3513
    invoke-virtual {v0}, Landroid/app/Activity;->onVisibleBehindCanceled()V

    .line 3515
    iget-boolean v2, v0, Landroid/app/Activity;->mCalled:Z

    if-nez v2, :cond_0

    .line 3516
    new-instance v2, Landroid/util/SuperNotCalledException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not call through to super.onVisibleBehindCanceled()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3519
    :cond_0
    iput-boolean v3, v0, Landroid/app/Activity;->mVisibleBehind:Z

    .line 3523
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/app/IActivityManager;->backgroundResourcesReleased(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3526
    :goto_0
    return-void

    .line 3524
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method final handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 6
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    const/4 v5, 0x0

    .line 5570
    const/4 v3, -0x1

    if-nez p1, :cond_0

    move v4, v5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;IIZ)V

    .line 5571
    return-void

    .line 5570
    :cond_0
    iget v4, p1, Landroid/content/res/Configuration;->displayId:I

    goto :goto_0
.end method

.method final handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;IIZ)V
    .locals 12
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "screenOrientation"    # I
    .param p4, "_displayId"    # I
    .param p5, "updateRes"    # Z

    .prologue
    .line 5576
    if-eqz p1, :cond_3

    iget v5, p1, Landroid/content/res/Configuration;->displayId:I

    .line 5579
    .local v5, "displayId":I
    :goto_0
    const/4 v3, 0x0

    .line 5581
    .local v3, "configDiff":I
    iget-object v11, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v11

    .line 5594
    :try_start_0
    iget-object v10, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v10, :cond_1

    .line 5595
    iget-object v10, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v10, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 5596
    iget-object p1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 5597
    iget v10, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v10, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 5598
    invoke-direct {p0}, Landroid/app/ActivityThread;->updateDefaultDensity()V

    .line 5600
    :cond_0
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 5604
    :cond_1
    if-nez p1, :cond_4

    .line 5605
    monitor-exit v11

    .line 5715
    :cond_2
    :goto_1
    return-void

    .end local v3    # "configDiff":I
    .end local v5    # "displayId":I
    :cond_3
    move/from16 v5, p4

    .line 5576
    goto :goto_0

    .line 5609
    .restart local v3    # "configDiff":I
    .restart local v5    # "displayId":I
    :cond_4
    const/4 v6, 0x0

    .line 5611
    .local v6, "force":Z
    const/4 v10, 0x1

    if-ne p3, v10, :cond_9

    .line 5612
    const/4 v10, 0x1

    iput v10, p1, Landroid/content/res/Configuration;->orientation:I

    .line 5613
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/app/ActivityThread;->mPrevScreenOrientationDefined:Z

    .line 5614
    const/4 v6, 0x1

    .line 5628
    :cond_5
    :goto_2
    sget-boolean v10, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v10, :cond_6

    .line 5629
    iput-object p1, p0, Landroid/app/ActivityThread;->mTempConfigurationForSelectiveOrientation:Landroid/content/res/Configuration;

    .line 5651
    :cond_6
    iget-object v10, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v10, p1, p2, v6}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Z)Z

    .line 5654
    sget-boolean v10, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v10, :cond_7

    .line 5655
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/app/ActivityThread;->mTempConfigurationForSelectiveOrientation:Landroid/content/res/Configuration;

    .line 5659
    :cond_7
    iget-object v10, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v10, :cond_8

    .line 5660
    new-instance v10, Landroid/content/res/Configuration;

    invoke-direct {v10}, Landroid/content/res/Configuration;-><init>()V

    iput-object v10, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 5662
    :cond_8
    iget-object v10, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v10, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v10

    if-nez v10, :cond_b

    if-nez p2, :cond_b

    .line 5663
    monitor-exit v11

    goto :goto_1

    .line 5669
    .end local v6    # "force":Z
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 5615
    .restart local v6    # "force":Z
    :cond_9
    if-nez p3, :cond_a

    .line 5616
    const/4 v10, 0x2

    :try_start_1
    iput v10, p1, Landroid/content/res/Configuration;->orientation:I

    .line 5617
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/app/ActivityThread;->mPrevScreenOrientationDefined:Z

    .line 5618
    const/4 v6, 0x1

    goto :goto_2

    .line 5619
    :cond_a
    iget-boolean v10, p0, Landroid/app/ActivityThread;->mPrevScreenOrientationDefined:Z

    if-eqz v10, :cond_5

    .line 5620
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/app/ActivityThread;->mPrevScreenOrientationDefined:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5622
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    iput v10, p1, Landroid/content/res/Configuration;->orientation:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5625
    :goto_3
    const/4 v6, 0x1

    goto :goto_2

    .line 5666
    :cond_b
    :try_start_3
    iget-object v10, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v10, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v3

    .line 5667
    iget v10, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    invoke-virtual {p0, v10}, Landroid/app/ActivityThread;->applyCompatConfiguration(I)Landroid/content/res/Configuration;

    move-result-object p1

    .line 5669
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5671
    const/4 v10, 0x0

    invoke-virtual {p0, v10, p1}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5675
    .local v2, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    const/16 v10, 0x3e9

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11, v3}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;I)V

    .line 5679
    invoke-static {v3}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    .line 5681
    if-eqz v2, :cond_2

    .line 5682
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5683
    .local v0, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    if-ge v7, v0, :cond_2

    .line 5685
    sget-boolean v10, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v10, :cond_10

    .line 5686
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Landroid/app/Activity;

    if-eqz v10, :cond_10

    .line 5687
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 5688
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v9

    .line 5689
    .local v9, "token":Landroid/os/IBinder;
    invoke-virtual {p0, v9}, Landroid/app/ActivityThread;->isFixedOrientationCascade(Landroid/os/IBinder;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 5690
    invoke-virtual {p0, v9}, Landroid/app/ActivityThread;->getOverrideConfiguration(Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v8

    .line 5691
    .local v8, "overrideConfig":Landroid/content/res/Configuration;
    if-eqz v8, :cond_10

    .line 5692
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 5693
    .local v4, "copyConfig":Landroid/content/res/Configuration;
    iget v10, v8, Landroid/content/res/Configuration;->orientation:I

    if-eqz v10, :cond_c

    .line 5694
    iget v10, v8, Landroid/content/res/Configuration;->orientation:I

    iput v10, v4, Landroid/content/res/Configuration;->orientation:I

    .line 5696
    :cond_c
    iget v10, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v10, :cond_d

    .line 5697
    iget v10, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v10, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 5699
    :cond_d
    iget v10, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v10, :cond_e

    .line 5700
    iget v10, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v10, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 5702
    :cond_e
    iget v10, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v10, :cond_f

    .line 5703
    iget v10, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v10, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 5705
    :cond_f
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentCallbacks2;

    invoke-static {v10, v4}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V

    .line 5683
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v4    # "copyConfig":Landroid/content/res/Configuration;
    .end local v8    # "overrideConfig":Landroid/content/res/Configuration;
    .end local v9    # "token":Landroid/os/IBinder;
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 5712
    :cond_10
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentCallbacks2;

    invoke-static {v10, p1}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V

    goto :goto_5

    .line 5623
    .end local v0    # "N":I
    .end local v2    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    .end local v7    # "i":I
    :catch_0
    move-exception v10

    goto/16 :goto_3
.end method

.method final handleConfigurationsChanged(Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;Landroid/content/res/CompatibilityInfo;)V
    .locals 16
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList",
            "<",
            "Landroid/content/res/Configuration;",
            ">;",
            "Landroid/content/res/CompatibilityInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 5720
    .local p1, "configs":Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;, "Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList<Landroid/content/res/Configuration;>;"
    const/4 v6, 0x0

    .line 5721
    .local v6, "configDiff":I
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread;->hasInputMethodService()Z

    move-result v7

    .line 5723
    .local v7, "hasIM":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->size()I

    move-result v12

    if-ge v8, v12, :cond_7

    .line 5724
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v14

    .line 5725
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread;->mPendingConfigurations:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    invoke-virtual {v12, v8}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 5726
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread;->mPendingConfigurations:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    invoke-virtual {v12, v8}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/res/Configuration;

    invoke-virtual {v12, v13}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 5727
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread;->mPendingConfigurations:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    invoke-virtual {v12, v8}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v12}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5728
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpis:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/res/Configuration;

    iget v12, v12, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v13, v8, v12}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5729
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread;->updateDefaultDensity()V

    .line 5731
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread;->mPendingConfigurations:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v8, v13}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5734
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_3

    .line 5735
    monitor-exit v14

    .line 5723
    :cond_2
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 5738
    :cond_3
    if-nez v7, :cond_4

    .line 5739
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/res/Configuration;

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v13, v12, v0, v15}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Z)Z

    .line 5742
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread;->mConfigurations:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    invoke-virtual {v12, v8}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_5

    .line 5743
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread;->mConfigurations:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    new-instance v13, Landroid/content/res/Configuration;

    invoke-direct {v13}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {v12, v8, v13}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5745
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread;->mConfigurations:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    invoke-virtual {v12, v8}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/res/Configuration;

    invoke-virtual {v12, v13}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v12

    if-nez v12, :cond_6

    if-nez p2, :cond_6

    .line 5746
    monitor-exit v14

    goto :goto_1

    .line 5751
    :catchall_0
    move-exception v12

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 5748
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread;->mConfigurations:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    invoke-virtual {v12, v8}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/res/Configuration;

    invoke-virtual {v12, v13}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v6

    .line 5749
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread;->mConfigurations:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    invoke-virtual {v12, v8}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/res/Configuration;

    invoke-virtual {v12, v13}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 5750
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpis:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    invoke-virtual {v12, v8}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Landroid/app/ActivityThread;->applyCompatConfiguration(II)Landroid/content/res/Configuration;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v12}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5751
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5753
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    move-result-object v4

    .line 5756
    .local v4, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    const/16 v12, 0x3e9

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v6}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;I)V

    .line 5758
    invoke-static {v6}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    .line 5760
    if-eqz v4, :cond_2

    .line 5761
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5762
    .local v1, "N":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    if-ge v11, v1, :cond_2

    .line 5763
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ComponentCallbacks2;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/res/Configuration;

    invoke-static {v12, v13}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V

    .line 5762
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 5767
    .end local v1    # "N":I
    .end local v4    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    .end local v11    # "j":I
    :cond_7
    if-eqz v7, :cond_b

    .line 5768
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 5769
    .local v2, "NSVC":I
    const/4 v12, 0x4

    new-array v3, v12, [Landroid/content/res/Configuration;

    .line 5770
    .local v3, "arrayType":[Landroid/content/res/Configuration;
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/Configuration;

    .line 5771
    .local v5, "config":Landroid/content/res/Configuration;
    if-eqz v5, :cond_8

    iget v12, v5, Landroid/content/res/Configuration;->displayId:I

    aput-object v5, v3, v12

    goto :goto_3

    .line 5773
    .end local v5    # "config":Landroid/content/res/Configuration;
    :cond_9
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v2, :cond_b

    .line 5774
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v12, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Landroid/inputmethodservice/InputMethodService;

    if-eqz v12, :cond_a

    .line 5775
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v12, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/inputmethodservice/InputMethodService;

    .line 5776
    .local v10, "ims":Landroid/inputmethodservice/InputMethodService;
    invoke-virtual {v10, v3}, Landroid/inputmethodservice/InputMethodService;->onConfiguratinChangedForAllDisplays([Landroid/content/res/Configuration;)V

    .line 5773
    .end local v10    # "ims":Landroid/inputmethodservice/InputMethodService;
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 5780
    .end local v2    # "NSVC":I
    .end local v3    # "arrayType":[Landroid/content/res/Configuration;
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_b
    return-void
.end method

.method final handleDispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 6
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    .prologue
    .line 5917
    const/4 v0, 0x0

    .line 5918
    .local v0, "hasPkgInfo":Z
    if-eqz p2, :cond_3

    .line 5919
    iget-object v4, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v4

    .line 5920
    :try_start_0
    array-length v3, p2

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 5922
    if-nez v0, :cond_0

    .line 5924
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    aget-object v5, p2, v1

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 5925
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5926
    const/4 v0, 0x1

    .line 5934
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_0
    :goto_1
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    aget-object v5, p2, v1

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5935
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    aget-object v5, p2, v1

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5920
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5928
    .restart local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_1
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    aget-object v5, p2, v1

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 5929
    .restart local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5930
    const/4 v0, 0x1

    goto :goto_1

    .line 5937
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5939
    .end local v1    # "i":I
    :cond_3
    invoke-static {p1, p2, v0}, Landroid/app/ApplicationPackageManager;->handlePackageBroadcast(I[Ljava/lang/String;Z)V

    .line 5941
    return-void

    .line 5937
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method final handleForceCallResumeActivity(Landroid/os/IBinder;Z)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "clearHide"    # Z

    .prologue
    .line 4214
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v3

    .line 4216
    .local v3, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v3, :cond_0

    .line 4217
    iget-object v0, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4224
    .local v0, "a":Landroid/app/Activity;
    iget-boolean v6, v0, Landroid/app/Activity;->mStartedActivity:Z

    if-nez v6, :cond_1

    const/4 v4, 0x1

    .line 4226
    .local v4, "willBeVisible":Z
    :goto_0
    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v6, v6, Landroid/app/Activity;->mFinished:Z

    if-nez v6, :cond_0

    if-eqz v4, :cond_0

    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v6, v6, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-boolean v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    if-nez v6, :cond_0

    .line 4228
    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 4229
    .local v2, "l":Landroid/view/WindowManager$LayoutParams;
    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v6, v6, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v6, :cond_0

    .line 4230
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    .line 4231
    .local v5, "wm":Landroid/view/ViewManager;
    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 4232
    .local v1, "decor":Landroid/view/View;
    invoke-interface {v5, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4236
    .end local v0    # "a":Landroid/app/Activity;
    .end local v1    # "decor":Landroid/view/View;
    .end local v2    # "l":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "willBeVisible":Z
    .end local v5    # "wm":Landroid/view/ViewManager;
    :cond_0
    return-void

    .line 4224
    .restart local v0    # "a":Landroid/app/Activity;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public handleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 3536
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 3538
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/pm/ProviderInfo;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3540
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3542
    return-void

    .line 3540
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method final handleLowMemory()V
    .locals 6

    .prologue
    .line 5944
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5946
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5947
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 5948
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentCallbacks2;

    invoke-interface {v4}, Landroid/content/ComponentCallbacks2;->onLowMemory()V

    .line 5947
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5952
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_1

    .line 5953
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    move-result v3

    .line 5954
    .local v3, "sqliteReleased":I
    const v4, 0x124fb

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 5958
    .end local v3    # "sqliteReleased":I
    :cond_1
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 5961
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 5963
    const-string/jumbo v4, "mem"

    invoke-static {v4}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 5964
    return-void
.end method

.method public handleOnBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "visible"    # Z

    .prologue
    .line 3529
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3530
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    .line 3531
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->onBackgroundVisibleBehindChanged(Z)V

    .line 3533
    :cond_0
    return-void
.end method

.method final handleProfilerControl(ZLandroid/app/ProfilerInfo;I)V
    .locals 4
    .param p1, "start"    # Z
    .param p2, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p3, "profileType"    # I

    .prologue
    .line 5866
    if-eqz p1, :cond_0

    .line 5870
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v1, p2}, Landroid/app/ActivityThread$Profiler;->setProfiler(Landroid/app/ProfilerInfo;)V

    .line 5871
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v1}, Landroid/app/ActivityThread$Profiler;->startProfiling()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5879
    :try_start_1
    iget-object v1, p2, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5891
    :goto_0
    return-void

    .line 5880
    :catch_0
    move-exception v0

    .line 5881
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ActivityThread"

    const-string v2, "Failure closing profile fd"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5874
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 5875
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profiling failed on path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- can the process access this path?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5879
    :try_start_3
    iget-object v1, p2, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 5880
    :catch_2
    move-exception v0

    .line 5881
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ActivityThread"

    const-string v2, "Failure closing profile fd"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5878
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 5879
    :try_start_4
    iget-object v2, p2, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 5882
    :goto_1
    throw v1

    .line 5880
    :catch_3
    move-exception v0

    .line 5881
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "ActivityThread"

    const-string v3, "Failure closing profile fd"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 5887
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v1}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    goto :goto_0
.end method

.method public handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V
    .locals 10
    .param p1, "cmd"    # Landroid/app/ActivityThread$RequestAssistContextExtras;

    .prologue
    .line 3449
    iget-object v1, p0, Landroid/app/ActivityThread;->mLastAssistStructure:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 3450
    iget-object v1, p0, Landroid/app/ActivityThread;->mLastAssistStructure:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/assist/AssistStructure;

    .line 3451
    .local v3, "structure":Landroid/app/assist/AssistStructure;
    if-eqz v3, :cond_0

    .line 3452
    invoke-virtual {v3}, Landroid/app/assist/AssistStructure;->clearSendChannel()V

    .line 3455
    .end local v3    # "structure":Landroid/app/assist/AssistStructure;
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3456
    .local v2, "data":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 3457
    .restart local v3    # "structure":Landroid/app/assist/AssistStructure;
    new-instance v4, Landroid/app/assist/AssistContent;

    invoke-direct {v4}, Landroid/app/assist/AssistContent;-><init>()V

    .line 3458
    .local v4, "content":Landroid/app/assist/AssistContent;
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v9, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->activityToken:Landroid/os/IBinder;

    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3459
    .local v8, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v5, 0x0

    .line 3460
    .local v5, "referrer":Landroid/net/Uri;
    if-eqz v8, :cond_2

    .line 3461
    iget-object v1, v8, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v9, v8, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v9, v2}, Landroid/app/Application;->dispatchOnProvideAssistData(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 3462
    iget-object v1, v8, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->onProvideAssistData(Landroid/os/Bundle;)V

    .line 3463
    iget-object v1, v8, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v5

    .line 3464
    iget v1, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    const/4 v9, 0x1

    if-ne v1, v9, :cond_2

    .line 3465
    new-instance v3, Landroid/app/assist/AssistStructure;

    .end local v3    # "structure":Landroid/app/assist/AssistStructure;
    iget-object v1, v8, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-direct {v3, v1}, Landroid/app/assist/AssistStructure;-><init>(Landroid/app/Activity;)V

    .line 3466
    .restart local v3    # "structure":Landroid/app/assist/AssistStructure;
    iget-object v1, v8, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 3467
    .local v6, "activityIntent":Landroid/content/Intent;
    if-eqz v6, :cond_4

    iget-object v1, v8, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v1, :cond_1

    iget-object v1, v8, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x2000

    if-nez v1, :cond_4

    .line 3470
    :cond_1
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3471
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, -0x43

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3473
    invoke-virtual {v7}, Landroid/content/Intent;->removeUnsafeExtras()V

    .line 3474
    invoke-virtual {v4, v7}, Landroid/app/assist/AssistContent;->setDefaultIntent(Landroid/content/Intent;)V

    .line 3478
    .end local v7    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v1, v8, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->onProvideAssistContent(Landroid/app/assist/AssistContent;)V

    .line 3481
    .end local v6    # "activityIntent":Landroid/content/Intent;
    :cond_2
    if-nez v3, :cond_3

    .line 3482
    new-instance v3, Landroid/app/assist/AssistStructure;

    .end local v3    # "structure":Landroid/app/assist/AssistStructure;
    invoke-direct {v3}, Landroid/app/assist/AssistStructure;-><init>()V

    .line 3484
    .restart local v3    # "structure":Landroid/app/assist/AssistStructure;
    :cond_3
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/app/ActivityThread;->mLastAssistStructure:Ljava/lang/ref/WeakReference;

    .line 3485
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3487
    .local v0, "mgr":Landroid/app/IActivityManager;
    :try_start_0
    iget-object v1, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestToken:Landroid/os/IBinder;

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3490
    :goto_1
    return-void

    .line 3476
    .end local v0    # "mgr":Landroid/app/IActivityManager;
    .restart local v6    # "activityIntent":Landroid/content/Intent;
    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v1}, Landroid/app/assist/AssistContent;->setDefaultIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 3488
    .end local v6    # "activityIntent":Landroid/content/Intent;
    .restart local v0    # "mgr":Landroid/app/IActivityManager;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method final handleResumeActivity(Landroid/os/IBinder;ZZZ)V
    .locals 14
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "clearHide"    # Z
    .param p3, "isForward"    # Z
    .param p4, "reallyResume"    # Z

    .prologue
    .line 4242
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 4243
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 4246
    invoke-virtual/range {p0 .. p2}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v7

    .line 4248
    .local v7, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v7, :cond_12

    .line 4249
    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 4256
    .local v0, "a":Landroid/app/Activity;
    if-eqz p3, :cond_a

    const/16 v4, 0x100

    .line 4262
    .local v4, "forwardBit":I
    :goto_0
    iget-boolean v10, v0, Landroid/app/Activity;->mStartedActivity:Z

    if-nez v10, :cond_b

    const/4 v8, 0x1

    .line 4263
    .local v8, "willBeVisible":Z
    :goto_1
    if-nez v8, :cond_0

    .line 4265
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/app/IActivityManager;->willActivityBeVisible(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v8

    .line 4270
    :cond_0
    :goto_2
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-nez v10, :cond_10

    iget-boolean v10, v0, Landroid/app/Activity;->mFinished:Z

    if-nez v10, :cond_10

    if-eqz v8, :cond_10

    .line 4271
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    iput-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 4272
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 4273
    .local v3, "decor":Landroid/view/View;
    const/4 v10, 0x4

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 4274
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    .line 4275
    .local v9, "wm":Landroid/view/ViewManager;
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 4276
    .local v6, "l":Landroid/view/WindowManager$LayoutParams;
    iput-object v3, v0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 4277
    const/4 v10, 0x1

    iput v10, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4278
    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/2addr v10, v4

    iput v10, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 4283
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v10, :cond_c

    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 4284
    .local v2, "applicationMetaData":Landroid/os/Bundle;
    :goto_3
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v10, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 4286
    .local v1, "activityMetaData":Landroid/os/Bundle;
    if-eqz v2, :cond_f

    .line 4287
    const-string/jumbo v10, "vr_only"

    const-string v11, "com.samsung.android.vr.application.mode"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 4288
    const/4 v5, 0x1

    .line 4299
    .local v5, "isVRActivity":Z
    :goto_4
    if-eqz v5, :cond_1

    const-string/jumbo v10, "sys.hmt.connected"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 4301
    const/16 v10, 0x61

    iput v10, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4302
    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v11, 0x480000

    or-int/2addr v10, v11

    iput v10, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4323
    :cond_1
    iget-boolean v10, v0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v10, :cond_2

    .line 4324
    const/4 v10, 0x1

    iput-boolean v10, v0, Landroid/app/Activity;->mWindowAdded:Z

    .line 4325
    invoke-interface {v9, v3, v6}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4346
    .end local v1    # "activityMetaData":Landroid/os/Bundle;
    .end local v2    # "applicationMetaData":Landroid/os/Bundle;
    .end local v3    # "decor":Landroid/view/View;
    .end local v5    # "isVRActivity":Z
    .end local v6    # "l":Landroid/view/WindowManager$LayoutParams;
    .end local v9    # "wm":Landroid/view/ViewManager;
    :cond_2
    :goto_5
    invoke-static {v7}, Landroid/app/ActivityThread;->cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4350
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v10, v10, Landroid/app/Activity;->mFinished:Z

    if-nez v10, :cond_7

    if-eqz v8, :cond_7

    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v10, v10, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v10, :cond_7

    iget-boolean v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    if-nez v10, :cond_7

    .line 4363
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    if-eqz v10, :cond_4

    .line 4364
    # getter for: Landroid/app/ActivityThread$ActivityClientRecord;->tmpConfig:Landroid/content/res/Configuration;
    invoke-static {v7}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4500(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v11, v7, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    invoke-virtual {v10, v11}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 4365
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v10, :cond_3

    sget-object v10, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v11, v7, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v10, v11}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 4367
    sget-boolean v10, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v10, :cond_11

    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v10}, Landroid/content/res/Configuration;->isStackOverrideConfig()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 4369
    # getter for: Landroid/app/ActivityThread$ActivityClientRecord;->tmpConfig:Landroid/content/res/Configuration;
    invoke-static {v7}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4500(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v11, v7, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v10, v11}, Landroid/content/res/Configuration;->updateFromStackOverrideConfig(Landroid/content/res/Configuration;)I

    .line 4377
    :cond_3
    :goto_6
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    # getter for: Landroid/app/ActivityThread$ActivityClientRecord;->tmpConfig:Landroid/content/res/Configuration;
    invoke-static {v7}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4500(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V

    .line 4378
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v10, v10, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    # getter for: Landroid/app/ActivityThread$ActivityClientRecord;->tmpConfig:Landroid/content/res/Configuration;
    invoke-static {v7}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4500(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v10

    invoke-static {v10}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    .line 4379
    const/4 v10, 0x0

    iput-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    .line 4383
    :cond_4
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 4384
    .restart local v6    # "l":Landroid/view/WindowManager$LayoutParams;
    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v10, v10, 0x100

    if-eq v10, v4, :cond_5

    .line 4387
    iget v10, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v10, v10, -0x101

    or-int/2addr v10, v4

    iput v10, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 4390
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v10, v10, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v10, :cond_5

    .line 4391
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    .line 4392
    .restart local v9    # "wm":Landroid/view/ViewManager;
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 4393
    .restart local v3    # "decor":Landroid/view/View;
    invoke-interface {v9, v3, v6}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4404
    .end local v3    # "decor":Landroid/view/View;
    .end local v9    # "wm":Landroid/view/ViewManager;
    :cond_5
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 4405
    iget v10, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 4406
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v10, v10, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v10, :cond_6

    .line 4407
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->makeVisible()V

    .line 4411
    :cond_6
    iget-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/Window;->onVisibilityChanged(Z)V

    .line 4416
    .end local v6    # "l":Landroid/view/WindowManager$LayoutParams;
    :cond_7
    iget-boolean v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    if-nez v10, :cond_8

    .line 4417
    iget-object v10, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    iput-object v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4418
    iput-object v7, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4421
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v10

    new-instance v11, Landroid/app/ActivityThread$Idler;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Landroid/app/ActivityThread$Idler;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V

    invoke-virtual {v10, v11}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 4423
    :cond_8
    const/4 v10, 0x0

    iput-boolean v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 4426
    if-eqz p4, :cond_9

    .line 4428
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    invoke-interface {v10, p1}, Landroid/app/IActivityManager;->activityResumed(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4442
    .end local v0    # "a":Landroid/app/Activity;
    .end local v4    # "forwardBit":I
    .end local v8    # "willBeVisible":Z
    :cond_9
    :goto_7
    return-void

    .line 4256
    .restart local v0    # "a":Landroid/app/Activity;
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 4262
    .restart local v4    # "forwardBit":I
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 4283
    .restart local v3    # "decor":Landroid/view/View;
    .restart local v6    # "l":Landroid/view/WindowManager$LayoutParams;
    .restart local v8    # "willBeVisible":Z
    .restart local v9    # "wm":Landroid/view/ViewManager;
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 4289
    .restart local v1    # "activityMetaData":Landroid/os/Bundle;
    .restart local v2    # "applicationMetaData":Landroid/os/Bundle;
    :cond_d
    const-string v10, "dual"

    const-string v11, "com.samsung.android.vr.application.mode"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    if-eqz v1, :cond_e

    const-string v10, "com.samsung.android.vr.activity"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 4291
    const/4 v5, 0x1

    .restart local v5    # "isVRActivity":Z
    goto/16 :goto_4

    .line 4293
    .end local v5    # "isVRActivity":Z
    :cond_e
    const/4 v5, 0x0

    .restart local v5    # "isVRActivity":Z
    goto/16 :goto_4

    .line 4296
    .end local v5    # "isVRActivity":Z
    :cond_f
    const/4 v5, 0x0

    .restart local v5    # "isVRActivity":Z
    goto/16 :goto_4

    .line 4339
    .end local v1    # "activityMetaData":Landroid/os/Bundle;
    .end local v2    # "applicationMetaData":Landroid/os/Bundle;
    .end local v3    # "decor":Landroid/view/View;
    .end local v5    # "isVRActivity":Z
    .end local v6    # "l":Landroid/view/WindowManager$LayoutParams;
    .end local v9    # "wm":Landroid/view/ViewManager;
    :cond_10
    if-nez v8, :cond_2

    .line 4342
    const/4 v10, 0x1

    iput-boolean v10, v7, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    goto/16 :goto_5

    .line 4372
    :cond_11
    # getter for: Landroid/app/ActivityThread$ActivityClientRecord;->tmpConfig:Landroid/content/res/Configuration;
    invoke-static {v7}, Landroid/app/ActivityThread$ActivityClientRecord;->access$4500(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v11, v7, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v10, v11}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    goto/16 :goto_6

    .line 4437
    .end local v0    # "a":Landroid/app/Activity;
    .end local v4    # "forwardBit":I
    .end local v8    # "willBeVisible":Z
    :cond_12
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface {v10, p1, v11, v12, v13}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    .line 4439
    :catch_0
    move-exception v10

    goto :goto_7

    .line 4429
    .restart local v0    # "a":Landroid/app/Activity;
    .restart local v4    # "forwardBit":I
    .restart local v8    # "willBeVisible":Z
    :catch_1
    move-exception v10

    goto :goto_7

    .line 4267
    :catch_2
    move-exception v10

    goto/16 :goto_2
.end method

.method public handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "drawComplete"    # Z

    .prologue
    .line 3493
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3494
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    .line 3495
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->onTranslucentConversionComplete(Z)V

    .line 3497
    :cond_0
    return-void
.end method

.method final handleTrimMemory(I)V
    .locals 5
    .param p1, "level"    # I

    .prologue
    .line 5969
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5971
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5972
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 5973
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentCallbacks2;

    invoke-interface {v3, p1}, Landroid/content/ComponentCallbacks2;->onTrimMemory(I)V

    .line 5972
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5976
    :cond_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    .line 5977
    return-void
.end method

.method final handleUnstableProviderDied(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "provider"    # Landroid/os/IBinder;
    .param p2, "fromClient"    # Z

    .prologue
    .line 6635
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 6636
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityThread;->handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V

    .line 6637
    monitor-exit v1

    .line 6638
    return-void

    .line 6637
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V
    .locals 6
    .param p1, "provider"    # Landroid/os/IBinder;
    .param p2, "fromClient"    # Z

    .prologue
    .line 6641
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderRefCount;

    .line 6642
    .local v2, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v2, :cond_2

    .line 6645
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6646
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 6647
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 6648
    .local v1, "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v3}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 6649
    const-string v3, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing dead content provider:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6650
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 6646
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6654
    .end local v1    # "pr":Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_1
    if-eqz p2, :cond_2

    .line 6661
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, v2, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v4, v4, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->unstableProviderDied(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6668
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 6663
    .restart local v0    # "i":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2633
    monitor-enter p0

    .line 2634
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/ContextImpl;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    .line 2637
    new-instance v0, Landroid/app/ActivityThread$Profiler;

    invoke-direct {v0}, Landroid/app/ActivityThread$Profiler;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    .line 2638
    monitor-exit p0

    .line 2639
    return-void

    .line 2638
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final installSystemProviders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6961
    .local p1, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    if-eqz p1, :cond_0

    .line 6962
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-direct {p0, v0, p1}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    .line 6964
    :cond_0
    return-void
.end method

.method public isFixedOrientationCascade(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 7338
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v1, :cond_1

    .line 7339
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 7340
    if-eqz p1, :cond_0

    .line 7341
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 7342
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    invoke-direct {p0, v0}, Landroid/app/ActivityThread;->isFixedOrientationCascadeInner(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v1

    monitor-exit v2

    .line 7346
    .end local v0    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :goto_0
    return v1

    .line 7344
    :cond_0
    monitor-exit v2

    .line 7346
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 7344
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isProfiling()Z
    .locals 1

    .prologue
    .line 2597
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectiveOrientationState(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 7373
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v1, :cond_1

    .line 7374
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 7375
    if-eqz p1, :cond_0

    .line 7376
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 7377
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    invoke-direct {p0, v0}, Landroid/app/ActivityThread;->isSelectiveOrientationStateInner(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v1

    monitor-exit v2

    .line 7381
    .end local v0    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :goto_0
    return v1

    .line 7379
    :cond_0
    monitor-exit v2

    .line 7381
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 7379
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSystemThread()Z
    .locals 1

    .prologue
    .line 7563
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    return v0
.end method

.method public isTouchBlocked(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 7266
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 7267
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 7268
    const/4 v0, 0x0

    .line 7269
    .local v0, "currentRecord":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz p1, :cond_1

    .line 7270
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 7271
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v2, :cond_0

    iget-boolean v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v3, :cond_0

    .line 7272
    move-object v0, v2

    .line 7285
    .end local v2    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_3

    .line 7286
    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->isTouchBlocked()Z

    move-result v3

    monitor-exit v4

    .line 7290
    .end local v0    # "currentRecord":Landroid/app/ActivityThread$ActivityClientRecord;
    :goto_1
    return v3

    .line 7275
    .restart local v0    # "currentRecord":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_1
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_0

    .line 7276
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 7277
    .restart local v2    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v2, :cond_2

    iget-boolean v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v3, :cond_2

    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->hasStackFocus()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7279
    move-object v0, v2

    .line 7280
    goto :goto_0

    .line 7275
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 7289
    .end local v0    # "currentRecord":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v1    # "i":I
    .end local v2    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_3
    monitor-exit v4

    .line 7290
    const/4 v3, 0x0

    goto :goto_1

    .line 7289
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public isValidToken(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 2981
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .prologue
    .line 3500
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3501
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    .line 3502
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->onNewActivityOptions(Landroid/app/ActivityOptions;)V

    .line 3504
    :cond_0
    return-void
.end method

.method public final peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "includeCode"    # Z

    .prologue
    .line 2524
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v2

    .line 2526
    if-eqz p2, :cond_0

    .line 2527
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 2531
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoadedApk;

    :goto_1
    monitor-exit v2

    return-object v1

    .line 2529
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .restart local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_0

    .line 2531
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 2532
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final performDestroyActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finishing"    # Z

    .prologue
    const/4 v0, 0x0

    .line 4973
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v0

    return-object v0
.end method

.method public final performNewIntents(Landroid/os/IBinder;Ljava/util/List;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3429
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3430
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_1

    .line 3431
    iget-boolean v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v4, :cond_2

    move v1, v2

    .line 3432
    .local v1, "resumed":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 3433
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v2, v4, Landroid/app/Activity;->mTemporaryPause:Z

    .line 3434
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 3436
    :cond_0
    invoke-direct {p0, v0, p2}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 3437
    if-eqz v1, :cond_1

    .line 3438
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->performResume()V

    .line 3439
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v3, v2, Landroid/app/Activity;->mTemporaryPause:Z

    .line 3442
    .end local v1    # "resumed":Z
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 3431
    goto :goto_0
.end method

.method final performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZ)Landroid/os/Bundle;
    .locals 10
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finished"    # Z
    .param p3, "saveState"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 4551
    iget-boolean v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-eqz v4, :cond_1

    .line 4552
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    if-eqz v4, :cond_0

    .line 4605
    :goto_0
    return-object v5

    .line 4558
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Performing pause of activity that is not resumed: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 4561
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v4, "ActivityThread"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4563
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    if-eqz p2, :cond_2

    .line 4564
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v9, v4, Landroid/app/Activity;->mFinished:Z

    .line 4568
    :cond_2
    :try_start_0
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    if-nez v4, :cond_3

    if-eqz p3, :cond_3

    .line 4569
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callCallActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 4572
    :cond_3
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/app/Activity;->mCalled:Z

    .line 4573
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v6}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 4574
    const/16 v4, 0x7545

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4576
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mCalled:Z

    if-nez v4, :cond_4

    .line 4577
    new-instance v4, Landroid/util/SuperNotCalledException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " did not call through to super.onPause()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/util/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4582
    :catch_0
    move-exception v0

    .line 4583
    .local v0, "e":Landroid/util/SuperNotCalledException;
    throw v0

    .line 4585
    .end local v0    # "e":Landroid/util/SuperNotCalledException;
    :catch_1
    move-exception v0

    .line 4586
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v6, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 4587
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to pause activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 4593
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    iput-boolean v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 4597
    iget-object v6, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 4598
    :try_start_1
    iget-object v4, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 4599
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4600
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4601
    .local v3, "size":I
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_6

    .line 4602
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/OnActivityPausedListener;

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-interface {v4, v6}, Landroid/app/OnActivityPausedListener;->onPaused(Landroid/app/Activity;)V

    .line 4601
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4599
    .end local v1    # "i":I
    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 4605
    .restart local v1    # "i":I
    .restart local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    .restart local v3    # "size":I
    :cond_6
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    if-nez v4, :cond_7

    if-eqz p3, :cond_7

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    :goto_2
    move-object v5, v4

    goto/16 :goto_0

    :cond_7
    move-object v4, v5

    goto :goto_2
.end method

.method final performPauseActivity(Landroid/os/IBinder;ZZ)Landroid/os/Bundle;
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "finished"    # Z
    .param p3, "saveState"    # Z

    .prologue
    .line 4545
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4546
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZ)Landroid/os/Bundle;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final performRestartActivity(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 4796
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4797
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v1, :cond_0

    .line 4798
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->performRestart()V

    .line 4799
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 4801
    :cond_0
    return-void
.end method

.method public final performResumeActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "clearHide"    # Z

    .prologue
    const/4 v4, 0x0

    .line 4125
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4128
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v2, :cond_4

    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mFinished:Z

    if-nez v3, :cond_4

    .line 4129
    if-eqz p2, :cond_0

    .line 4130
    iput-boolean v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 4131
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v4, v3, Landroid/app/Activity;->mStartedActivity:Z

    .line 4134
    :cond_0
    :try_start_0
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->onStateNotSaved()V

    .line 4135
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v3, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 4136
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 4137
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-direct {p0, v2, v3}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 4138
    const/4 v3, 0x0

    iput-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 4140
    :cond_1
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 4141
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-direct {p0, v2, v3}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 4142
    const/4 v3, 0x0

    iput-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 4144
    :cond_2
    iget-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->performResume()V

    .line 4146
    const/16 v3, 0x7546

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4149
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 4150
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 4151
    const/4 v3, 0x0

    iput-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 4152
    const/4 v3, 0x0

    iput-object v3, v2, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4162
    :cond_3
    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportAppLock()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4163
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 4164
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0xbb8

    iput v3, v1, Landroid/os/Message;->what:I

    .line 4165
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4166
    iget-object v3, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v3, v1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 4170
    .end local v1    # "msg":Landroid/os/Message;
    :cond_4
    return-object v2

    .line 4153
    :catch_0
    move-exception v0

    .line 4154
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 4155
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to resume activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method final performStopActivity(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "saveState"    # Z

    .prologue
    .line 4609
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 4610
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p2}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;ZZ)V

    .line 4611
    return-void
.end method

.method final performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 2
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .prologue
    .line 4540
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnUserLeaving(Landroid/app/Activity;)V

    .line 4541
    return-void
.end method

.method public registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Landroid/app/OnActivityPausedListener;

    .prologue
    .line 2922
    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 2923
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2924
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    if-nez v0, :cond_0

    .line 2925
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2926
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2928
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2929
    monitor-exit v2

    .line 2930
    return-void

    .line 2929
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final releaseProvider(Landroid/content/IContentProvider;Z)Z
    .locals 10
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "stable"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 6503
    if-nez p1, :cond_0

    .line 6587
    :goto_0
    return v5

    .line 6507
    :cond_0
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 6508
    .local v0, "jBinder":Landroid/os/IBinder;
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 6509
    :try_start_0
    iget-object v7, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    .line 6510
    .local v3, "prc":Landroid/app/ActivityThread$ProviderRefCount;
    if-nez v3, :cond_1

    .line 6512
    monitor-exit v6

    goto :goto_0

    .line 6588
    .end local v3    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 6515
    .restart local v3    # "prc":Landroid/app/ActivityThread$ProviderRefCount;
    :cond_1
    const/4 v1, 0x0

    .line 6516
    .local v1, "lastRef":Z
    if-eqz p2, :cond_7

    .line 6517
    :try_start_1
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-nez v7, :cond_2

    .line 6520
    monitor-exit v6

    goto :goto_0

    .line 6522
    :cond_2
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    .line 6523
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-nez v7, :cond_4

    .line 6530
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_6

    move v1, v4

    .line 6536
    :goto_1
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v8, v8, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    const/4 v9, -0x1

    if-eqz v1, :cond_3

    move v5, v4

    :cond_3
    invoke-interface {v7, v8, v9, v5}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6569
    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    .line 6570
    :try_start_3
    iget-boolean v5, v3, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-nez v5, :cond_a

    .line 6580
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    .line 6581
    iget-object v5, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v7, 0x83

    invoke-virtual {v5, v7, v3}, Landroid/app/ActivityThread$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 6582
    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v5, v2}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 6587
    .end local v2    # "msg":Landroid/os/Message;
    :cond_5
    :goto_3
    monitor-exit v6

    move v5, v4

    goto :goto_0

    :cond_6
    move v1, v5

    .line 6530
    goto :goto_1

    .line 6543
    :cond_7
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-nez v7, :cond_8

    .line 6546
    monitor-exit v6

    goto :goto_0

    .line 6548
    :cond_8
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    .line 6549
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-nez v7, :cond_4

    .line 6553
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v7, :cond_9

    move v1, v4

    .line 6554
    :goto_4
    if-nez v1, :cond_4

    .line 6560
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v7, v7, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-interface {v5, v7, v8, v9}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 6562
    :catch_0
    move-exception v5

    goto :goto_2

    :cond_9
    move v1, v5

    .line 6553
    goto :goto_4

    .line 6584
    :cond_a
    :try_start_5
    const-string v5, "ActivityThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Duplicate remove pending of provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/IActivityManager$ContentProviderHolder;

    iget-object v8, v8, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 6538
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method public final requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;ZLcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p4, "configChanges"    # I
    .param p5, "notResumed"    # Z
    .param p6, "config"    # Landroid/content/res/Configuration;
    .param p7, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p8, "fromServer"    # Z
    .param p9, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p10, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;IZ",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/Configuration;",
            "Z",
            "Lcom/samsung/android/multiwindow/MultiWindowStyle;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 5161
    .local p2, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    const/4 v4, 0x0

    .line 5163
    .local v4, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v7, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v7

    .line 5164
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v6, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_a

    .line 5165
    iget-object v6, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5166
    .local v3, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    if-ne v6, p1, :cond_8

    .line 5167
    move-object v4, v3

    .line 5168
    if-eqz p2, :cond_0

    .line 5169
    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v6, :cond_6

    .line 5170
    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5175
    :cond_0
    :goto_1
    if-eqz p3, :cond_a

    .line 5176
    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-eqz v6, :cond_7

    .line 5177
    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-interface {v6, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    .line 5186
    .end local v3    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v4    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .local v5, "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :goto_2
    if-nez v5, :cond_9

    .line 5187
    :try_start_1
    new-instance v4, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v4}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5188
    .end local v5    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v4    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :try_start_2
    iput-object p1, v4, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 5189
    iput-object p2, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 5190
    iput-object p3, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 5193
    iget-object v6, v4, Landroid/app/ActivityThread$ActivityClientRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v8, 0x1

    move-object/from16 v0, p9

    invoke-virtual {v6, v0, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 5197
    move/from16 v0, p10

    iput v0, v4, Landroid/app/ActivityThread$ActivityClientRecord;->displayId:I

    .line 5199
    if-nez p8, :cond_2

    .line 5200
    iget-object v6, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 5201
    .local v1, "existing":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v1, :cond_1

    .line 5202
    iget-boolean v6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    iput-boolean v6, v4, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 5203
    iget-object v6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    iput-object v6, v4, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 5205
    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 5207
    .end local v1    # "existing":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_2
    iget-object v6, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5208
    const/16 v6, 0x7e

    invoke-direct {p0, v6, v4}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 5211
    :goto_3
    if-eqz p8, :cond_3

    .line 5212
    iput-boolean p5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 5213
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/app/ActivityThread$ActivityClientRecord;->onlyLocalRequest:Z

    .line 5215
    :cond_3
    if-eqz p6, :cond_4

    .line 5216
    iput-object p6, v4, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 5218
    :cond_4
    if-eqz p7, :cond_5

    .line 5219
    move-object/from16 v0, p7

    iput-object v0, v4, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    .line 5221
    :cond_5
    iget v6, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    or-int/2addr v6, p4

    iput v6, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    .line 5222
    monitor-exit v7

    .line 5223
    return-void

    .line 5172
    .restart local v3    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_6
    iput-object p2, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    goto :goto_1

    .line 5222
    .end local v3    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :catchall_0
    move-exception v6

    :goto_4
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 5179
    .restart local v3    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_7
    :try_start_3
    iput-object p3, v3, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v5, v4

    .end local v4    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v5    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    goto :goto_2

    .line 5164
    .end local v5    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v4    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 5222
    .end local v3    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v4    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v5    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v4    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    goto :goto_4

    .end local v4    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v5    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_9
    move-object v4, v5

    .end local v5    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v4    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    goto :goto_3

    :cond_a
    move-object v5, v4

    .end local v4    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v5    # "target":Landroid/app/ActivityThread$ActivityClientRecord;
    goto :goto_2
.end method

.method public final resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2943
    iget-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2945
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_0

    .line 2947
    const/4 v1, -0x2

    invoke-static {v1, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 2950
    :cond_0
    return-object v0
.end method

.method final scheduleContextCleanup(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/app/ContextImpl;
    .param p2, "who"    # Ljava/lang/String;
    .param p3, "what"    # Ljava/lang/String;

    .prologue
    .line 3027
    new-instance v0, Landroid/app/ActivityThread$ContextCleanupInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$ContextCleanupInfo;-><init>()V

    .line 3028
    .local v0, "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    iput-object p1, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    .line 3029
    iput-object p2, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    .line 3030
    iput-object p3, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    .line 3031
    const/16 v1, 0x77

    invoke-direct {p0, v1, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 3032
    return-void
.end method

.method scheduleGcIdler()V
    .locals 2

    .prologue
    .line 2649
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    if-nez v0, :cond_0

    .line 2650
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 2651
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2653
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 2654
    return-void
.end method

.method public final sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "resultCode"    # I
    .param p5, "data"    # Landroid/content/Intent;

    .prologue
    .line 2993
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2994
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v1, Landroid/app/ResultInfo;

    invoke-direct {v1, p2, p3, p4, p5}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2995
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v1, p1, v0}, Landroid/app/ActivityThread$ApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 2996
    return-void
.end method

.method public final startActivityNow(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/Activity$NonConfigurationInstances;)Landroid/app/Activity;
    .locals 2
    .param p1, "parent"    # Landroid/app/Activity;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "state"    # Landroid/os/Bundle;
    .param p7, "lastNonConfigurationInstances"    # Landroid/app/Activity$NonConfigurationInstances;

    .prologue
    .line 2956
    new-instance v0, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v0}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    .line 2957
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iput-object p5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 2958
    const/4 v1, 0x0

    iput v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    .line 2959
    iput-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 2960
    iput-object p6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 2961
    iput-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    .line 2962
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    .line 2963
    iput-object p4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2964
    iput-object p7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 2977
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    return-object v1
.end method

.method public unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Landroid/app/OnActivityPausedListener;

    .prologue
    .line 2934
    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 2935
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2936
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    if-eqz v0, :cond_0

    .line 2937
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2939
    :cond_0
    monitor-exit v2

    .line 2940
    return-void

    .line 2939
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unscheduleGcIdler()V
    .locals 2

    .prologue
    .line 2657
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    if-eqz v0, :cond_0

    .line 2658
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 2659
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2661
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 2662
    return-void
.end method