.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final COCKTAIL_BAR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.cocktailbar.CocktailBarManagerService"

.field private static final DIR_ENCRYPTION:Z

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final FRONT_LED_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.frontled.FrontLEDManagerService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_HS20_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.hs20.WifiHs20Service"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final is3LMAllowed:Z

.field private static final isMobilePaymentAllowed:Z

.field private static final isRLLAllowed:Z


# instance fields
.field private final isElasticEnabled:Z

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAlarmManagerService:Lcom/android/server/AlarmManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mMultiWindowFacadeService:Lcom/android/server/am/MultiWindowFacadeService;

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPluginManager:Landroid/app/epm/PluginManager;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field safeModeValueForTheme:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 349
    const-string/jumbo v0, "ro.sec.fle.encryption"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SystemServer;->DIR_ENCRYPTION:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->isElasticEnabled:Z

    .line 368
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 369
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 270
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/SystemServer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startThemeService()V

    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 535
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 536
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 537
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x103013f

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 538
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    invoke-static {}, Lmiui/patchrom/ClassHook;->initServerHook()V

    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    return-void
.end method

.method private performPendingShutdown()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 518
    const-string/jumbo v4, "sys.shutdown.requested"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 520
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 521
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    move v1, v3

    .line 524
    .local v1, "reboot":Z
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 525
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "reason":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    invoke-static {v3, v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 532
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "reboot":Z
    :cond_1
    return-void

    .line 527
    .restart local v1    # "reboot":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 513
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    return-void
.end method

.method private run()V
    .locals 11

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v10, 0x1

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 377
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 389
    :cond_0
    const-string/jumbo v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 390
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    .line 392
    .local v8, "languageTag":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.locale"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string/jumbo v0, "persist.sys.language"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string/jumbo v0, "persist.sys.country"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string/jumbo v0, "persist.sys.localevar"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .end local v8    # "languageTag":Ljava/lang/String;
    :cond_1
    const-string v0, "SystemServer"

    const-string v1, "!@Boot: Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 403
    const/16 v0, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 412
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string/jumbo v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 415
    .local v6, "cryptState":Ljava/lang/String;
    const-string/jumbo v0, "trigger_restart_min_framework"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 425
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 426
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 427
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 428
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 437
    :cond_3
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 441
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 445
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 449
    invoke-static {v10}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 452
    invoke-static {v10}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 459
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 460
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 463
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 467
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 470
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 473
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 474
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 478
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 479
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 480
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 490
    const-string v0, "SystemServer"

    const-string v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string v1, "com.samsung.galaxybetaservice"

    const/16 v2, 0x80

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 498
    .local v9, "mobileCareInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v9, :cond_5

    .line 499
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 500
    const-string/jumbo v0, "sys.mobilecare.preload"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 507
    .end local v9    # "mobileCareInfo":Landroid/content/pm/ApplicationInfo;
    :cond_5
    :goto_1
    const-string v0, "SystemServer"

    const-string v1, "!@Boot: Loop forever"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 509
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_6
    const-string/jumbo v0, "trigger_restart_min_framework"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 420
    invoke-static {}, Lcom/android/server/pm/PackagePrefetcher;->getInstance()Lcom/android/server/pm/PackagePrefetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackagePrefetcher;->prefetchPermissions()V

    .line 421
    invoke-static {}, Lcom/android/server/pm/PackagePrefetcher;->getInstance()Lcom/android/server/pm/PackagePrefetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackagePrefetcher;->prefetchPackages()V

    goto/16 :goto_0

    .line 482
    :catch_0
    move-exception v7

    .line 483
    .local v7, "ex":Ljava/lang/Throwable;
    const-string v0, "System"

    const-string v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const-string v0, "System"

    const-string v1, "************ Failure starting system services"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    throw v7

    .line 503
    .end local v7    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private startBootstrapServices()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 551
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    .line 554
    .local v1, "installer":Lcom/android/server/pm/Installer;
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 556
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 557
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 563
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 567
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 570
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/lights/LightsService;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 574
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 577
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 580
    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 582
    const-string v2, "SystemServer"

    const-string v4, "Detected encryption in progress - only parsing core apps"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 597
    :cond_0
    :goto_0
    const-string v2, "SystemServer"

    const-string v4, "Package Manager"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const-string v2, "SystemServer"

    const-string v4, "!@Boot: Start PackageManagerService"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    iget-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v4, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 601
    const-string v2, "SystemServer"

    const-string v3, "!@Boot: End PackageManagerService"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 603
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 605
    const-string v2, "SystemServer"

    const-string v3, "User Service"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const-string/jumbo v2, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 609
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 612
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 616
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 617
    return-void

    .line 584
    :cond_1
    const-string/jumbo v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 585
    const-string v2, "SystemServer"

    const-string v4, "Device encrypted - only parsing core apps"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_0

    .line 599
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 627
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 628
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 631
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getUsageStatsIfNoPackageUsageInfo()V

    .line 634
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 635
    return-void
.end method

.method private static final startDpmService(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2647
    const/4 v4, 0x0

    .line 2648
    .local v4, "dpmObj":Ljava/lang/Object;
    :try_start_0
    const-string/jumbo v6, "persist.dpm.feature"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2649
    .local v3, "dpmFeature":I
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DPM configuration set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    if-lez v3, :cond_0

    const/16 v6, 0x10

    if-ge v3, v6, :cond_0

    .line 2652
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/com.qti.dpmframework.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2655
    .local v1, "dpmClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.qti.dpm.DpmService"

    invoke-virtual {v1, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2656
    .local v0, "dpmClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 2658
    .local v2, "dpmConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 2660
    if-eqz v4, :cond_0

    :try_start_1
    instance-of v6, v4, Landroid/os/IBinder;

    if-eqz v6, :cond_0

    .line 2661
    const-string/jumbo v6, "dpmservice"

    check-cast v4, Landroid/os/IBinder;

    .end local v4    # "dpmObj":Ljava/lang/Object;
    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2662
    const-string v6, "SystemServer"

    const-string v7, "Created DPM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2671
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    :cond_0
    :goto_0
    return-void

    .line 2664
    .restart local v0    # "dpmClass":Ljava/lang/Class;
    .restart local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .restart local v3    # "dpmFeature":I
    :catch_0
    move-exception v5

    .line 2665
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "SystemServer"

    const-string/jumbo v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2668
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 2669
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string/jumbo v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static final startEmergencyModeService(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2703
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2706
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    .line 2707
    .local v1, "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->readyEmergencyMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2712
    .end local v1    # "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_1
    :goto_0
    return-void

    .line 2708
    :catch_0
    move-exception v0

    .line 2709
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SystemServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting emergency service failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static final startFingerprintService(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2685
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2686
    .local v2, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    if-eqz v2, :cond_0

    .line 2699
    :goto_0
    return-void

    .line 2690
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2691
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.fingerprint.service"

    const-string v5, "com.samsung.android.fingerprint.service.FingerprintServiceStarter"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2693
    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2695
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 2696
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SystemServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting fingerprint service failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startOtherServices()V
    .locals 208

    .prologue
    .line 645
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 646
    .local v5, "context":Landroid/content/Context;
    const/16 v42, 0x0

    .line 647
    .local v42, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v77, 0x0

    .line 648
    .local v77, "contentService":Lcom/android/server/content/ContentService;
    const/16 v194, 0x0

    .line 649
    .local v194, "vibrator":Lcom/android/server/VibratorService;
    const/16 v44, 0x0

    .line 650
    .local v44, "alarm":Landroid/app/IAlarmManager;
    const/16 v146, 0x0

    .line 651
    .local v146, "mountService":Landroid/os/storage/IMountService;
    const/4 v9, 0x0

    .line 652
    .local v9, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v8, 0x0

    .line 653
    .local v8, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v153, 0x0

    .line 654
    .local v153, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v68, 0x0

    .line 655
    .local v68, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v154, 0x0

    .line 656
    .local v154, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v177, 0x0

    .line 657
    .local v177, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v207, 0x0

    .line 658
    .local v207, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v192, 0x0

    .line 659
    .local v192, "usb":Lcom/android/server/usb/UsbService;
    const/16 v175, 0x0

    .line 660
    .local v175, "serial":Lcom/android/server/SerialService;
    const/16 v157, 0x0

    .line 661
    .local v157, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v65, 0x0

    .line 662
    .local v65, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v122, 0x0

    .line 663
    .local v122, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v181, 0x0

    .line 664
    .local v181, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v75, 0x0

    .line 666
    .local v75, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v86, 0x0

    .line 668
    .local v86, "dEncService":Lcom/android/server/DirEncryptService;
    const/16 v132, 0x0

    .line 669
    .local v132, "mHMS":Lcom/android/server/HarmonyEASService;
    const/16 v51, 0x0

    .line 670
    .local v51, "audioService":Lcom/android/server/audio/AudioService;
    const/16 v90, 0x0

    .line 671
    .local v90, "deviceManager":Lcom/android/server/DeviceManager3LMService;
    const/16 v110, 0x0

    .line 672
    .local v110, "extControlDevice":Lcom/sec/rll/ExtControlDeviceService;
    const/16 v143, 0x0

    .line 673
    .local v143, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v107, 0x0

    .line 674
    .local v107, "entropyMixer":Lcom/android/server/EntropyMixer;
    const/16 v54, 0x0

    .line 676
    .local v54, "cameraService":Lcom/android/server/camera/CameraService;
    const/16 v163, 0x0

    .line 678
    .local v163, "quickconnect":Lcom/android/server/QuickConnectService;
    const/16 v186, 0x0

    .line 679
    .local v186, "timaService":Lcom/android/server/TimaService;
    const/16 v184, 0x0

    .line 681
    .local v184, "timaObserver":Lcom/android/server/TimaObserver;
    const/16 v82, 0x0

    .line 684
    .local v82, "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    const/16 v134, 0x0

    .line 685
    .local v134, "mPersonaService":Lcom/android/server/pm/PersonaManagerService;
    const/16 v136, 0x0

    .line 689
    .local v136, "mRCPManagerService":Lcom/android/server/RCPManagerService;
    const/16 v173, 0x0

    .line 690
    .local v173, "sdpService":Lcom/android/server/SdpManagerService;
    const/16 v171, 0x0

    .line 693
    .local v171, "sdpLogService":Lcom/android/server/SdpLogService;
    const/16 v99, 0x0

    .line 696
    .local v99, "dlpService":Lcom/android/server/DLPManagerService;
    const/16 v88, 0x0

    .line 699
    .local v88, "dLSManager":Lcom/android/server/LSManager;
    const/16 v205, 0x0

    .line 709
    .local v205, "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    const-string v6, "config.disable_storage"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v97

    .line 710
    .local v97, "disableStorage":Z
    const-string v6, "config.disable_bluetooth"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v92

    .line 711
    .local v92, "disableBluetooth":Z
    const-string v6, "config.disable_location"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v93

    .line 712
    .local v93, "disableLocation":Z
    const-string v6, "config.disable_systemui"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v98

    .line 713
    .local v98, "disableSystemUI":Z
    const-string v6, "config.disable_noncore"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v96

    .line 714
    .local v96, "disableNonCoreServices":Z
    const-string v6, "config.disable_network"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v94

    .line 715
    .local v94, "disableNetwork":Z
    const-string v6, "config.disable_networktime"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v95

    .line 716
    .local v95, "disableNetworkTime":Z
    const-string/jumbo v6, "ro.kernel.qemu"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v125

    .line 721
    .local v125, "isEmulator":Z
    const/16 v91, 0x1

    .line 724
    .local v91, "disableAtlas":Z
    :try_start_0
    const-string v6, "SystemServer"

    const-string v7, "Reading configuration..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 727
    const-string v6, "SystemServer"

    const-string v7, "Scheduling Policy"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const-string/jumbo v6, "scheduling_policy"

    new-instance v7, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v7}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 730
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 732
    const-string v6, "SystemServer"

    const-string v7, "Telephony Registry"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    new-instance v182, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v182

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_89

    .line 734
    .end local v181    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v182, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string/jumbo v6, "telephony.registry"

    move-object/from16 v0, v182

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 736
    const-string v6, "SystemServer"

    const-string v7, "Entropy Mixer"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    new-instance v108, Lcom/android/server/EntropyMixer;

    move-object/from16 v0, v108

    invoke-direct {v0, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_8a

    .line 740
    .end local v107    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v108, "entropyMixer":Lcom/android/server/EntropyMixer;
    :try_start_2
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v193

    .line 741
    .local v193, "versionInfo":Landroid/os/Bundle;
    const-string v6, "2.0"

    const-string/jumbo v7, "version"

    move-object/from16 v0, v193

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v6

    if-eqz v6, :cond_0

    .line 743
    :try_start_3
    const-string v6, "SystemServer"

    const-string v7, "Persona Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getInstance()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v134

    .line 745
    const-string/jumbo v6, "persona"

    move-object/from16 v0, v134

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 756
    :cond_0
    :goto_0
    :try_start_4
    const-string v6, "SystemServer"

    const-string v7, "SEAMS"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const-string v6, "SEAMService"

    new-instance v7, Lcom/android/server/SEAMService;

    invoke-direct {v7, v5}, Lcom/android/server/SEAMService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 764
    :goto_1
    :try_start_5
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 766
    const-string v6, "SystemServer"

    const-string v7, "Camera Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/camera/CameraService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 772
    :try_start_6
    const-string v6, "SystemServer"

    const-string v7, "Account Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    new-instance v43, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v43

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 774
    .end local v42    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v43, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_7
    const-string v6, "account"

    move-object/from16 v0, v43

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_93
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_8b

    move-object/from16 v42, v43

    .line 780
    .end local v43    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v42    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_2
    :try_start_8
    const-string/jumbo v6, "ro.product.name"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v135

    .line 781
    .local v135, "mProductName":Ljava/lang/String;
    const-string/jumbo v6, "ktt"

    move-object/from16 v0, v135

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    move-result v6

    if-nez v6, :cond_1

    .line 784
    :try_start_9
    const-string v6, "SystemServer"

    const-string v7, "KT UCA Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const-string/jumbo v6, "ktuca"

    new-instance v7, Landroid/ktuca/KtUcaService;

    invoke-direct {v7, v5}, Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    .line 792
    :cond_1
    :goto_3
    :try_start_a
    const-string v6, "SystemServer"

    const-string v7, "Content Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_41

    const/4 v6, 0x1

    :goto_4
    invoke-static {v5, v6}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v77

    .line 798
    new-instance v87, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v87

    invoke-direct {v0, v5}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1

    .line 800
    .end local v86    # "dEncService":Lcom/android/server/DirEncryptService;
    .local v87, "dEncService":Lcom/android/server/DirEncryptService;
    :try_start_b
    sget-boolean v6, Lcom/android/server/SystemServer;->DIR_ENCRYPTION:Z

    if-eqz v6, :cond_2

    .line 801
    const-string v6, "DirEncryptService"

    move-object/from16 v0, v87

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_8c

    :cond_2
    move-object/from16 v86, v87

    .line 812
    .end local v87    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v86    # "dEncService":Lcom/android/server/DirEncryptService;
    :goto_5
    :try_start_c
    const-string v6, "SystemServer"

    const-string v7, "Hmmm.... let\'s try LSM ^^"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    new-instance v89, Lcom/android/server/LSManager;

    move-object/from16 v0, v89

    invoke-direct {v0, v5}, Lcom/android/server/LSManager;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_1

    .line 816
    .end local v88    # "dLSManager":Lcom/android/server/LSManager;
    .local v89, "dLSManager":Lcom/android/server/LSManager;
    :try_start_d
    const-string v6, "LSManager"

    move-object/from16 v0, v89

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_8d

    move-object/from16 v88, v89

    .line 825
    .end local v89    # "dLSManager":Lcom/android/server/LSManager;
    .restart local v88    # "dLSManager":Lcom/android/server/LSManager;
    :goto_6
    :try_start_e
    const-string v6, "SystemServer"

    const-string v7, "SecurityManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_1

    .line 827
    :try_start_f
    invoke-static {v5}, Lcom/android/server/SystemServer;->startSecurityManagerService(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_1

    .line 834
    :goto_7
    :try_start_10
    const-string v6, "SystemServer"

    const-string v7, "Reactive Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_1

    .line 836
    :try_start_11
    const-string v6, "ReactiveService"

    new-instance v7, Lcom/android/server/ReactiveService;

    invoke-direct {v7, v5}, Lcom/android/server/ReactiveService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_1

    .line 844
    :goto_8
    :try_start_12
    const-string v6, "SystemServer"

    const-string v7, "DeviceRootKeyService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1

    .line 846
    :try_start_13
    const-string v6, "DeviceRootKeyService"

    new-instance v7, Lcom/android/server/DeviceRootKeyService;

    invoke-direct {v7, v5}, Lcom/android/server/DeviceRootKeyService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1

    .line 855
    :goto_9
    :try_start_14
    const-string v6, "SystemServer"

    const-string v7, "EngineeringModeService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1

    .line 857
    :try_start_15
    const-string v6, "EngineeringModeService"

    new-instance v7, Lcom/android/server/EngineeringModeService;

    invoke-direct {v7, v5}, Lcom/android/server/EngineeringModeService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1

    .line 866
    :goto_a
    :try_start_16
    const-string v6, "SystemServer"

    const-string v7, "SATS: Secure AT Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1

    .line 868
    :try_start_17
    const-string v6, "SatsService"

    new-instance v7, Lcom/android/server/SatsService;

    invoke-direct {v7, v5}, Lcom/android/server/SatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_1

    .line 875
    :goto_b
    :try_start_18
    const-string v6, "SystemServer"

    const-string v7, "System Content Providers"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_1

    .line 878
    :try_start_19
    const-string/jumbo v6, "sedenial"

    new-instance v7, Lcom/android/server/SEDenialService;

    invoke-direct {v7, v5}, Lcom/android/server/SEDenialService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 879
    const-string v6, "SystemServer"

    const-string v7, "SEDenial service added"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_1

    .line 884
    :goto_c
    :try_start_1a
    const-string v6, "SystemServer"

    const-string v7, "Vibrator Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    new-instance v195, Lcom/android/server/VibratorService;

    move-object/from16 v0, v195

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_1

    .line 886
    .end local v194    # "vibrator":Lcom/android/server/VibratorService;
    .local v195, "vibrator":Lcom/android/server/VibratorService;
    :try_start_1b
    const-string/jumbo v6, "vibrator"

    move-object/from16 v0, v195

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 889
    sget-boolean v6, Lcom/samsung/android/toolbox/TwToolBoxService;->TOOLBOX_SUPPORT:Z

    if-eqz v6, :cond_3

    .line 890
    const-string v6, "SystemServer"

    const-string v7, "Tw ToolBox Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    new-instance v189, Lcom/samsung/android/toolbox/TwToolBoxService;

    move-object/from16 v0, v189

    invoke-direct {v0, v5}, Lcom/samsung/android/toolbox/TwToolBoxService;-><init>(Landroid/content/Context;)V

    .line 892
    .local v189, "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    const-string/jumbo v6, "tw_toolbox"

    move-object/from16 v0, v189

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 903
    .end local v189    # "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    :cond_3
    const-string v6, "1"

    const-string/jumbo v7, "ro.config.tima"

    const-string v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_e

    move-result v183

    .line 904
    .local v183, "timaEnabled":Z
    if-eqz v183, :cond_4

    .line 906
    :try_start_1c
    const-string v6, "SystemServer"

    const-string v7, "TIMA Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const/4 v6, -0x2

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 910
    new-instance v187, Lcom/android/server/TimaService;

    move-object/from16 v0, v187

    invoke-direct {v0, v5}, Lcom/android/server/TimaService;-><init>(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_e

    .line 911
    .end local v186    # "timaService":Lcom/android/server/TimaService;
    .local v187, "timaService":Lcom/android/server/TimaService;
    :try_start_1d
    const-string/jumbo v6, "tima"

    move-object/from16 v0, v187

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_92
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_8e

    move-object/from16 v186, v187

    .line 916
    .end local v187    # "timaService":Lcom/android/server/TimaService;
    .restart local v186    # "timaService":Lcom/android/server/TimaService;
    :goto_d
    const/16 v6, -0x13

    :try_start_1e
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_e

    .line 920
    :try_start_1f
    const-string v6, "SystemServer"

    const-string v7, "TIMA Observer"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    new-instance v185, Lcom/android/server/TimaObserver;

    move-object/from16 v0, v185

    invoke-direct {v0, v5}, Lcom/android/server/TimaObserver;-><init>(Landroid/content/Context;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_e

    .end local v184    # "timaObserver":Lcom/android/server/TimaObserver;
    .local v185, "timaObserver":Lcom/android/server/TimaObserver;
    move-object/from16 v184, v185

    .line 929
    .end local v185    # "timaObserver":Lcom/android/server/TimaObserver;
    .restart local v184    # "timaObserver":Lcom/android/server/TimaObserver;
    :goto_e
    :try_start_20
    const-string v6, "3.0"

    const-string/jumbo v7, "ro.config.timaversion"

    const-string v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v188

    .line 930
    .local v188, "timaversion":Z
    if-eqz v188, :cond_4

    .line 933
    const/16 v118, 0x0

    .line 934
    .local v118, "icccService":Lcom/android/server/IcccManagerService;
    new-instance v118, Lcom/android/server/IcccManagerService;

    .end local v118    # "icccService":Lcom/android/server/IcccManagerService;
    move-object/from16 v0, v118

    invoke-direct {v0, v5}, Lcom/android/server/IcccManagerService;-><init>(Landroid/content/Context;)V

    .line 935
    .restart local v118    # "icccService":Lcom/android/server/IcccManagerService;
    const-string/jumbo v6, "iccc"

    move-object/from16 v0, v118

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 937
    const-string v6, "SystemServer"

    const-string/jumbo v7, "initialization"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_e

    .line 939
    :try_start_21
    invoke-virtual/range {v118 .. v118}, Lcom/android/server/IcccManagerService;->TimaSetLicenseStatusJNI()I

    move-result v119

    .line 940
    .local v119, "iccc_result":I
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TimaSetLicenseStatusJNI result : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v119

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    if-nez v119, :cond_42

    .line 943
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "trustboot write result: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v10, -0xdfffff

    const/4 v11, 0x0

    move-object/from16 v0, v118

    invoke-virtual {v0, v10, v11}, Lcom/android/server/IcccManagerService;->Iccc_SaveData_Platform(II)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_e

    .line 956
    .end local v119    # "iccc_result":I
    :goto_f
    :try_start_22
    const-string v6, "com.sec.tima.TimaKeyStoreProvider"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v127

    .line 958
    .local v127, "keyStoreClass":Ljava/lang/Class;
    invoke-virtual/range {v127 .. v127}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/Provider;

    invoke-static {v6}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 959
    const-string v6, "SystemServer"

    const-string v7, "Added TimaKesytore provider"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    invoke-static {}, Lcom/sec/tima/keystore/util/Utility;->isFipsTimaEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 963
    const-string v6, "com.sec.tima.FipsTimaKeyStoreProvider"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v35

    .line 965
    .local v35, "FipsKeyStoreClass":Ljava/lang/Class;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/Provider;

    invoke-static {v6}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 966
    const-string v6, "SystemServer"

    const-string v7, "Added FipsTimaKesytore provider"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_e

    .line 977
    .end local v35    # "FipsKeyStoreClass":Ljava/lang/Class;
    .end local v118    # "icccService":Lcom/android/server/IcccManagerService;
    .end local v127    # "keyStoreClass":Ljava/lang/Class;
    .end local v188    # "timaversion":Z
    :cond_4
    :goto_10
    const/16 v104, 0x1

    .line 978
    .local v104, "enabledMDM":Z
    const/4 v6, 0x1

    move/from16 v0, v104

    if-ne v6, v0, :cond_5

    .line 979
    const/16 v103, 0x1

    .line 980
    .local v103, "enabledCEP":Z
    const/4 v6, 0x1

    move/from16 v0, v103

    if-ne v6, v0, :cond_43

    .line 982
    :try_start_23
    const-string v6, "SystemServer"

    const-string v7, "CEP Proxy KS Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    const-string v6, "cepproxyks"

    new-instance v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

    invoke-direct {v7, v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_e

    .line 992
    .end local v103    # "enabledCEP":Z
    :cond_5
    :goto_11
    :try_start_24
    const-string v6, "SystemServer"

    const-string v7, "Email Keystore Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const-string/jumbo v6, "emailksproxy"

    new-instance v7, Lcom/android/server/emailksproxy/EmailKeystoreService;

    invoke-direct {v7, v5}, Lcom/android/server/emailksproxy/EmailKeystoreService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_e

    .line 999
    :goto_12
    :try_start_25
    const-string v6, "SystemServer"

    const-string v7, "SSRM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_e

    .line 1001
    :try_start_26
    new-instance v56, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/ssrm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v56

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1002
    .local v56, "cfmsClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.android.server.ssrm.CustomFrequencyManagerService"

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v55

    .line 1003
    .local v55, "cfmsClass":Ljava/lang/Class;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    const/4 v7, 0x1

    const-class v10, Landroid/app/IActivityManager;

    aput-object v10, v6, v7

    move-object/from16 v0, v55

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v57

    .line 1004
    .local v57, "cfmsConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    aput-object v10, v6, v7

    move-object/from16 v0, v57

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v178

    check-cast v178, Landroid/os/IBinder;

    .line 1005
    .local v178, "ssrmService":Landroid/os/IBinder;
    const-string v6, "CustomFrequencyManagerService"

    move-object/from16 v0, v178

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_e

    .line 1011
    .end local v55    # "cfmsClass":Ljava/lang/Class;
    .end local v56    # "cfmsClassLoader":Ldalvik/system/PathClassLoader;
    .end local v57    # "cfmsConstructor":Ljava/lang/reflect/Constructor;
    .end local v178    # "ssrmService":Landroid/os/IBinder;
    :goto_13
    :try_start_27
    const-string v6, "SystemServer"

    const-string v7, "Consumer IR Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    new-instance v76, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v76

    invoke-direct {v0, v5}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_27} :catch_e

    .line 1013
    .end local v75    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v76, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_28
    const-string v6, "consumer_ir"

    move-object/from16 v0, v76

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mAlarmManagerService:Lcom/android/server/AlarmManagerService;

    .line 1016
    const-string v6, "alarm"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v44

    .line 1019
    const-string v6, "SystemServer"

    const-string v7, "Init Watchdog"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v201

    .line 1021
    .local v201, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v201

    invoke-virtual {v0, v5, v6}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 1023
    const-string v6, "SystemServer"

    const-string v7, "Input Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    new-instance v123, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v123

    invoke-direct {v0, v5}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_28} :catch_8f

    .line 1026
    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v123, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_29
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.feature.sensorhub"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1027
    const-string v6, "SystemServer"

    const-string v7, "Context Aware Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    const-string v6, "context_aware"

    new-instance v7, Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-direct {v7, v5}, Lcom/samsung/android/contextaware/manager/ContextAwareService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_29} :catch_16

    .line 1032
    :cond_6
    :try_start_2a
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.feature.sensorhub"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.feature.scontext_lite"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1034
    :cond_7
    const-string v6, "SystemServer"

    const-string v7, "SContext Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    new-instance v170, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/motionrecognitionservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v170

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1036
    .local v170, "scontextClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "android.hardware.scontext.SContextService"

    move-object/from16 v0, v170

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v61

    .line 1037
    .local v61, "class_SContextService":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v61

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v73

    .line 1038
    .local v73, "constructor_SContextService":Ljava/lang/reflect/Constructor;
    const-string/jumbo v7, "scontext"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v73

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2a} :catch_16

    .line 1045
    .end local v61    # "class_SContextService":Ljava/lang/Class;
    .end local v73    # "constructor_SContextService":Ljava/lang/reflect/Constructor;
    .end local v170    # "scontextClassLoader":Ldalvik/system/PathClassLoader;
    :cond_8
    :goto_14
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "com.sec.feature.barcode_emulator"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2b} :catch_16

    move-result v6

    if-eqz v6, :cond_9

    .line 1047
    :try_start_2c
    const-string v6, "SystemServer"

    const-string v7, "BarBeamService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    new-instance v53, Landroid/app/BarBeamService;

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    .line 1050
    .local v53, "barbeam":Landroid/app/BarBeamService;
    const-string v6, "barbeam"

    move-object/from16 v0, v53

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_2c} :catch_16

    .line 1060
    .end local v53    # "barbeam":Landroid/app/BarBeamService;
    :cond_9
    :goto_15
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MultiWindowFacadeService;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mMultiWindowFacadeService:Lcom/android/server/am/MultiWindowFacadeService;

    .line 1066
    const-string v6, "SystemServer"

    const-string v7, "Window Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_44

    const/4 v6, 0x1

    move v7, v6

    :goto_16
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v6, :cond_45

    const/4 v6, 0x1

    :goto_17
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move-object/from16 v0, v123

    invoke-static {v5, v0, v7, v6, v10}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v207

    .line 1070
    const-string/jumbo v6, "window"

    move-object/from16 v0, v207

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1071
    const-string/jumbo v6, "input"

    move-object/from16 v0, v123

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v207

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1077
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mMultiWindowFacadeService:Lcom/android/server/am/MultiWindowFacadeService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/am/MultiWindowFacadeService;->setAcitivityManager(Lcom/android/server/am/ActivityManagerService;)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mMultiWindowFacadeService:Lcom/android/server/am/MultiWindowFacadeService;

    move-object/from16 v0, v207

    invoke-virtual {v6, v0}, Lcom/android/server/am/MultiWindowFacadeService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1082
    invoke-virtual/range {v207 .. v207}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v6

    move-object/from16 v0, v123

    invoke-virtual {v0, v6}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 1083
    invoke-virtual/range {v123 .. v123}, Lcom/android/server/input/InputManagerService;->start()V

    .line 1086
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 1091
    if-eqz v125, :cond_46

    .line 1092
    const-string v6, "SystemServer"

    const-string v7, "No Bluetooh Service (emulator)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :goto_18
    const-string v6, "SystemServer"

    const-string v7, "RCP Manager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_2d} :catch_16

    .line 1114
    :try_start_2e
    new-instance v137, Lcom/android/server/RCPManagerService;

    move-object/from16 v0, v137

    invoke-direct {v0, v5}, Lcom/android/server/RCPManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_2e} :catch_16

    .line 1115
    .end local v136    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .local v137, "mRCPManagerService":Lcom/android/server/RCPManagerService;
    :try_start_2f
    const-string/jumbo v6, "rcp"

    move-object/from16 v0, v137

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_91
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_2f} :catch_90

    move-object/from16 v136, v137

    .line 1122
    .end local v137    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v136    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    :goto_19
    :try_start_30
    new-instance v6, Landroid/security/keystore/AndroidKeyStoreProvider;

    invoke-direct {v6}, Landroid/security/keystore/AndroidKeyStoreProvider;-><init>()V

    invoke-static {v6}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_30} :catch_16

    move-object/from16 v107, v108

    .end local v108    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v107    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v75, v76

    .end local v76    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v75    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v181, v182

    .end local v182    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v181    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v122, v123

    .end local v123    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v194, v195

    .line 1129
    .end local v104    # "enabledMDM":Z
    .end local v135    # "mProductName":Ljava/lang/String;
    .end local v183    # "timaEnabled":Z
    .end local v193    # "versionInfo":Landroid/os/Bundle;
    .end local v195    # "vibrator":Lcom/android/server/VibratorService;
    .end local v201    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v194    # "vibrator":Lcom/android/server/VibratorService;
    :goto_1a
    const/16 v179, 0x0

    .line 1130
    .local v179, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v159, 0x0

    .line 1131
    .local v159, "notification":Landroid/app/INotificationManager;
    const/16 v120, 0x0

    .line 1132
    .local v120, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v199, 0x0

    .line 1133
    .local v199, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v128, 0x0

    .line 1134
    .local v128, "location":Lcom/android/server/LocationManagerService;
    const/16 v167, 0x0

    .line 1135
    .local v167, "sLocation":Landroid/os/IBinder;
    const/16 v78, 0x0

    .line 1136
    .local v78, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v190, 0x0

    .line 1137
    .local v190, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v130, 0x0

    .line 1139
    .local v130, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v196, 0x0

    .line 1141
    .local v196, "vrManager":Lcom/android/server/VRManagerService;
    const/16 v49, 0x0

    .line 1142
    .local v49, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v140, 0x0

    .line 1145
    .local v140, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/16 v105, 0x0

    .line 1149
    .local v105, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v165, 0x0

    .line 1153
    .local v165, "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_a

    .line 1155
    :try_start_31
    const-string v6, "SystemServer"

    const-string v7, "Input Method Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    new-instance v121, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v121

    move-object/from16 v1, v207

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_19

    .line 1157
    .end local v120    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v121, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_32
    const-string/jumbo v6, "input_method"

    move-object/from16 v0, v121

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_88

    move-object/from16 v120, v121

    .line 1163
    .end local v121    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v120    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_1b
    :try_start_33
    const-string v6, "SystemServer"

    const-string v7, "Accessibility Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    const-string v6, "accessibility"

    new-instance v7, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1a

    .line 1172
    :cond_a
    :goto_1c
    :try_start_34
    invoke-virtual/range {v207 .. v207}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1b

    .line 1179
    :goto_1d
    :try_start_35
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v160

    .line 1180
    .local v160, "pM":Landroid/content/pm/PackageManager;
    if-eqz v160, :cond_b

    .line 1181
    const-string v6, "SystemServer"

    const-string v7, "PackageManager is not null!!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    const-string v6, "com.sec.feature.motionrecognition_service"

    move-object/from16 v0, v160

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "com.sec.feature.sensorhub"

    move-object/from16 v0, v160

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "com.sec.feature.scontext_lite"

    move-object/from16 v0, v160

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 1184
    new-instance v145, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/motionrecognitionservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v145

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1185
    .local v145, "motionClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.samsung.android.motion.MotionRecognitionService"

    move-object/from16 v0, v145

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v60

    .line 1186
    .local v60, "class_MotionRecognitionService":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v60

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v72

    .line 1187
    .local v72, "constructor_MotionRecognitionService":Ljava/lang/reflect/Constructor;
    const-string/jumbo v7, "motion_recognition"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v72

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1188
    const-string v6, "SystemServer"

    const-string v7, "MotionRecognitionService Service!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_1c

    .line 1197
    .end local v60    # "class_MotionRecognitionService":Ljava/lang/Class;
    .end local v72    # "constructor_MotionRecognitionService":Ljava/lang/reflect/Constructor;
    .end local v145    # "motionClassLoader":Ldalvik/system/PathClassLoader;
    .end local v160    # "pM":Landroid/content/pm/PackageManager;
    :cond_b
    :goto_1e
    const/16 v80, 0x0

    .line 1199
    .local v80, "coverService":Lcom/android/server/cover/CoverManagerService;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_d

    .line 1200
    const-string/jumbo v6, "vold.decrypt"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v84

    .line 1201
    .local v84, "cryptState":Ljava/lang/String;
    const-string/jumbo v6, "trigger_restart_min_framework"

    move-object/from16 v0, v84

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string/jumbo v6, "trigger_restart_min_framework"

    move-object/from16 v0, v84

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 1202
    :cond_c
    const-string v6, "SystemServer"

    const-string v7, "Detected encryption in progress - unable CoverManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    .end local v84    # "cryptState":Ljava/lang/String;
    :cond_d
    :goto_1f
    :try_start_36
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v162

    .line 1225
    .local v162, "pm":Landroid/content/pm/PackageManager;
    if-eqz v162, :cond_e

    .line 1226
    const-string v6, "com.sec.feature.cover.nfc_authentication"

    move-object/from16 v0, v162

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1227
    const-string v6, "SystemServer"

    const-string v7, "Samsung Accessory Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    new-instance v166, Lcom/samsung/accessory/manager/SAccessoryManager;

    move-object/from16 v0, v166

    move-object/from16 v1, v122

    invoke-direct {v0, v5, v1}, Lcom/samsung/accessory/manager/SAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1e

    .line 1229
    .end local v165    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .local v166, "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    :try_start_37
    const-string/jumbo v6, "saccessory_manager"

    move-object/from16 v0, v166

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1230
    move-object/from16 v0, v122

    move-object/from16 v1, v166

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->setUnVerifiedCoverAttachCallbacks(Lcom/android/server/input/InputManagerService$UnverifiedCoverAttachCallbacks;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_86

    move-object/from16 v165, v166

    .line 1249
    .end local v162    # "pm":Landroid/content/pm/PackageManager;
    .end local v166    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .restart local v165    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    :cond_e
    :goto_20
    const-string v6, "0"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_f

    .line 1251
    :try_start_38
    const-string v6, "SystemServer"

    const-string v7, "Add FM_RADIO_SERVICE"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    const-string v6, "FMPlayer"

    new-instance v7, Lcom/android/server/FMRadioService;

    invoke-direct {v7, v5}, Lcom/android/server/FMRadioService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1253
    const-string v6, "SystemServer"

    const-string v7, "FMRadio service added.."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1f

    .line 1259
    :cond_f
    :goto_21
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_12

    .line 1260
    if-nez v97, :cond_10

    const-string v6, "0"

    const-string/jumbo v7, "system_init.startmountservice"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 1267
    :try_start_39
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.MountService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1268
    const-string/jumbo v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_20

    move-result-object v146

    .line 1276
    :cond_10
    :goto_22
    :try_start_3a
    const-string v6, "SystemServer"

    const-string v7, "DirEncryptSerrvice"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    if-eqz v86, :cond_11

    .line 1278
    const-string v6, "SystemServer"

    const-string v7, "DirEncryptService.SystemReady"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    invoke-virtual/range {v86 .. v86}, Lcom/android/server/DirEncryptService;->systemReady()V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_21

    .line 1289
    :cond_11
    :goto_23
    :try_start_3b
    const-string v6, "SystemServer"

    const-string v7, "VR Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    new-instance v197, Lcom/android/server/VRManagerService;

    move-object/from16 v0, v197

    invoke-direct {v0, v5}, Lcom/android/server/VRManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_22

    .line 1291
    .end local v196    # "vrManager":Lcom/android/server/VRManagerService;
    .local v197, "vrManager":Lcom/android/server/VRManagerService;
    :try_start_3c
    const-string/jumbo v6, "vr"

    move-object/from16 v0, v197

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_85

    move-object/from16 v196, v197

    .line 1300
    .end local v197    # "vrManager":Lcom/android/server/VRManagerService;
    .restart local v196    # "vrManager":Lcom/android/server/VRManagerService;
    :goto_24
    const-string v6, "SystemServer"

    const-string v7, "Check LSM please."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    if-eqz v88, :cond_12

    .line 1303
    :try_start_3d
    const-string v6, "SystemServer"

    const-string v7, "LSManager.SystemReady"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/LSManager;->systemReady()V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_23

    .line 1316
    :cond_12
    :goto_25
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1319
    :try_start_3e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_24

    .line 1325
    :goto_26
    :try_start_3f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x1040386

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v10, 0x0

    invoke-interface {v6, v7, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_3f} :catch_84

    .line 1332
    :goto_27
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_57

    .line 1333
    if-nez v96, :cond_14

    .line 1335
    :try_start_40
    const-string v6, "SystemServer"

    const-string v7, "LockSettingsService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    new-instance v131, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v131

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_25

    .line 1337
    .end local v130    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v131, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_41
    const-string/jumbo v6, "lock_settings"

    move-object/from16 v0, v131

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_83

    move-object/from16 v130, v131

    .line 1342
    .end local v131    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v130    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_28
    const-string/jumbo v6, "ro.frp.pst"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 1343
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1346
    :cond_13
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1350
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1355
    :cond_14
    :try_start_42
    const-string v6, "SystemServer"

    const-string v7, "HarmonyEAS service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    new-instance v133, Lcom/android/server/HarmonyEASService;

    move-object/from16 v0, v133

    invoke-direct {v0, v5}, Lcom/android/server/HarmonyEASService;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_26

    .line 1357
    .end local v132    # "mHMS":Lcom/android/server/HarmonyEASService;
    .local v133, "mHMS":Lcom/android/server/HarmonyEASService;
    :try_start_43
    const-string/jumbo v6, "harmony_eas_service"

    move-object/from16 v0, v133

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1358
    const-string v6, "SystemServer"

    const-string v7, "Harmony EAS service created..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_82

    move-object/from16 v132, v133

    .line 1366
    .end local v133    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v132    # "mHMS":Lcom/android/server/HarmonyEASService;
    :goto_29
    :try_start_44
    const-string v6, "SystemServer"

    const-string v7, "SdpManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    new-instance v174, Lcom/android/server/SdpManagerService;

    move-object/from16 v0, v174

    invoke-direct {v0, v5}, Lcom/android/server/SdpManagerService;-><init>(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_27

    .line 1368
    .end local v173    # "sdpService":Lcom/android/server/SdpManagerService;
    .local v174, "sdpService":Lcom/android/server/SdpManagerService;
    :try_start_45
    const-string/jumbo v6, "sdp"

    move-object/from16 v0, v174

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_81

    move-object/from16 v173, v174

    .line 1373
    .end local v174    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v173    # "sdpService":Lcom/android/server/SdpManagerService;
    :goto_2a
    :try_start_46
    const-string v6, "SystemServer"

    const-string v7, "SdpLogService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    new-instance v172, Lcom/android/server/SdpLogService;

    move-object/from16 v0, v172

    invoke-direct {v0, v5}, Lcom/android/server/SdpLogService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_28

    .line 1375
    .end local v171    # "sdpLogService":Lcom/android/server/SdpLogService;
    .local v172, "sdpLogService":Lcom/android/server/SdpLogService;
    :try_start_47
    const-string/jumbo v6, "sdp_log"

    move-object/from16 v0, v172

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_80

    move-object/from16 v171, v172

    .line 1384
    .end local v172    # "sdpLogService":Lcom/android/server/SdpLogService;
    .restart local v171    # "sdpLogService":Lcom/android/server/SdpLogService;
    :goto_2b
    :try_start_48
    const-string v6, "SystemServer"

    const-string v7, "DLPManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    new-instance v100, Lcom/android/server/DLPManagerService;

    move-object/from16 v0, v100

    invoke-direct {v0, v5}, Lcom/android/server/DLPManagerService;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_29

    .line 1386
    .end local v99    # "dlpService":Lcom/android/server/DLPManagerService;
    .local v100, "dlpService":Lcom/android/server/DLPManagerService;
    :try_start_49
    const-string/jumbo v6, "dlp"

    move-object/from16 v0, v100

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_7f

    move-object/from16 v99, v100

    .line 1393
    .end local v100    # "dlpService":Lcom/android/server/DLPManagerService;
    .restart local v99    # "dlpService":Lcom/android/server/DLPManagerService;
    :goto_2c
    if-nez v96, :cond_15

    .line 1395
    :try_start_4a
    const-string v6, "SystemServer"

    const-string v7, "Enterprise Policy"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    new-instance v106, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const/4 v7, 0x0

    move-object/from16 v0, v106

    invoke-direct {v0, v5, v6, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/app/admin/IDevicePolicyManager;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2a

    .line 1397
    .end local v105    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .local v106, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_start_4b
    const-string/jumbo v6, "enterprise_policy"

    move-object/from16 v0, v106

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1398
    const-string v6, "SystemServer"

    const-string v7, "Enterprise Policymanager service created..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_7e

    move-object/from16 v105, v106

    .line 1405
    .end local v106    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v105    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :cond_15
    :goto_2d
    if-nez v98, :cond_16

    .line 1407
    :try_start_4c
    const-string v6, "SystemServer"

    const-string v7, "Status Bar"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    new-instance v180, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v180

    move-object/from16 v1, v207

    invoke-direct {v0, v5, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2b

    .line 1409
    .end local v179    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v180, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_4d
    const-string/jumbo v6, "statusbar"

    move-object/from16 v0, v180

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_7d

    move-object/from16 v179, v180

    .line 1415
    .end local v180    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v179    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_16
    :goto_2e
    if-nez v96, :cond_17

    .line 1417
    :try_start_4e
    const-string v6, "SystemServer"

    const-string v7, "Clipboard Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    const-string v6, "clipboard"

    new-instance v7, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v7, v5}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_2c

    .line 1426
    :cond_17
    :goto_2f
    if-nez v96, :cond_18

    .line 1428
    :try_start_4f
    const-string v6, "SystemServer"

    const-string v7, "ClipboardEx Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    const-string v6, "clipboardEx"

    new-instance v7, Lcom/android/server/clipboardex/ClipboardExService;

    invoke-direct {v7, v5}, Lcom/android/server/clipboardex/ClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_2d

    .line 1437
    :cond_18
    :goto_30
    if-nez v94, :cond_19

    .line 1439
    :try_start_50
    const-string v6, "SystemServer"

    const-string v7, "NetworkManagement Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v9

    .line 1441
    const-string/jumbo v6, "network_management"

    invoke-static {v6, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_2e

    .line 1449
    :cond_19
    :goto_31
    const-string v6, "SystemServer"

    const-string v7, "SEC_PRODUCT_FEATURE_KNOX_SUPPORT_ABSOLUTE_ANTITHEFT=FALSE - true"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :try_start_51
    const-string v6, "SystemServer"

    const-string v7, "Absolute Persistence Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    const-string v6, "ABTPersistenceService"

    new-instance v7, Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {v7, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_2f

    .line 1461
    :goto_32
    if-nez v96, :cond_1a

    .line 1463
    :try_start_52
    const-string v6, "SystemServer"

    const-string v7, "Text Service Manager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    new-instance v191, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v191

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_30

    .line 1465
    .end local v190    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v191, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_53
    const-string/jumbo v6, "textservices"

    move-object/from16 v0, v191

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_7c

    move-object/from16 v190, v191

    .line 1471
    .end local v191    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v190    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_1a
    :goto_33
    if-nez v94, :cond_56

    .line 1473
    :try_start_54
    const-string v6, "SystemServer"

    const-string v7, "Network Score Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    new-instance v155, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v155

    invoke-direct {v0, v5}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_31

    .line 1475
    .end local v154    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v155, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_55
    const-string/jumbo v6, "network_score"

    move-object/from16 v0, v155

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_7b

    move-object/from16 v154, v155

    .line 1481
    .end local v155    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v154    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_34
    :try_start_56
    const-string v6, "SystemServer"

    const-string v7, "NetworkStats Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    new-instance v156, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v156

    move-object/from16 v1, v44

    invoke-direct {v0, v5, v9, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_32

    .line 1483
    .end local v8    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v156, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_57
    const-string/jumbo v6, "netstats"

    move-object/from16 v0, v156

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_7a

    move-object/from16 v8, v156

    .line 1489
    .end local v156    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v8    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_35
    :try_start_58
    const-string v6, "SystemServer"

    const-string v7, "NetworkPolicy Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    new-instance v4, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v7, "power"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    check-cast v7, Landroid/os/IPowerManager;

    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_33

    .line 1494
    .end local v153    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v4, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_59
    const-string/jumbo v6, "netpolicy"

    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_79

    .line 1499
    :goto_36
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1500
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.WifiService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1502
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.hs20.WifiHs20Service"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1505
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.WifiScanningService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1508
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.RttService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1511
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1515
    :try_start_5a
    const-string v6, "SystemServer"

    const-string v7, "Connectivity Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    new-instance v69, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v69

    invoke-direct {v0, v5, v9, v8, v4}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_34

    .line 1518
    .end local v68    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v69, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_5b
    const-string v6, "connectivity"

    move-object/from16 v0, v69

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1519
    move-object/from16 v0, v69

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 1520
    move-object/from16 v0, v69

    invoke-virtual {v4, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_78

    move-object/from16 v68, v69

    .line 1526
    .end local v69    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v68    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_37
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_DisableSmartBonding"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 1529
    :try_start_5c
    const-string v6, "SystemServer"

    const-string v7, "SmartBonding Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v58

    .line 1531
    .local v58, "cl":Ljava/lang/ClassLoader;
    const-string v6, "com.samsung.android.smartbonding.SmartBondingService"

    const/4 v7, 0x1

    move-object/from16 v0, v58

    invoke-static {v6, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v62

    .line 1532
    .local v62, "class_SmartBondingService":Ljava/lang/Class;
    const-string v6, "SMARTBONDING_SERVICE"

    move-object/from16 v0, v62

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v111

    .line 1534
    .local v111, "field_SMARTBONDING_SERVICE":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v62

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v74

    .line 1536
    .local v74, "constructor_SmartBondingService":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x0

    move-object/from16 v0, v111

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v7, v10

    move-object/from16 v0, v74

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1537
    const-string v6, "SystemServer"

    const-string v7, "SmartBonding loaded"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_35

    .line 1544
    .end local v58    # "cl":Ljava/lang/ClassLoader;
    .end local v62    # "class_SmartBondingService":Ljava/lang/Class;
    .end local v74    # "constructor_SmartBondingService":Ljava/lang/reflect/Constructor;
    .end local v111    # "field_SMARTBONDING_SERVICE":Ljava/lang/reflect/Field;
    :cond_1b
    :goto_38
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_SupportMptcp"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1546
    :try_start_5d
    const-string v6, "SystemServer"

    const-string v7, "Mptcp Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    new-instance v148, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/mptcpservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v148

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1548
    .local v148, "mptcpClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.samsung.android.mptcp.MptcpService"

    move-object/from16 v0, v148

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v147

    .line 1549
    .local v147, "mptcpClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v147

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v149

    .line 1550
    .local v149, "mptcpConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v149

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v150

    check-cast v150, Landroid/os/IBinder;

    .line 1553
    .local v150, "mptcpService":Landroid/os/IBinder;
    const-string v6, "SystemServer"

    const-string v7, "MPTCP loaded"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_36

    .line 1560
    .end local v147    # "mptcpClass":Ljava/lang/Class;
    .end local v148    # "mptcpClassLoader":Ldalvik/system/PathClassLoader;
    .end local v149    # "mptcpConstructor":Ljava/lang/reflect/Constructor;
    .end local v150    # "mptcpService":Landroid/os/IBinder;
    :cond_1c
    :goto_39
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1562
    :try_start_5e
    const-string v6, "SystemServer"

    const-string v7, "Starting EPDG SERVICE"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    const/16 v109, 0x0

    .line 1564
    .local v109, "epdgclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "com.sec.epdg.EpdgService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v109

    .line 1565
    if-nez v109, :cond_4c

    .line 1566
    const-string v6, "SystemServer"

    const-string v7, "Epdg Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_37

    .line 1583
    .end local v109    # "epdgclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1d
    :goto_3a
    :try_start_5f
    const-string v6, "SystemServer"

    const-string v7, "Starting CLINFO SERVICE"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    const/16 v64, 0x0

    .line 1586
    .local v64, "clocinfoClassLoader":Ldalvik/system/PathClassLoader;
    const/16 v59, 0x0

    .line 1588
    .local v59, "classCLInfoService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v64, Ldalvik/system/PathClassLoader;

    .end local v64    # "clocinfoClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "/system/framework/clocinfoservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v64

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1591
    .restart local v64    # "clocinfoClassLoader":Ldalvik/system/PathClassLoader;
    if-nez v64, :cond_4d

    .line 1592
    const-string v6, "SystemServer"

    const-string v7, "clocinfo is not existed"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_38

    .line 1615
    .end local v59    # "classCLInfoService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v64    # "clocinfoClassLoader":Ldalvik/system/PathClassLoader;
    :goto_3b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 1618
    :try_start_60
    const-string v6, "SystemServer"

    const-string v7, "Wi-Fi  Offload Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    new-instance v206, Lcom/android/server/wifioffload/WifiOffloadService;

    move-object/from16 v0, v206

    invoke-direct {v0, v5}, Lcom/android/server/wifioffload/WifiOffloadService;-><init>(Landroid/content/Context;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_39

    .line 1620
    .end local v205    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    .local v206, "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    :try_start_61
    const-string/jumbo v6, "wifioffload"

    move-object/from16 v0, v206

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_77

    move-object/from16 v205, v206

    .line 1628
    .end local v206    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    .restart local v205    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    :cond_1e
    :goto_3c
    :try_start_62
    const-string v6, "SystemServer"

    const-string v7, "Network Service Discovery Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v177

    .line 1630
    const-string/jumbo v6, "servicediscovery"

    move-object/from16 v0, v177

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_3a

    .line 1636
    :goto_3d
    :try_start_63
    const-string v6, "SystemServer"

    const-string v7, "DPM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    invoke-static {v5}, Lcom/android/server/SystemServer;->startDpmService(Landroid/content/Context;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_3b

    .line 1643
    :goto_3e
    if-nez v96, :cond_1f

    .line 1645
    :try_start_64
    const-string v6, "SystemServer"

    const-string v7, "UpdateLock Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    const-string/jumbo v6, "updatelock"

    new-instance v7, Lcom/android/server/UpdateLockService;

    invoke-direct {v7, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_3c

    .line 1658
    :cond_1f
    :goto_3f
    if-eqz v146, :cond_20

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v6, :cond_20

    .line 1661
    :try_start_65
    const-string/jumbo v6, "vold.decrypt"

    const-string/jumbo v7, "null"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "trigger_restart_min_framework"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    .line 1662
    invoke-interface/range {v146 .. v146}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_65} :catch_76

    .line 1668
    :cond_20
    :goto_40
    if-eqz v42, :cond_21

    .line 1669
    :try_start_66
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_3d

    .line 1675
    :cond_21
    :goto_41
    if-eqz v77, :cond_22

    .line 1676
    :try_start_67
    invoke-virtual/range {v77 .. v77}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_67} :catch_3e

    .line 1681
    :cond_22
    :goto_42
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1682
    const-string/jumbo v6, "notification"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v159

    .line 1684
    move-object/from16 v0, v159

    invoke-virtual {v4, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 1686
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1688
    if-nez v93, :cond_23

    .line 1690
    :try_start_68
    const-string v6, "SystemServer"

    const-string v7, "Location Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    new-instance v129, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v129

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_68} :catch_3f

    .line 1692
    .end local v128    # "location":Lcom/android/server/LocationManagerService;
    .local v129, "location":Lcom/android/server/LocationManagerService;
    :try_start_69
    const-string/jumbo v6, "location"

    move-object/from16 v0, v129

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_69} :catch_75

    move-object/from16 v128, v129

    .line 1698
    .end local v129    # "location":Lcom/android/server/LocationManagerService;
    .restart local v128    # "location":Lcom/android/server/LocationManagerService;
    :goto_43
    :try_start_6a
    const-string v6, "SystemServer"

    const-string v7, "Country Detector"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    new-instance v79, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v79

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6a} :catch_40

    .line 1700
    .end local v78    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v79, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_6b
    const-string/jumbo v6, "country_detector"

    move-object/from16 v0, v79

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6b} :catch_74

    move-object/from16 v78, v79

    .line 1707
    .end local v79    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v78    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_23
    :goto_44
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_SupportHuxGpsEnableVzwLbsStack"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 1709
    const/16 v63, 0x0

    .line 1710
    .local v63, "clazz":Ljava/lang/Class;
    :try_start_6c
    const-string v6, "SystemServer"

    const-string v7, "Starting VZW Location Manager "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    const-string v6, "com.samsung.vzwlbs"

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v45

    .line 1712
    .local v45, "apkServiceContext":Landroid/content/Context;
    const-string v6, "SystemServer"

    const-string v7, "Loading VzwLocationManagerService from the APK"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6c} :catch_42

    .line 1714
    :try_start_6d
    invoke-virtual/range {v45 .. v45}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v7, "com.vzw.location.service.VzwLocationManagerService"

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v63

    .line 1715
    const-string v6, "SystemServer"

    const-string v7, "Loaded VzwLocationManagerService"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_6d} :catch_41
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_6d} :catch_42

    .line 1720
    :goto_45
    if-eqz v63, :cond_4f

    .line 1721
    const/4 v6, 0x1

    :try_start_6e
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v63

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v71

    .line 1722
    .local v71, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Object;

    move-object/from16 v48, v0

    const/4 v6, 0x0

    aput-object v5, v48, v6

    .line 1723
    .local v48, "arglist":[Ljava/lang/Object;
    move-object/from16 v0, v71

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v117

    check-cast v117, Landroid/os/IBinder;

    .line 1724
    .local v117, "ib":Landroid/os/IBinder;
    const-string v6, "SystemServer"

    const-string v7, "Adding VzwLocationManagerService"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    const-string v6, "VZW_LOCATION_SERVICE"

    move-object/from16 v0, v117

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_6e} :catch_42

    .line 1736
    .end local v45    # "apkServiceContext":Landroid/content/Context;
    .end local v48    # "arglist":[Ljava/lang/Object;
    .end local v63    # "clazz":Ljava/lang/Class;
    .end local v71    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v117    # "ib":Landroid/os/IBinder;
    :cond_24
    :goto_46
    :try_start_6f
    const-string v6, "SystemServer"

    const-string v7, "SLocation Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    const-string v6, "com.samsung.location.SLocationLoader"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v168

    .line 1738
    .local v168, "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v6, "getSLocationService"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v7, v10

    move-object/from16 v0, v168

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v116

    .line 1739
    .local v116, "getSLocationService":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v7, v10

    move-object/from16 v0, v116

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/os/IBinder;

    move-object/from16 v167, v0

    .line 1740
    const-string/jumbo v6, "sec_location"

    move-object/from16 v0, v167

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_6f} :catch_43

    .line 1790
    .end local v116    # "getSLocationService":Ljava/lang/reflect/Method;
    .end local v168    # "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_47
    if-nez v96, :cond_25

    .line 1792
    :try_start_70
    const-string v6, "SystemServer"

    const-string v7, "Search Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    const-string/jumbo v6, "search"

    new-instance v7, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_70} :catch_44

    .line 1800
    :cond_25
    :goto_48
    if-nez v96, :cond_26

    .line 1802
    :try_start_71
    const-string v6, "SystemServer"

    const-string v7, "Execute Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    const-string/jumbo v6, "execute"

    new-instance v7, Lcom/android/server/execute/ExecuteManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/execute/ExecuteManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_71} :catch_45

    .line 1811
    :cond_26
    :goto_49
    :try_start_72
    const-string v6, "SystemServer"

    const-string v7, "DropBox Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    const-string/jumbo v6, "dropbox"

    new-instance v7, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v5, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_72} :catch_46

    .line 1818
    :goto_4a
    if-nez v96, :cond_27

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1120051

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 1821
    :try_start_73
    const-string v6, "SystemServer"

    const-string v7, "Wallpaper Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    new-instance v200, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v200

    invoke-direct {v0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_73} :catch_47

    .line 1823
    .end local v199    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v200, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_74
    const-string/jumbo v6, "wallpaper"

    move-object/from16 v0, v200

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_74} :catch_73

    move-object/from16 v199, v200

    .line 1830
    .end local v200    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v199    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_27
    :goto_4b
    :try_start_75
    const-string v6, "SystemServer"

    const-string v7, "Audio Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    new-instance v52, Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/audio/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_75} :catch_48

    .line 1832
    .end local v51    # "audioService":Lcom/android/server/audio/AudioService;
    .local v52, "audioService":Lcom/android/server/audio/AudioService;
    :try_start_76
    const-string v6, "audio"

    move-object/from16 v0, v52

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_76} :catch_72

    move-object/from16 v51, v52

    .line 1837
    .end local v52    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v51    # "audioService":Lcom/android/server/audio/AudioService;
    :goto_4c
    if-nez v96, :cond_28

    .line 1838
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/DockObserver;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1842
    :cond_28
    :try_start_77
    const-string v6, "SystemServer"

    const-string v7, "Wired Accessory Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    new-instance v6, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v122

    invoke-direct {v6, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v122

    invoke-virtual {v0, v6}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_77} :catch_49

    .line 1850
    :goto_4d
    if-nez v96, :cond_2c

    .line 1851
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.midi"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 1853
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1856
    :cond_29
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.usb.host"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.usb.accessory"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 1860
    :cond_2a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1864
    :cond_2b
    :try_start_78
    const-string v6, "SystemServer"

    const-string v7, "Serial Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    new-instance v176, Lcom/android/server/SerialService;

    move-object/from16 v0, v176

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_78} :catch_4a

    .line 1867
    .end local v175    # "serial":Lcom/android/server/SerialService;
    .local v176, "serial":Lcom/android/server/SerialService;
    :try_start_79
    const-string/jumbo v6, "serial"

    move-object/from16 v0, v176

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_79} :catch_71

    move-object/from16 v175, v176

    .line 1877
    .end local v176    # "serial":Lcom/android/server/SerialService;
    .restart local v175    # "serial":Lcom/android/server/SerialService;
    :cond_2c
    :goto_4e
    :try_start_7a
    const-string v6, "SystemServer"

    const-string v7, "KiesUsb Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    const-string/jumbo v6, "kiesusb"

    new-instance v7, Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {v7, v5}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7a} :catch_4b

    .line 1885
    :goto_4f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1887
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1889
    if-nez v96, :cond_30

    .line 1890
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.backup"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 1891
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1894
    :cond_2d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.app_widgets"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 1895
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1898
    :cond_2e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.voice_recognizers"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 1899
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1902
    :cond_2f
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 1903
    const-string v6, "SystemServer"

    const-string v7, "Gesture Launcher Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1908
    :cond_30
    const-string/jumbo v6, "ro.SecEDS.enable"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1909
    .local v38, "SecEDSEnable":Ljava/lang/String;
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SecEDS Service ro.tvout.enable = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    const-string/jumbo v6, "false"

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    .line 1913
    :try_start_7b
    const-string v6, "SystemServer"

    const-string v7, "Starting SecEDSEnable Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    const/16 v102, 0x0

    .line 1915
    .local v102, "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "com.android.server.SecExternalDisplayService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v102

    .line 1916
    if-nez v102, :cond_50

    .line 1917
    const-string v6, "SystemServer"

    const-string/jumbo v7, "eds Service not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7b} :catch_4c

    .line 1933
    .end local v102    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_31
    :goto_50
    :try_start_7c
    const-string v6, "SystemServer"

    const-string v7, "DiskStats Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    const-string/jumbo v6, "diskstats"

    new-instance v7, Lcom/android/server/DiskStatsService;

    invoke-direct {v7, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_7c} :catch_4d

    .line 1942
    :goto_51
    :try_start_7d
    const-string v6, "SystemServer"

    const-string v7, "UCM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    new-instance v83, Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    move-object/from16 v0, v83

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_7d} :catch_4e

    .line 1944
    .end local v82    # "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .local v83, "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    :try_start_7e
    const-string v6, "com.samsung.ucs.ucsservice"

    move-object/from16 v0, v83

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_7e} :catch_70

    move-object/from16 v82, v83

    .line 1952
    .end local v83    # "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .restart local v82    # "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    :goto_52
    :try_start_7f
    const-string v6, "SystemServer"

    const-string/jumbo v7, "mDNIe Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    const/16 v138, 0x0

    .line 1954
    .local v138, "mdnieClass":Ljava/lang/Class;
    const-string v6, "com.samsung.android.mdnie.MdnieManagerService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v138

    .line 1955
    if-nez v138, :cond_51

    .line 1956
    const-string v6, "SystemServer"

    const-string v7, "Mdnie Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_7f} :catch_4f

    .line 1968
    .end local v138    # "mdnieClass":Ljava/lang/Class;
    :goto_53
    :try_start_80
    const-string v6, "SystemServer"

    const-string v7, "AAS Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    const/16 v40, 0x0

    .line 1970
    .local v40, "aasClass":Ljava/lang/Class;
    const-string v6, "com.samsung.android.allaroundsensing.AASManagerService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v40

    .line 1971
    if-nez v40, :cond_52

    .line 1972
    const-string v6, "SystemServer"

    const-string v7, "AAS Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_80} :catch_50

    .line 1984
    .end local v40    # "aasClass":Ljava/lang/Class;
    :goto_54
    :try_start_81
    const-string v6, "SystemServer"

    const-string v7, "MSCS Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    const/16 v151, 0x0

    .line 1986
    .local v151, "mscsClass":Ljava/lang/Class;
    const-string v6, "com.samsung.android.mscs.MSCSManagerService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v151

    .line 1987
    if-nez v151, :cond_53

    .line 1988
    const-string v6, "SystemServer"

    const-string v7, "MSCS Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_81} :catch_51

    .line 2002
    .end local v151    # "mscsClass":Ljava/lang/Class;
    :goto_55
    :try_start_82
    const-string v6, "SystemServer"

    const-string v7, "Starting SpenGestureManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    const-string/jumbo v6, "spengestureservice"

    new-instance v7, Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v0, v207

    invoke-direct {v7, v5, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_82} :catch_52

    .line 2018
    :goto_56
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.cocktailbar.CocktailBarManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :try_start_83
    const-string v6, "SystemServer"

    const-string v7, "QuickConnect Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    new-instance v164, Lcom/android/server/QuickConnectService;

    move-object/from16 v0, v164

    invoke-direct {v0, v5}, Lcom/android/server/QuickConnectService;-><init>(Landroid/content/Context;)V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_83} :catch_53

    .line 2020
    .end local v163    # "quickconnect":Lcom/android/server/QuickConnectService;
    .local v164, "quickconnect":Lcom/android/server/QuickConnectService;
    :try_start_84
    const-string/jumbo v6, "quickconnect"

    move-object/from16 v0, v164

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_84} :catch_6f

    move-object/from16 v163, v164

    .line 2030
    .end local v164    # "quickconnect":Lcom/android/server/QuickConnectService;
    .restart local v163    # "quickconnect":Lcom/android/server/QuickConnectService;
    :goto_57
    :try_start_85
    const-string v6, "SystemServer"

    const-string v7, "SamplingProfiler Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    const-string/jumbo v6, "samplingprofiler"

    new-instance v7, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v7, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_85} :catch_54

    .line 2037
    :goto_58
    if-nez v94, :cond_32

    if-nez v95, :cond_32

    .line 2039
    :try_start_86
    const-string v6, "SystemServer"

    const-string v7, "NetworkTimeUpdateService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    new-instance v158, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v158

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_86} :catch_55

    .end local v157    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v158, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v157, v158

    .line 2055
    .end local v158    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v157    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_32
    :goto_59
    :try_start_87
    const-string v6, "SystemServer"

    const-string v7, "CommonTimeManagementService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    new-instance v66, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v66

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_87} :catch_56

    .line 2057
    .end local v65    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v66, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_88
    const-string v6, "commontime_management"

    move-object/from16 v0, v66

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_88} :catch_6e

    move-object/from16 v65, v66

    .line 2062
    .end local v66    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v65    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_5a
    if-nez v94, :cond_33

    .line 2064
    :try_start_89
    const-string v6, "SystemServer"

    const-string v7, "CertBlacklister"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    new-instance v6, Lcom/android/server/CertBlacklister;

    invoke-direct {v6, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_89} :catch_57

    .line 2071
    :cond_33
    :goto_5b
    if-nez v96, :cond_34

    .line 2073
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2076
    :cond_34
    if-nez v96, :cond_35

    if-nez v91, :cond_35

    .line 2078
    :try_start_8a
    const-string v6, "SystemServer"

    const-string v7, "Assets Atlas Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    new-instance v50, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v50

    invoke-direct {v0, v5}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_8a} :catch_58

    .line 2080
    .end local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v50, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_8b
    const-string v6, "assetatlas"

    move-object/from16 v0, v50

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_8b} :catch_6d

    move-object/from16 v49, v50

    .line 2086
    .end local v50    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_35
    :goto_5c
    if-nez v96, :cond_36

    .line 2087
    const-string/jumbo v6, "graphicsstats"

    new-instance v7, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v7, v5}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2091
    :cond_36
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.print"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 2092
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.print.PrintManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2095
    :cond_37
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2097
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2099
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.hdmi.cec"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 2100
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2103
    :cond_38
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.live_tv"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 2104
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2107
    :cond_39
    if-nez v96, :cond_3a

    .line 2109
    :try_start_8c
    const-string v6, "SystemServer"

    const-string v7, "Media Router Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    new-instance v141, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v141

    invoke-direct {v0, v5}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_8c} :catch_59

    .line 2111
    .end local v140    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v141, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_8d
    const-string/jumbo v6, "media_router"

    move-object/from16 v0, v141

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_8d} :catch_6c

    move-object/from16 v140, v141

    .line 2116
    .end local v141    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v140    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_5d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2118
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2121
    :try_start_8e
    const-string v6, "SystemServer"

    const-string v7, "BackgroundDexOptService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;J)V
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_8e} :catch_5a

    .line 2131
    :cond_3a
    :goto_5e
    :try_start_8f
    const-string v6, "SystemServer"

    const-string v7, "BackgroundCompactionService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/android/server/os/BackgroundCompactionService;->schedule(Landroid/content/Context;I)V

    .line 2133
    invoke-static {v5}, Lcom/android/server/os/BackgroundCompactionService;->initBGC(Landroid/content/Context;)V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_8f} :catch_5b

    .line 2139
    :goto_5f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2168
    const-string/jumbo v6, "ro.bluetooth.wipower"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v126

    .line 2170
    .local v126, "isWipowerEnabled":Z
    if-eqz v126, :cond_54

    .line 2172
    :try_start_90
    const-string/jumbo v39, "wbc_service"

    .line 2173
    .local v39, "WBC_SERVICE_NAME":Ljava/lang/String;
    const-string v6, "SystemServer"

    const-string v7, "WipowerBatteryControl Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    new-instance v203, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/com.quicinc.wbc.jar:/system/framework/com.quicinc.wbcservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v203

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2178
    .local v203, "wbcClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.quicinc.wbcservice.WbcService"

    move-object/from16 v0, v203

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v202

    .line 2179
    .local v202, "wbcClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v202

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v85

    .line 2180
    .local v85, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v85

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v204

    .line 2181
    .local v204, "wbcObject":Ljava/lang/Object;
    const-string v6, "SystemServer"

    const-string v7, "Successfully loaded WbcService class"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    const-string/jumbo v6, "wbc_service"

    check-cast v204, Landroid/os/IBinder;

    .end local v204    # "wbcObject":Ljava/lang/Object;
    move-object/from16 v0, v204

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_90} :catch_5c

    .line 2193
    .end local v39    # "WBC_SERVICE_NAME":Ljava/lang/String;
    .end local v85    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v202    # "wbcClass":Ljava/lang/Class;
    .end local v203    # "wbcClassLoader":Ldalvik/system/PathClassLoader;
    :goto_60
    :try_start_91
    const-string v6, "SystemServer"

    const-string v7, "MiniModeAppManager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    sget-object v6, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-static {v6}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v124

    .line 2196
    .local v124, "instructionSet":Ljava/lang/String;
    new-instance v58, Ldalvik/system/DexClassLoader;

    const-string v6, "/system/framework/minimode.jar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/dalvik-cache/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v124

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    move-object/from16 v0, v58

    invoke-direct {v0, v6, v7, v10, v11}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2198
    .restart local v58    # "cl":Ljava/lang/ClassLoader;
    const-string v6, "com.sec.minimode.manager.MiniModeAppManagerService"

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v36

    .line 2199
    .local v36, "MiniModeAppManagerServiceClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v37

    .line 2200
    .local v37, "MiniModeAppManagerServiceContructor":Ljava/lang/reflect/Constructor;
    const-string/jumbo v7, "mini_mode_app_manager"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_91} :catch_5d

    .line 2209
    .end local v36    # "MiniModeAppManagerServiceClass":Ljava/lang/Class;
    .end local v37    # "MiniModeAppManagerServiceContructor":Ljava/lang/reflect/Constructor;
    .end local v58    # "cl":Ljava/lang/ClassLoader;
    .end local v124    # "instructionSet":Ljava/lang/String;
    :goto_61
    :try_start_92
    const-string v6, "SystemServer"

    const-string v7, "VoIPInterfaceManager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    const-string/jumbo v6, "voip"

    new-instance v7, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v7, v5}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_92} :catch_5e

    .line 2217
    .end local v38    # "SecEDSEnable":Ljava/lang/String;
    .end local v126    # "isWipowerEnabled":Z
    :goto_62
    if-nez v96, :cond_3b

    .line 2218
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2222
    :cond_3b
    invoke-static {}, Lcom/samsung/appdisabler/AppDisablerService;->configurationFileExists()Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 2224
    :try_start_93
    new-instance v46, Lcom/samsung/appdisabler/AppDisablerService;

    move-object/from16 v0, v46

    invoke-direct {v0, v5}, Lcom/samsung/appdisabler/AppDisablerService;-><init>(Landroid/content/Context;)V

    .line 2225
    .local v46, "appDisablerService":Lcom/samsung/appdisabler/AppDisablerService;
    const-string v6, "SamsungAppDisabler"

    move-object/from16 v0, v46

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_93} :catch_5f

    .line 2234
    .end local v46    # "appDisablerService":Lcom/samsung/appdisabler/AppDisablerService;
    :cond_3c
    :goto_63
    :try_start_94
    const-string v6, "SystemServer"

    const-string v7, "Lpnet Manager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    const-string/jumbo v6, "lpnet"

    new-instance v7, Lcom/android/server/LpnetManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/LpnetManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_94} :catch_60

    .line 2244
    :goto_64
    invoke-virtual/range {v207 .. v207}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v169

    .line 2245
    .local v169, "safeMode":Z
    move/from16 v0, v169

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/SystemServer;->safeModeValueForTheme:Z

    .line 2246
    if-eqz v169, :cond_55

    .line 2247
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    .line 2248
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 2250
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 2257
    :goto_65
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v143

    .end local v143    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v143, Lcom/android/server/MmsServiceBroker;

    .line 2283
    .restart local v143    # "mmsService":Lcom/android/server/MmsServiceBroker;
    :try_start_95
    const-string v6, "SystemServer"

    const-string v7, "GameManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    new-instance v113, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/gamemanager.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v113

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2285
    .local v113, "gamemanagerClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.samsung.android.game.GameManagerService"

    move-object/from16 v0, v113

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v112

    .line 2286
    .local v112, "gamemanagerClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v112

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v114

    .line 2287
    .local v114, "gamemanagerConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v114

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v115

    check-cast v115, Landroid/os/IBinder;

    .line 2288
    .local v115, "gamemanagerService":Landroid/os/IBinder;
    const-string/jumbo v6, "gamemanager"

    move-object/from16 v0, v115

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2289
    const-string v6, "SystemServer"

    const-string v7, "GameManagerService loaded"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_95 .. :try_end_95} :catch_61

    .line 2299
    .end local v112    # "gamemanagerClass":Ljava/lang/Class;
    .end local v113    # "gamemanagerClassLoader":Ldalvik/system/PathClassLoader;
    .end local v114    # "gamemanagerConstructor":Ljava/lang/reflect/Constructor;
    .end local v115    # "gamemanagerService":Landroid/os/IBinder;
    :goto_66
    :try_start_96
    invoke-virtual/range {v194 .. v194}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_96} :catch_62

    .line 2304
    :goto_67
    if-eqz v130, :cond_3d

    .line 2306
    :try_start_97
    invoke-virtual/range {v130 .. v130}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_97} :catch_63

    .line 2313
    :cond_3d
    :goto_68
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x1e0

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2315
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x1f4

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2318
    if-eqz v105, :cond_3e

    .line 2319
    invoke-virtual/range {v105 .. v105}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    .line 2320
    const-string v6, "SystemServer"

    const-string/jumbo v7, "enterprisePolicy systemReady"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    :cond_3e
    :try_start_98
    invoke-virtual/range {v207 .. v207}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_98} :catch_64

    .line 2330
    :goto_69
    if-eqz v169, :cond_3f

    .line 2331
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 2337
    :cond_3f
    invoke-virtual/range {v207 .. v207}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v67

    .line 2338
    .local v67, "config":Landroid/content/res/Configuration;
    new-instance v142, Landroid/util/DisplayMetrics;

    invoke-direct/range {v142 .. v142}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2339
    .local v142, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v198

    check-cast v198, Landroid/view/WindowManager;

    .line 2340
    .local v198, "w":Landroid/view/WindowManager;
    invoke-interface/range {v198 .. v198}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    move-object/from16 v0, v142

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2341
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v0, v67

    move-object/from16 v1, v142

    invoke-virtual {v6, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2345
    :try_start_99
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_99} :catch_65

    .line 2351
    :goto_6a
    :try_start_9a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_9a} :catch_66

    .line 2358
    :goto_6b
    :try_start_9b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v169

    invoke-virtual {v6, v0, v7}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_9b
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_9b} :catch_67

    .line 2365
    :goto_6c
    :try_start_9c
    invoke-virtual/range {v173 .. v173}, Lcom/android/server/SdpManagerService;->systemReady()V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_9c} :catch_68

    .line 2371
    :goto_6d
    :try_start_9d
    invoke-virtual/range {v171 .. v171}, Lcom/android/server/SdpLogService;->systemReady()V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_9d} :catch_69

    .line 2379
    :goto_6e
    :try_start_9e
    invoke-virtual/range {v99 .. v99}, Lcom/android/server/DLPManagerService;->systemReady()V
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_9e} :catch_6a

    .line 2386
    :goto_6f
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v193

    .line 2387
    .restart local v193    # "versionInfo":Landroid/os/Bundle;
    const-string v6, "2.0"

    const-string/jumbo v7, "version"

    move-object/from16 v0, v193

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 2389
    :try_start_9f
    invoke-virtual/range {v134 .. v134}, Lcom/android/server/pm/PersonaManagerService;->systemReady()V
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_9f} :catch_6b

    .line 2404
    :cond_40
    :goto_70
    move-object v14, v9

    .line 2405
    .local v14, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v15, v8

    .line 2406
    .local v15, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v16, v4

    .line 2407
    .local v16, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v17, v68

    .line 2408
    .local v17, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v13, v154

    .line 2409
    .local v13, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v19, v199

    .line 2410
    .local v19, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v20, v120

    .line 2411
    .local v20, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v22, v128

    .line 2412
    .local v22, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v23, v167

    .line 2413
    .local v23, "sLocationF":Landroid/os/IBinder;
    move-object/from16 v24, v78

    .line 2414
    .local v24, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v25, v157

    .line 2415
    .local v25, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v26, v65

    .line 2416
    .local v26, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v27, v190

    .line 2417
    .local v27, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v21, v179

    .line 2419
    .local v21, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v28, v196

    .line 2421
    .local v28, "vrManagerF":Lcom/android/server/VRManagerService;
    move-object/from16 v29, v49

    .line 2422
    .local v29, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v30, v122

    .line 2423
    .local v30, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v31, v181

    .line 2424
    .local v31, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v32, v140

    .line 2425
    .local v32, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v18, v51

    .line 2426
    .local v18, "audioServiceF":Lcom/android/server/audio/AudioService;
    move-object/from16 v144, v143

    .line 2428
    .local v144, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v33, v80

    .line 2432
    .local v33, "coverServiceF":Lcom/android/server/cover/CoverManagerService;
    move-object/from16 v34, v165

    .line 2440
    .local v34, "sAccessoryManagerF":Lcom/samsung/accessory/manager/SAccessoryManager;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v10, Lcom/android/server/SystemServer$2;

    move-object/from16 v11, p0

    move-object v12, v5

    invoke-direct/range {v10 .. v34}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/audio/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/VRManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/cover/CoverManagerService;Lcom/samsung/accessory/manager/SAccessoryManager;)V

    invoke-virtual {v6, v10}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 2625
    return-void

    .line 746
    .end local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v13    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v14    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v15    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v16    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v17    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v18    # "audioServiceF":Lcom/android/server/audio/AudioService;
    .end local v19    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v20    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v21    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v22    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v23    # "sLocationF":Landroid/os/IBinder;
    .end local v24    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v25    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v26    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v27    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v28    # "vrManagerF":Lcom/android/server/VRManagerService;
    .end local v29    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v30    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v31    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v32    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v33    # "coverServiceF":Lcom/android/server/cover/CoverManagerService;
    .end local v34    # "sAccessoryManagerF":Lcom/samsung/accessory/manager/SAccessoryManager;
    .end local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v67    # "config":Landroid/content/res/Configuration;
    .end local v78    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v80    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .end local v105    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v107    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v120    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v128    # "location":Lcom/android/server/LocationManagerService;
    .end local v130    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v140    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v142    # "metrics":Landroid/util/DisplayMetrics;
    .end local v144    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v159    # "notification":Landroid/app/INotificationManager;
    .end local v165    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .end local v167    # "sLocation":Landroid/os/IBinder;
    .end local v169    # "safeMode":Z
    .end local v179    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v181    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v190    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v196    # "vrManager":Lcom/android/server/VRManagerService;
    .end local v198    # "w":Landroid/view/WindowManager;
    .end local v199    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v108    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v153    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v182    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_0
    move-exception v101

    .line 747
    .local v101, "e":Ljava/lang/Throwable;
    :try_start_a0
    const-string v6, "SystemServer"

    const-string v7, "Failure starting Persona Manager Service"

    move-object/from16 v0, v101

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a0
    .catch Ljava/lang/RuntimeException; {:try_start_a0 .. :try_end_a0} :catch_1

    goto/16 :goto_0

    .line 1124
    .end local v101    # "e":Ljava/lang/Throwable;
    .end local v193    # "versionInfo":Landroid/os/Bundle;
    :catch_1
    move-exception v101

    move-object/from16 v107, v108

    .end local v108    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v107    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v181, v182

    .line 1125
    .end local v182    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v101, "e":Ljava/lang/RuntimeException;
    .restart local v181    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_71
    const-string v6, "System"

    const-string v7, "******************************************"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    const-string v6, "System"

    const-string v7, "************ Failure starting core service"

    move-object/from16 v0, v101

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1a

    .line 758
    .end local v101    # "e":Ljava/lang/RuntimeException;
    .end local v107    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v181    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v108    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v182    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v193    # "versionInfo":Landroid/os/Bundle;
    :catch_2
    move-exception v101

    .line 759
    .local v101, "e":Ljava/lang/Throwable;
    :try_start_a1
    const-string v6, "SystemServer"

    const-string v7, "Failure starting SE Android Manager Service"

    move-object/from16 v0, v101

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 775
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v101

    .line 776
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_72
    const-string v6, "SystemServer"

    const-string v7, "Failure starting Account Manager"

    move-object/from16 v0, v101

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 786
    .end local v101    # "e":Ljava/lang/Throwable;
    .restart local v135    # "mProductName":Ljava/lang/String;
    :catch_4
    move-exception v101

    .line 787
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting KT UCA Service"

    move-object/from16 v0, v101

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a1
    .catch Ljava/lang/RuntimeException; {:try_start_a1 .. :try_end_a1} :catch_1

    goto/16 :goto_3

    .line 793
    .end local v101    # "e":Ljava/lang/Throwable;
    :cond_41
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 803
    .end local v86    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v87    # "dEncService":Lcom/android/server/DirEncryptService;
    :catch_5
    move-exception v101

    .line 804
    .restart local v101    # "e":Ljava/lang/Throwable;
    :try_start_a2
    const-string v6, "SystemServer"

    const-string v7, "Failure starting DirEncryptService"

    move-object/from16 v0, v101

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a2
    .catch Ljava/lang/RuntimeException; {:try_start_a2 .. :try_end_a2} :catch_8c

    .line 805
    const/16 v86, 0x0

    .end local v87    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v86    # "dEncService":Lcom/android/server/DirEncryptService;
    goto/16 :goto_5

    .line 817
    .end local v88    # "dLSManager":Lcom/android/server/LSManager;
    .end local v101    # "e":Ljava/lang/Throwable;
    .restart local v89    # "dLSManager":Lcom/android/server/LSManager;
    :catch_6
    move-exception v101

    .line 818
    .restart local v101    # "e":Ljava/lang/Throwable;
    :try_start_a3
    const-string v6, "SystemServer"

    const-string v7, "Failure starting LSManager"

    move-object/from16 v0, v101

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a3
    .catch Ljava/lang/RuntimeException; {:try_start_a3 .. :try_end_a3} :catch_8d

    .line 819
    const/16 v88, 0x0

    .end local v89    # "dLSManager":Lcom/android/server/LSManager;
    .restart local v88    # "dLSManager":Lcom/android/server/LSManager;
    goto/16 :goto_6

    .line 828
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v101

    .line 829
    .restart local v101    # "e":Ljava/lang/Throwable;
    :try_start_a4
    const-string v6, "SystemServer"

    const-string v7, "Failed to add SecurityManager Service."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 837
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v101

    .line 839
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failed to add Reactive Service."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 847
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v101

    .line 849
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failed to add DeviceRootKeyService."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-virtual/range {v101 .. v101}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_9

    .line 858
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v101

    .line 860
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failed to add EngineeringModeService."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    invoke-virtual/range {v101 .. v101}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_a

    .line 869
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v101

    .line 871
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failed to add SATService."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 880
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v101

    .line 881
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Registration of denial service failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catch Ljava/lang/RuntimeException; {:try_start_a4 .. :try_end_a4} :catch_1

    goto/16 :goto_c

    .line 912
    .end local v101    # "e":Ljava/lang/Throwable;
    .end local v194    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v183    # "timaEnabled":Z
    .restart local v195    # "vibrator":Lcom/android/server/VibratorService;
    :catch_d
    move-exception v101

    .line 913
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_73
    :try_start_a5
    const-string/jumbo v6, "starting TimaService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 1124
    .end local v101    # "e":Ljava/lang/Throwable;
    .end local v183    # "timaEnabled":Z
    :catch_e
    move-exception v101

    move-object/from16 v107, v108

    .end local v108    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v107    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v181, v182

    .end local v182    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v181    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v194, v195

    .end local v195    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v194    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_71

    .line 923
    .end local v107    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v181    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v194    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v108    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v182    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v183    # "timaEnabled":Z
    .restart local v195    # "vibrator":Lcom/android/server/VibratorService;
    :catch_f
    move-exception v101

    .line 924
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting TimaObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a5
    .catch Ljava/lang/RuntimeException; {:try_start_a5 .. :try_end_a5} :catch_e

    goto/16 :goto_e

    .line 946
    .end local v101    # "e":Ljava/lang/Throwable;
    .restart local v118    # "icccService":Lcom/android/server/IcccManagerService;
    .restart local v119    # "iccc_result":I
    .restart local v188    # "timaversion":Z
    :cond_42
    :try_start_a6
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "trustboot write result: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v10, -0xdfffff

    const/4 v11, 0x1

    move-object/from16 v0, v118

    invoke-virtual {v0, v10, v11}, Lcom/android/server/IcccManagerService;->Iccc_SaveData_Platform(II)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a6} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_a6 .. :try_end_a6} :catch_e

    goto/16 :goto_f

    .line 948
    .end local v119    # "iccc_result":I
    :catch_10
    move-exception v101

    .line 950
    .local v101, "e":Ljava/lang/Exception;
    :try_start_a7
    const-string/jumbo v6, "icccManager"

    const-string/jumbo v7, "exception caught"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-virtual/range {v101 .. v101}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_a7} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_a7 .. :try_end_a7} :catch_e

    goto/16 :goto_f

    .line 969
    .end local v101    # "e":Ljava/lang/Exception;
    .end local v118    # "icccService":Lcom/android/server/IcccManagerService;
    .end local v188    # "timaversion":Z
    :catch_11
    move-exception v101

    .line 970
    .restart local v101    # "e":Ljava/lang/Exception;
    :try_start_a8
    const-string v6, "SystemServer"

    const-string v7, "Unable to add TimaKesytore/FipsTimaKesytore provider"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    invoke-virtual/range {v101 .. v101}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_10

    .line 984
    .end local v101    # "e":Ljava/lang/Exception;
    .restart local v103    # "enabledCEP":Z
    .restart local v104    # "enabledMDM":Z
    :catch_12
    move-exception v101

    .line 985
    .local v101, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting CEP Proxy Service"

    move-object/from16 v0, v101

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_11

    .line 988
    .end local v101    # "e":Ljava/lang/Throwable;
    :cond_43
    const-string v6, "SystemServer"

    const-string v7, "MDM is enabled, but CEP is not enabled"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 994
    .end local v103    # "enabledCEP":Z
    :catch_13
    move-exception v101

    .line 995
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting Email Keystore Service"

    move-object/from16 v0, v101

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_12

    .line 1006
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v101

    .line 1007
    .local v101, "e":Ljava/lang/Exception;
    const-string v6, "SystemServer"

    const-string/jumbo v7, "ssrm.jar not found"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    invoke-virtual/range {v101 .. v101}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a8
    .catch Ljava/lang/RuntimeException; {:try_start_a8 .. :try_end_a8} :catch_e

    goto/16 :goto_13

    .line 1040
    .end local v75    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v101    # "e":Ljava/lang/Exception;
    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v76    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v123    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v201    # "watchdog":Lcom/android/server/Watchdog;
    :catch_15
    move-exception v101

    .line 1041
    .restart local v101    # "e":Ljava/lang/Exception;
    :try_start_a9
    const-string v6, "SystemServer"

    const-string v7, "Failure starting SContextService"

    move-object/from16 v0, v101

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14

    .line 1124
    .end local v101    # "e":Ljava/lang/Exception;
    :catch_16
    move-exception v101

    move-object/from16 v107, v108

    .end local v108    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v107    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v75, v76

    .end local v76    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v75    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v181, v182

    .end local v182    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v181    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v122, v123

    .end local v123    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v194, v195

    .end local v195    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v194    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_71

    .line 1051
    .end local v75    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v107    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v181    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v194    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v76    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v108    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v123    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v182    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v195    # "vibrator":Lcom/android/server/VibratorService;
    :catch_17
    move-exception v101

    .line 1052
    .local v101, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting BarBeam Service"

    move-object/from16 v0, v101

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    .line 1067
    .end local v101    # "e":Ljava/lang/Throwable;
    :cond_44
    const/4 v6, 0x0

    move v7, v6

    goto/16 :goto_16

    :cond_45
    const/4 v6, 0x0

    goto/16 :goto_17

    .line 1093
    :cond_46
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_47

    .line 1094
    const-string v6, "SystemServer"

    const-string v7, "No Bluetooth Service (factory test)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 1095
    :cond_47
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.bluetooth"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_48

    .line 1097
    const-string v6, "SystemServer"

    const-string v7, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 1098
    :cond_48
    if-eqz v92, :cond_49

    .line 1099
    const-string v6, "SystemServer"

    const-string v7, "Bluetooth Service disabled by config"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 1101
    :cond_49
    const-string v6, "SystemServer"

    const-string v7, "Bluetooth Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/BluetoothService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1105
    const-string v6, "SystemServer"

    const-string v7, "Bluetooth Secure Mode Manager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    const-string v6, "bluetooth_secure_mode_manager"

    new-instance v7, Landroid/app/BluetoothSecureManagerService;

    invoke-direct {v7, v5}, Landroid/app/BluetoothSecureManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_18

    .line 1116
    :catch_18
    move-exception v101

    .line 1117
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_74
    const-string v6, "SystemServer"

    const-string v7, "Failure starting RCP Manager Service"

    move-object/from16 v0, v101

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a9
    .catch Ljava/lang/RuntimeException; {:try_start_a9 .. :try_end_a9} :catch_16

    goto/16 :goto_19

    .line 1158
    .end local v76    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v101    # "e":Ljava/lang/Throwable;
    .end local v104    # "enabledMDM":Z
    .end local v108    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v123    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v135    # "mProductName":Ljava/lang/String;
    .end local v182    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v183    # "timaEnabled":Z
    .end local v193    # "versionInfo":Landroid/os/Bundle;
    .end local v195    # "vibrator":Lcom/android/server/VibratorService;
    .end local v201    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v75    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v78    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v105    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v107    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v120    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v128    # "location":Lcom/android/server/LocationManagerService;
    .restart local v130    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v140    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v159    # "notification":Landroid/app/INotificationManager;
    .restart local v165    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .restart local v167    # "sLocation":Landroid/os/IBinder;
    .restart local v179    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v181    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v190    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v194    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v196    # "vrManager":Lcom/android/server/VRManagerService;
    .restart local v199    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_19
    move-exception v101

    .line 1159
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_75
    const-string/jumbo v6, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 1166
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v101

    .line 1167
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 1173
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v101

    .line 1174
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 1191
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v101

    .line 1192
    .local v101, "e":Ljava/lang/Exception;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting MotionRecognitionService"

    move-object/from16 v0, v101

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e

    .line 1204
    .end local v101    # "e":Ljava/lang/Exception;
    .restart local v80    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v84    # "cryptState":Ljava/lang/String;
    :cond_4a
    if-nez v96, :cond_d

    .line 1205
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v161

    .line 1206
    .local v161, "packageMgr":Landroid/content/pm/PackageManager;
    const-string v6, "com.sec.feature.cover.flip"

    move-object/from16 v0, v161

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4b

    const-string v6, "com.sec.feature.cover.sview"

    move-object/from16 v0, v161

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1209
    :cond_4b
    :try_start_aa
    const-string v6, "SystemServer"

    const-string v7, "CoverManager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    new-instance v81, Lcom/android/server/cover/CoverManagerService;

    move-object/from16 v0, v81

    move-object/from16 v1, v207

    move-object/from16 v2, v122

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/cover/CoverManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_aa .. :try_end_aa} :catch_1d

    .line 1211
    .end local v80    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .local v81, "coverService":Lcom/android/server/cover/CoverManagerService;
    :try_start_ab
    const-string/jumbo v6, "cover"

    move-object/from16 v0, v81

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ab
    .catch Ljava/lang/Throwable; {:try_start_ab .. :try_end_ab} :catch_87

    move-object/from16 v80, v81

    .line 1214
    .end local v81    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v80    # "coverService":Lcom/android/server/cover/CoverManagerService;
    goto/16 :goto_1f

    .line 1212
    :catch_1d
    move-exception v101

    .line 1213
    .local v101, "e":Ljava/lang/Throwable;
    :goto_76
    const-string v6, "SystemServer"

    const-string v7, "Failure starting CoverManager Service"

    move-object/from16 v0, v101

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    .line 1233
    .end local v84    # "cryptState":Ljava/lang/String;
    .end local v101    # "e":Ljava/lang/Throwable;
    .end local v161    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_1e
    move-exception v101

    .line 1234
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_77
    const-string/jumbo v6, "starting SAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 1254
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v101

    .line 1255
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v6, "Failure starting FM Radio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 1270
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v101

    .line 1271
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 1281
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v101

    .line 1282
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting DirEncryption service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 1292
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v101

    .line 1293
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_78
    const-string/jumbo v6, "starting VR Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 1306
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v101

    .line 1307
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting LSManager service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 1320
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v101

    .line 1321
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 1338
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v101

    .line 1339
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_79
    const-string/jumbo v6, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 1359
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v101

    .line 1360
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_7a
    const-string v6, "SystemServer"

    const-string v7, "Failure starting Harmony EAS service"

    move-object/from16 v0, v101

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_29

    .line 1369
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v101

    .line 1370
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_7b
    const-string/jumbo v6, "unable to start SdpManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 1376
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v101

    .line 1377
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_7c
    const-string v6, "SystemServer"

    const-string v7, "Failure starting SdpLogService Service"

    move-object/from16 v0, v101

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b

    .line 1387
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v101

    .line 1388
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_7d
    const-string/jumbo v6, "unable to start DLPManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 1399
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v101

    .line 1400
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_7e
    const-string v6, "SystemServer"

    const-string v7, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v101

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2d

    .line 1410
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v101

    .line 1411
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_7f
    const-string/jumbo v6, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1420
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v101

    .line 1421
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 1431
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v101

    .line 1432
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting ClipboardEx Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 1442
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v101

    .line 1443
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 1455
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v101

    .line 1456
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Absolute Persistence Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 1466
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_30
    move-exception v101

    .line 1467
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_80
    const-string/jumbo v6, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 1476
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_31
    move-exception v101

    .line 1477
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_81
    const-string/jumbo v6, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 1484
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_32
    move-exception v101

    .line 1485
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_82
    const-string/jumbo v6, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 1495
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_33
    move-exception v101

    move-object/from16 v4, v153

    .line 1496
    .end local v153    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_83
    const-string/jumbo v6, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 1521
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_34
    move-exception v101

    .line 1522
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_84
    const-string/jumbo v6, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 1538
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_35
    move-exception v101

    .line 1539
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting SmartBondingService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 1554
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_36
    move-exception v101

    .line 1555
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "failed to start MptcpService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 1568
    .end local v101    # "e":Ljava/lang/Throwable;
    .restart local v109    # "epdgclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4c
    :try_start_ac
    const-string v6, "SystemServer"

    const-string v7, "Epdg Service exists"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Class;

    move-object/from16 v47, v0

    .line 1570
    .local v47, "arg":[Ljava/lang/Class;
    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v47, v6

    .line 1572
    move-object/from16 v0, v109

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v71

    .line 1573
    .restart local v71    # "constructor":Ljava/lang/reflect/Constructor;
    const-string/jumbo v7, "epdg"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v71

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ac
    .catch Ljava/lang/Throwable; {:try_start_ac .. :try_end_ac} :catch_37

    goto/16 :goto_3a

    .line 1575
    .end local v47    # "arg":[Ljava/lang/Class;
    .end local v71    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v109    # "epdgclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_37
    move-exception v101

    .line 1576
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v6, "Failed To Start Epdg Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 1594
    .end local v101    # "e":Ljava/lang/Throwable;
    .restart local v59    # "classCLInfoService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v64    # "clocinfoClassLoader":Ldalvik/system/PathClassLoader;
    :cond_4d
    :try_start_ad
    const-string v6, "com.samsung.clocinfo.CLocInfoService"

    move-object/from16 v0, v64

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v59

    .line 1596
    if-nez v59, :cond_4e

    .line 1597
    const-string v6, "SystemServer"

    const-string v7, "CLINFO Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_ad} :catch_38

    goto/16 :goto_3b

    .line 1608
    .end local v59    # "classCLInfoService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v64    # "clocinfoClassLoader":Ldalvik/system/PathClassLoader;
    :catch_38
    move-exception v101

    .line 1609
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v6, "Failed To Start CLINFO Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1610
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed To Start CLINFO Service"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v101

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 1599
    .end local v101    # "e":Ljava/lang/Throwable;
    .restart local v59    # "classCLInfoService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v64    # "clocinfoClassLoader":Ldalvik/system/PathClassLoader;
    :cond_4e
    :try_start_ae
    const-string v6, "SystemServer"

    const-string v7, "CLINFO Service exists"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Class;

    move-object/from16 v47, v0

    .line 1601
    .restart local v47    # "arg":[Ljava/lang/Class;
    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v47, v6

    .line 1603
    move-object/from16 v0, v59

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v70

    .line 1604
    .local v70, "constCLInfoService":Ljava/lang/reflect/Constructor;
    const-string v7, "clinfo"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v70

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_ae} :catch_38

    goto/16 :goto_3b

    .line 1621
    .end local v47    # "arg":[Ljava/lang/Class;
    .end local v59    # "classCLInfoService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v64    # "clocinfoClassLoader":Ldalvik/system/PathClassLoader;
    .end local v70    # "constCLInfoService":Ljava/lang/reflect/Constructor;
    :catch_39
    move-exception v101

    .line 1622
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_85
    const-string/jumbo v6, "starting Wi-Fi Offload Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 1632
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_3a
    move-exception v101

    .line 1633
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 1638
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_3b
    move-exception v101

    .line 1639
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting DpmService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 1648
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_3c
    move-exception v101

    .line 1649
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 1670
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_3d
    move-exception v101

    .line 1671
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 1677
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_3e
    move-exception v101

    .line 1678
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 1693
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_3f
    move-exception v101

    .line 1694
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_86
    const-string/jumbo v6, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 1701
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_40
    move-exception v101

    .line 1702
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_87
    const-string/jumbo v6, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 1716
    .end local v101    # "e":Ljava/lang/Throwable;
    .restart local v45    # "apkServiceContext":Landroid/content/Context;
    .restart local v63    # "clazz":Ljava/lang/Class;
    :catch_41
    move-exception v101

    .line 1717
    .local v101, "e":Ljava/lang/Exception;
    :try_start_af
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception while loading the class "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v101

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_af .. :try_end_af} :catch_42

    goto/16 :goto_45

    .line 1729
    .end local v45    # "apkServiceContext":Landroid/content/Context;
    .end local v101    # "e":Ljava/lang/Exception;
    :catch_42
    move-exception v101

    .line 1730
    .local v101, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting VZW Location Manager"

    move-object/from16 v0, v101

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_46

    .line 1727
    .end local v101    # "e":Ljava/lang/Throwable;
    .restart local v45    # "apkServiceContext":Landroid/content/Context;
    :cond_4f
    :try_start_b0
    const-string v6, "SystemServer"

    const-string v7, "Failure starting VZW Location Manager"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catch Ljava/lang/Throwable; {:try_start_b0 .. :try_end_b0} :catch_42

    goto/16 :goto_46

    .line 1741
    .end local v45    # "apkServiceContext":Landroid/content/Context;
    .end local v63    # "clazz":Ljava/lang/Class;
    :catch_43
    move-exception v101

    .line 1742
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Loading SLocation has been failed, error or not support"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v101 .. v101}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_47

    .line 1795
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_44
    move-exception v101

    .line 1796
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 1805
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_45
    move-exception v101

    .line 1806
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .line 1814
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_46
    move-exception v101

    .line 1815
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a

    .line 1824
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_47
    move-exception v101

    .line 1825
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_88
    const-string/jumbo v6, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b

    .line 1833
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_48
    move-exception v101

    .line 1834
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_89
    const-string/jumbo v6, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4c

    .line 1846
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_49
    move-exception v101

    .line 1847
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d

    .line 1868
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_4a
    move-exception v101

    .line 1869
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_8a
    const-string v6, "SystemServer"

    const-string v7, "Failure starting SerialService"

    move-object/from16 v0, v101

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4e

    .line 1879
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_4b
    move-exception v101

    .line 1880
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v6, "Failue staring KiesUsbObserver Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4f

    .line 1921
    .end local v101    # "e":Ljava/lang/Throwable;
    .restart local v38    # "SecEDSEnable":Ljava/lang/String;
    .restart local v102    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_50
    :try_start_b1
    const-string v6, "SystemServer"

    const-string/jumbo v7, "edsclass Service exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Class;

    move-object/from16 v47, v0

    .line 1923
    .restart local v47    # "arg":[Ljava/lang/Class;
    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v47, v6

    .line 1924
    move-object/from16 v0, v102

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v71

    .line 1925
    .restart local v71    # "constructor":Ljava/lang/reflect/Constructor;
    const-string v7, "SecExternalDisplayService"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v71

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b1
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_b1} :catch_4c

    goto/16 :goto_50

    .line 1927
    .end local v47    # "arg":[Ljava/lang/Class;
    .end local v71    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v102    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_4c
    move-exception v101

    .line 1928
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting eds Service"

    move-object/from16 v0, v101

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_50

    .line 1935
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_4d
    move-exception v101

    .line 1936
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_51

    .line 1945
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_4e
    move-exception v101

    .line 1946
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_8b
    const-string/jumbo v6, "starting UCMService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_52

    .line 1958
    .end local v101    # "e":Ljava/lang/Throwable;
    .restart local v138    # "mdnieClass":Ljava/lang/Class;
    :cond_51
    const/4 v6, 0x1

    :try_start_b2
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v138

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v71

    .line 1959
    .restart local v71    # "constructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v71

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v139

    check-cast v139, Landroid/os/IBinder;

    .line 1960
    .local v139, "mdnieService":Landroid/os/IBinder;
    const-string/jumbo v6, "mDNIe"

    move-object/from16 v0, v139

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_b2 .. :try_end_b2} :catch_4f

    goto/16 :goto_53

    .line 1962
    .end local v71    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v138    # "mdnieClass":Ljava/lang/Class;
    .end local v139    # "mdnieService":Landroid/os/IBinder;
    :catch_4f
    move-exception v101

    .line 1963
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v6, "Failed To Start Mdnie Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_53

    .line 1974
    .end local v101    # "e":Ljava/lang/Throwable;
    .restart local v40    # "aasClass":Ljava/lang/Class;
    :cond_52
    const/4 v6, 0x1

    :try_start_b3
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v71

    .line 1975
    .restart local v71    # "constructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v71

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/IBinder;

    .line 1976
    .local v41, "aasService":Landroid/os/IBinder;
    const-string v6, "AAS"

    move-object/from16 v0, v41

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b3
    .catch Ljava/lang/Throwable; {:try_start_b3 .. :try_end_b3} :catch_50

    goto/16 :goto_54

    .line 1978
    .end local v40    # "aasClass":Ljava/lang/Class;
    .end local v41    # "aasService":Landroid/os/IBinder;
    .end local v71    # "constructor":Ljava/lang/reflect/Constructor;
    :catch_50
    move-exception v101

    .line 1979
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v6, "Failed To Start AAS Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_54

    .line 1990
    .end local v101    # "e":Ljava/lang/Throwable;
    .restart local v151    # "mscsClass":Ljava/lang/Class;
    :cond_53
    const/4 v6, 0x1

    :try_start_b4
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v151

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v71

    .line 1991
    .restart local v71    # "constructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v71

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v152

    check-cast v152, Landroid/os/IBinder;

    .line 1992
    .local v152, "mscsService":Landroid/os/IBinder;
    const-string v6, "MSCS"

    move-object/from16 v0, v152

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b4
    .catch Ljava/lang/Throwable; {:try_start_b4 .. :try_end_b4} :catch_51

    goto/16 :goto_55

    .line 1994
    .end local v71    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v151    # "mscsClass":Ljava/lang/Class;
    .end local v152    # "mscsService":Landroid/os/IBinder;
    :catch_51
    move-exception v101

    .line 1995
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v6, "Failed To Start MSCS Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_55

    .line 2005
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_52
    move-exception v101

    .line 2006
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting SpenGestureManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_56

    .line 2021
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_53
    move-exception v101

    .line 2022
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_8c
    const-string/jumbo v6, "starting QuickConnect Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_57

    .line 2033
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_54
    move-exception v101

    .line 2034
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_58

    .line 2041
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_55
    move-exception v101

    .line 2042
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_59

    .line 2058
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_56
    move-exception v101

    .line 2059
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_8d
    const-string/jumbo v6, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5a

    .line 2066
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_57
    move-exception v101

    .line 2067
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5b

    .line 2081
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_58
    move-exception v101

    .line 2082
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_8e
    const-string/jumbo v6, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5c

    .line 2112
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_59
    move-exception v101

    .line 2113
    .restart local v101    # "e":Ljava/lang/Throwable;
    :goto_8f
    const-string/jumbo v6, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5d

    .line 2123
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_5a
    move-exception v101

    .line 2124
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5e

    .line 2134
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_5b
    move-exception v101

    .line 2135
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting BackgroundCompactionService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5f

    .line 2183
    .end local v101    # "e":Ljava/lang/Throwable;
    .restart local v126    # "isWipowerEnabled":Z
    :catch_5c
    move-exception v101

    .line 2184
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting WipowerBatteryControl Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_60

    .line 2187
    .end local v101    # "e":Ljava/lang/Throwable;
    :cond_54
    const-string v6, "SystemServer"

    const-string v7, "Wipower not supported"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_60

    .line 2202
    :catch_5d
    move-exception v101

    .line 2203
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting MiniModeAppManager Service"

    move-object/from16 v0, v101

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_61

    .line 2211
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_5e
    move-exception v101

    .line 2212
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_62

    .line 2226
    .end local v38    # "SecEDSEnable":Ljava/lang/String;
    .end local v101    # "e":Ljava/lang/Throwable;
    .end local v126    # "isWipowerEnabled":Z
    :catch_5f
    move-exception v101

    .line 2227
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v6, "Failure starting SamsungAppDisablerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_63

    .line 2236
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_60
    move-exception v101

    .line 2237
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting Lpnet Manager Service "

    move-object/from16 v0, v101

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_64

    .line 2253
    .end local v101    # "e":Ljava/lang/Throwable;
    .restart local v169    # "safeMode":Z
    :cond_55
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_65

    .line 2290
    :catch_61
    move-exception v101

    .line 2291
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failed to add GameManagerService."

    move-object/from16 v0, v101

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_66

    .line 2300
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_62
    move-exception v101

    .line 2301
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_67

    .line 2307
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_63
    move-exception v101

    .line 2308
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_68

    .line 2326
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_64
    move-exception v101

    .line 2327
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_69

    .line 2346
    .end local v101    # "e":Ljava/lang/Throwable;
    .restart local v67    # "config":Landroid/content/res/Configuration;
    .restart local v142    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v198    # "w":Landroid/view/WindowManager;
    :catch_65
    move-exception v101

    .line 2347
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6a

    .line 2352
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_66
    move-exception v101

    .line 2353
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6b

    .line 2359
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_67
    move-exception v101

    .line 2360
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6c

    .line 2366
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_68
    move-exception v101

    .line 2367
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Sdp manager service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6d

    .line 2372
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_69
    move-exception v101

    .line 2373
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Sdp Log Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6e

    .line 2380
    .end local v101    # "e":Ljava/lang/Throwable;
    :catch_6a
    move-exception v101

    .line 2381
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making EnterpriserRightsManagerService ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6f

    .line 2390
    .end local v101    # "e":Ljava/lang/Throwable;
    .restart local v193    # "versionInfo":Landroid/os/Bundle;
    :catch_6b
    move-exception v101

    .line 2391
    .restart local v101    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Persona Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_70

    .line 2112
    .end local v67    # "config":Landroid/content/res/Configuration;
    .end local v101    # "e":Ljava/lang/Throwable;
    .end local v140    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v142    # "metrics":Landroid/util/DisplayMetrics;
    .end local v169    # "safeMode":Z
    .end local v193    # "versionInfo":Landroid/os/Bundle;
    .end local v198    # "w":Landroid/view/WindowManager;
    .restart local v38    # "SecEDSEnable":Ljava/lang/String;
    .restart local v141    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_6c
    move-exception v101

    move-object/from16 v140, v141

    .end local v141    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v140    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_8f

    .line 2081
    .end local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v50    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_6d
    move-exception v101

    move-object/from16 v49, v50

    .end local v50    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_8e

    .line 2058
    .end local v65    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v66    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_6e
    move-exception v101

    move-object/from16 v65, v66

    .end local v66    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v65    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_8d

    .line 2021
    .end local v163    # "quickconnect":Lcom/android/server/QuickConnectService;
    .restart local v164    # "quickconnect":Lcom/android/server/QuickConnectService;
    :catch_6f
    move-exception v101

    move-object/from16 v163, v164

    .end local v164    # "quickconnect":Lcom/android/server/QuickConnectService;
    .restart local v163    # "quickconnect":Lcom/android/server/QuickConnectService;
    goto/16 :goto_8c

    .line 1945
    .end local v82    # "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .restart local v83    # "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    :catch_70
    move-exception v101

    move-object/from16 v82, v83

    .end local v83    # "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .restart local v82    # "credentialManagerService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    goto/16 :goto_8b

    .line 1868
    .end local v38    # "SecEDSEnable":Ljava/lang/String;
    .end local v175    # "serial":Lcom/android/server/SerialService;
    .restart local v176    # "serial":Lcom/android/server/SerialService;
    :catch_71
    move-exception v101

    move-object/from16 v175, v176

    .end local v176    # "serial":Lcom/android/server/SerialService;
    .restart local v175    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_8a

    .line 1833
    .end local v51    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v52    # "audioService":Lcom/android/server/audio/AudioService;
    :catch_72
    move-exception v101

    move-object/from16 v51, v52

    .end local v52    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v51    # "audioService":Lcom/android/server/audio/AudioService;
    goto/16 :goto_89

    .line 1824
    .end local v199    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v200    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_73
    move-exception v101

    move-object/from16 v199, v200

    .end local v200    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v199    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_88

    .line 1701
    .end local v78    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v79    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_74
    move-exception v101

    move-object/from16 v78, v79

    .end local v79    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v78    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_87

    .line 1693
    .end local v128    # "location":Lcom/android/server/LocationManagerService;
    .restart local v129    # "location":Lcom/android/server/LocationManagerService;
    :catch_75
    move-exception v101

    move-object/from16 v128, v129

    .end local v129    # "location":Lcom/android/server/LocationManagerService;
    .restart local v128    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_86

    .line 1663
    :catch_76
    move-exception v6

    goto/16 :goto_40

    .line 1621
    .end local v205    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    .restart local v206    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    :catch_77
    move-exception v101

    move-object/from16 v205, v206

    .end local v206    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    .restart local v205    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    goto/16 :goto_85

    .line 1521
    .end local v68    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v69    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_78
    move-exception v101

    move-object/from16 v68, v69

    .end local v69    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v68    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_84

    .line 1495
    :catch_79
    move-exception v101

    goto/16 :goto_83

    .line 1484
    .end local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v8    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v153    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v156    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_7a
    move-exception v101

    move-object/from16 v8, v156

    .end local v156    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v8    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_82

    .line 1476
    .end local v154    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v155    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_7b
    move-exception v101

    move-object/from16 v154, v155

    .end local v155    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v154    # "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_81

    .line 1466
    .end local v190    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v191    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_7c
    move-exception v101

    move-object/from16 v190, v191

    .end local v191    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v190    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_80

    .line 1410
    .end local v179    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v180    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_7d
    move-exception v101

    move-object/from16 v179, v180

    .end local v180    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v179    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_7f

    .line 1399
    .end local v105    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v106    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :catch_7e
    move-exception v101

    move-object/from16 v105, v106

    .end local v106    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v105    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    goto/16 :goto_7e

    .line 1387
    .end local v99    # "dlpService":Lcom/android/server/DLPManagerService;
    .restart local v100    # "dlpService":Lcom/android/server/DLPManagerService;
    :catch_7f
    move-exception v101

    move-object/from16 v99, v100

    .end local v100    # "dlpService":Lcom/android/server/DLPManagerService;
    .restart local v99    # "dlpService":Lcom/android/server/DLPManagerService;
    goto/16 :goto_7d

    .line 1376
    .end local v171    # "sdpLogService":Lcom/android/server/SdpLogService;
    .restart local v172    # "sdpLogService":Lcom/android/server/SdpLogService;
    :catch_80
    move-exception v101

    move-object/from16 v171, v172

    .end local v172    # "sdpLogService":Lcom/android/server/SdpLogService;
    .restart local v171    # "sdpLogService":Lcom/android/server/SdpLogService;
    goto/16 :goto_7c

    .line 1369
    .end local v173    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v174    # "sdpService":Lcom/android/server/SdpManagerService;
    :catch_81
    move-exception v101

    move-object/from16 v173, v174

    .end local v174    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v173    # "sdpService":Lcom/android/server/SdpManagerService;
    goto/16 :goto_7b

    .line 1359
    .end local v132    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v133    # "mHMS":Lcom/android/server/HarmonyEASService;
    :catch_82
    move-exception v101

    move-object/from16 v132, v133

    .end local v133    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v132    # "mHMS":Lcom/android/server/HarmonyEASService;
    goto/16 :goto_7a

    .line 1338
    .end local v130    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v131    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_83
    move-exception v101

    move-object/from16 v130, v131

    .end local v131    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v130    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_79

    .line 1329
    :catch_84
    move-exception v6

    goto/16 :goto_27

    .line 1292
    .end local v196    # "vrManager":Lcom/android/server/VRManagerService;
    .restart local v197    # "vrManager":Lcom/android/server/VRManagerService;
    :catch_85
    move-exception v101

    move-object/from16 v196, v197

    .end local v197    # "vrManager":Lcom/android/server/VRManagerService;
    .restart local v196    # "vrManager":Lcom/android/server/VRManagerService;
    goto/16 :goto_78

    .line 1233
    .end local v165    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .restart local v162    # "pm":Landroid/content/pm/PackageManager;
    .restart local v166    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    :catch_86
    move-exception v101

    move-object/from16 v165, v166

    .end local v166    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .restart local v165    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    goto/16 :goto_77

    .line 1212
    .end local v80    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .end local v162    # "pm":Landroid/content/pm/PackageManager;
    .restart local v81    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v84    # "cryptState":Ljava/lang/String;
    .restart local v161    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_87
    move-exception v101

    move-object/from16 v80, v81

    .end local v81    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v80    # "coverService":Lcom/android/server/cover/CoverManagerService;
    goto/16 :goto_76

    .line 1158
    .end local v80    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .end local v84    # "cryptState":Ljava/lang/String;
    .end local v120    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v161    # "packageMgr":Landroid/content/pm/PackageManager;
    .restart local v121    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_88
    move-exception v101

    move-object/from16 v120, v121

    .end local v121    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v120    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_75

    .line 1124
    .end local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v78    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v105    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v120    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v128    # "location":Lcom/android/server/LocationManagerService;
    .end local v130    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v140    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v159    # "notification":Landroid/app/INotificationManager;
    .end local v165    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .end local v167    # "sLocation":Landroid/os/IBinder;
    .end local v179    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v190    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v196    # "vrManager":Lcom/android/server/VRManagerService;
    .end local v199    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_89
    move-exception v101

    goto/16 :goto_71

    .end local v181    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v182    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_8a
    move-exception v101

    move-object/from16 v181, v182

    .end local v182    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v181    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_71

    .end local v42    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v107    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v181    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v43    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v108    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v182    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v193    # "versionInfo":Landroid/os/Bundle;
    :catch_8b
    move-exception v101

    move-object/from16 v107, v108

    .end local v108    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v107    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v181, v182

    .end local v182    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v181    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v42, v43

    .end local v43    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v42    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_71

    .end local v86    # "dEncService":Lcom/android/server/DirEncryptService;
    .end local v107    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v181    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v87    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v108    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v135    # "mProductName":Ljava/lang/String;
    .restart local v182    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_8c
    move-exception v101

    move-object/from16 v107, v108

    .end local v108    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v107    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v86, v87

    .end local v87    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v86    # "dEncService":Lcom/android/server/DirEncryptService;
    move-object/from16 v181, v182

    .end local v182    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v181    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_71

    .end local v88    # "dLSManager":Lcom/android/server/LSManager;
    .end local v107    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v181    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v89    # "dLSManager":Lcom/android/server/LSManager;
    .restart local v108    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v182    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_8d
    move-exception v101

    move-object/from16 v88, v89

    .end local v89    # "dLSManager":Lcom/android/server/LSManager;
    .restart local v88    # "dLSManager":Lcom/android/server/LSManager;
    move-object/from16 v107, v108

    .end local v108    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v107    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v181, v182

    .end local v182    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v181    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_71

    .end local v107    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v181    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v186    # "timaService":Lcom/android/server/TimaService;
    .end local v194    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v108    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v182    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v183    # "timaEnabled":Z
    .restart local v187    # "timaService":Lcom/android/server/TimaService;
    .restart local v195    # "vibrator":Lcom/android/server/VibratorService;
    :catch_8e
    move-exception v101

    move-object/from16 v186, v187

    .end local v187    # "timaService":Lcom/android/server/TimaService;
    .restart local v186    # "timaService":Lcom/android/server/TimaService;
    move-object/from16 v107, v108

    .end local v108    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v107    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v181, v182

    .end local v182    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v181    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v194, v195

    .end local v195    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v194    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_71

    .end local v75    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v107    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v181    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v194    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v76    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v104    # "enabledMDM":Z
    .restart local v108    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v182    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v195    # "vibrator":Lcom/android/server/VibratorService;
    :catch_8f
    move-exception v101

    move-object/from16 v107, v108

    .end local v108    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v107    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v75, v76

    .end local v76    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v75    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v181, v182

    .end local v182    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v181    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v194, v195

    .end local v195    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v194    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_71

    .end local v75    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v107    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v136    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .end local v181    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v194    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v76    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v108    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v123    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v137    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v182    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v195    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v201    # "watchdog":Lcom/android/server/Watchdog;
    :catch_90
    move-exception v101

    move-object/from16 v136, v137

    .end local v137    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v136    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    move-object/from16 v107, v108

    .end local v108    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v107    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v75, v76

    .end local v76    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v75    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v181, v182

    .end local v182    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v181    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v122, v123

    .end local v123    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v194, v195

    .end local v195    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v194    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_71

    .line 1116
    .end local v75    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v107    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v136    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .end local v181    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v194    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v76    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v108    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v123    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v137    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v182    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v195    # "vibrator":Lcom/android/server/VibratorService;
    :catch_91
    move-exception v101

    move-object/from16 v136, v137

    .end local v137    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v136    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    goto/16 :goto_74

    .line 912
    .end local v76    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v104    # "enabledMDM":Z
    .end local v123    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v186    # "timaService":Lcom/android/server/TimaService;
    .end local v201    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v75    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v122    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v187    # "timaService":Lcom/android/server/TimaService;
    :catch_92
    move-exception v101

    move-object/from16 v186, v187

    .end local v187    # "timaService":Lcom/android/server/TimaService;
    .restart local v186    # "timaService":Lcom/android/server/TimaService;
    goto/16 :goto_73

    .line 775
    .end local v42    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v135    # "mProductName":Ljava/lang/String;
    .end local v183    # "timaEnabled":Z
    .end local v195    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v43    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v194    # "vibrator":Lcom/android/server/VibratorService;
    :catch_93
    move-exception v101

    move-object/from16 v42, v43

    .end local v43    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v42    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_72

    .end local v108    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v182    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v193    # "versionInfo":Landroid/os/Bundle;
    .restart local v49    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v78    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v80    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v105    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v107    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v120    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v128    # "location":Lcom/android/server/LocationManagerService;
    .restart local v130    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v140    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v159    # "notification":Landroid/app/INotificationManager;
    .restart local v165    # "sAccessoryManager":Lcom/samsung/accessory/manager/SAccessoryManager;
    .restart local v167    # "sLocation":Landroid/os/IBinder;
    .restart local v179    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v181    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v190    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v196    # "vrManager":Lcom/android/server/VRManagerService;
    .restart local v199    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_56
    move-object/from16 v4, v153

    .end local v153    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_3e

    .end local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v153    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_57
    move-object/from16 v4, v153

    .end local v153    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_62
.end method

.method static final startSecurityManagerService(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2675
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2676
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.service.sm"

    const-string v3, "com.sec.android.service.sm.service.SecurityManagerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2678
    const-string v1, "CMD"

    const-string v2, "START_SERVICE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2679
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2680
    return-void
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2638
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2639
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2642
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2643
    return-void
.end method

.method private startThemeService()V
    .locals 5

    .prologue
    .line 2628
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 2629
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2630
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.themecenter"

    const-string v4, "com.samsung.android.thememanager.ThemeManagerService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2632
    const-string/jumbo v2, "safeMode"

    iget-boolean v3, p0, Lcom/android/server/SystemServer;->safeModeValueForTheme:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2633
    const-string/jumbo v2, "isStartedBySystemServer"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2634
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2635
    return-void
.end method
