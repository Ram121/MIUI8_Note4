.class public Lcom/android/server/IcccManagerService;
.super Landroid/service/iccc/IIcccManager$Stub;
.source "IcccManagerService.java"


# static fields
.field private static final ACTION_SYSSCOPESTATUS:Ljava/lang/String; = "com.sec.intent.action.SYSSCOPESTATUS"

.field private static final NOK:I = 0x2

.field private static final NOT_SCANNED:I = -0x1

.field private static final OK:I = 0x1

.field private static final SYSSCOPE_FLAG:I = -0xe00000

.field private static mSysScopeResult:I


# instance fields
.field TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mSysScopeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, -0x1

    sput v0, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/service/iccc/IIcccManager$Stub;-><init>()V

    .line 34
    const-string v1, "ICCC"

    iput-object v1, p0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    .line 55
    new-instance v1, Lcom/android/server/IcccManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/IcccManagerService$1;-><init>(Lcom/android/server/IcccManagerService;)V

    iput-object v1, p0, Lcom/android/server/IcccManagerService;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    iget-object v1, p0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Start IcccManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iput-object p1, p0, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    .local v0, "sysScopeFilter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/IcccManagerService;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 33
    sput p0, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/server/IcccManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/IcccManagerService;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->enforcePermission()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/IcccManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/IcccManagerService;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->setSysScopeField()V

    return-void
.end method

.method static native atimaSetLicenseStatusJNI()I
.end method

.method private enforcePermission()Z
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 125
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 126
    const/4 v1, 0x1

    .line 128
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static native iccc_readData_platform(I)I
.end method

.method static native iccc_saveData_platform(II)I
.end method

.method private setSysScopeField()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/high16 v6, -0xe00000

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 74
    .local v0, "ut":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 75
    const-wide/16 v0, 0x1

    .line 78
    :cond_0
    sget v2, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    if-ne v2, v7, :cond_2

    const-wide/16 v2, 0x78

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 79
    iget-object v2, p0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v3, "There is some problem in SysScope. Keep it uninitialized"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_1
    :goto_0
    return-void

    .line 81
    :cond_2
    sget v2, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    if-ne v2, v8, :cond_3

    .line 82
    iget-object v2, p0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Saving SysScope Value : OK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v2, 0x0

    invoke-static {v6, v2}, Lcom/android/server/IcccManagerService;->iccc_saveData_platform(II)I

    goto :goto_0

    .line 84
    :cond_3
    sget v2, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    if-ne v2, v9, :cond_4

    .line 85
    iget-object v2, p0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Saving SysScope Value : NOK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {v6, v8}, Lcom/android/server/IcccManagerService;->iccc_saveData_platform(II)I

    goto :goto_0

    .line 87
    :cond_4
    sget v2, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    if-ne v2, v7, :cond_1

    .line 88
    iget-object v2, p0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Saving SysScope Value : NOT_SCANNED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {v6, v9}, Lcom/android/server/IcccManagerService;->iccc_saveData_platform(II)I

    goto :goto_0
.end method


# virtual methods
.method public Iccc_ReadData_Platform(I)I
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "result":I
    invoke-static {p1}, Lcom/android/server/IcccManagerService;->iccc_readData_platform(I)I

    move-result v0

    .line 98
    return v0
.end method

.method public Iccc_SaveData_Platform(II)I
    .locals 3
    .param p1, "type"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "result":I
    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->enforcePermission()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-static {p1, p2}, Lcom/android/server/IcccManagerService;->iccc_saveData_platform(II)I

    move-result v0

    .line 111
    :goto_0
    return v0

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Not System UID. Only system UID caller can change status"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public TimaSetLicenseStatusJNI()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "result":I
    invoke-static {}, Lcom/android/server/IcccManagerService;->atimaSetLicenseStatusJNI()I

    move-result v0

    .line 119
    return v0
.end method
