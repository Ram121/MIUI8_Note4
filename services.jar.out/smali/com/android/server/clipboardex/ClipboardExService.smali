.class public Lcom/android/server/clipboardex/ClipboardExService;
.super Landroid/sec/clipboard/IClipboardService$Stub;
.source "ClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;,
        Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;,
        Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;
    }
.end annotation


# static fields
.field private static SEC_FLOATING_FEATURE_VIEWSYSTEM_CLIPBOARD_UI_SERVICE:Z = false

.field private static final TAG:Ljava/lang/String; = "ClipboardExService"

.field private static final mHasKnox:Z

.field private static sService:Landroid/content/IClipboard;


# instance fields
.field private final CLIPS_INFO:Ljava/lang/String;

.field private final CLIP_ADD_DELETED_ITEM_BROADCAST:Ljava/lang/String;

.field private KNOX_PASTE_FLAG:Z

.field private final KNOX_VERSION:Ljava/lang/String;

.field private final MSG_COPY_URI:I

.field private final MSG_DELETE_TEMP_FILE:I

.field private final MSG_DISMISS_DIALOG:I

.field private final MSG_SHOW_DIALOG:I

.field private final MSG_START_SERVICE:I

.field private final MSG_UPDATE_DIALOG:I

.field private clipPickerDataList:Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;

.field private mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

.field private mClipBoardDataUiEventImp:Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;

.field private mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

.field private mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

.field private mClipboardFormatList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardFormatListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/IClipboardFormatListener;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserContext:Landroid/content/Context;

.field private mEnableFormatId:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsCalledPasteApp:Z

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mRCPManager:Landroid/os/RCPManager;

.field private mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

.field private mUm:Landroid/os/IUserManager;

.field private mWorkingUiInterfaceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/clipboardex/ClipboardExService;->sService:Landroid/content/IClipboard;

    .line 134
    const-string/jumbo v0, "ro.config.knox"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "v30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/clipboardex/ClipboardExService;->mHasKnox:Z

    .line 162
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/clipboardex/ClipboardExService;->SEC_FLOATING_FEATURE_VIEWSYSTEM_CLIPBOARD_UI_SERVICE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 671
    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardService$Stub;-><init>()V

    .line 139
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    .line 140
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    .line 145
    new-instance v2, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;

    invoke-direct {v2, p0, v3}, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;-><init>(Lcom/android/server/clipboardex/ClipboardExService;Lcom/android/server/clipboardex/ClipboardExService$1;)V

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->clipPickerDataList:Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;

    .line 146
    const-string v2, "2.0"

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->KNOX_VERSION:Ljava/lang/String;

    .line 147
    iput-boolean v4, p0, Lcom/android/server/clipboardex/ClipboardExService;->KNOX_PASTE_FLAG:Z

    .line 148
    const-string v2, "com.samsung.knox.clipboard.clipremoved"

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->CLIP_ADD_DELETED_ITEM_BROADCAST:Ljava/lang/String;

    .line 149
    const-string v2, "clips.info"

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->CLIPS_INFO:Ljava/lang/String;

    .line 152
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    .line 153
    new-instance v2, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;

    invoke-direct {v2, p0, v3}, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;-><init>(Lcom/android/server/clipboardex/ClipboardExService;Lcom/android/server/clipboardex/ClipboardExService$1;)V

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipBoardDataUiEventImp:Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;

    .line 155
    iput-boolean v4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mIsCalledPasteApp:Z

    .line 158
    iput-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mUm:Landroid/os/IUserManager;

    .line 159
    iput-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Landroid/os/PersonaManager;

    .line 160
    iput-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mRCPManager:Landroid/os/RCPManager;

    .line 1706
    iput v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->MSG_SHOW_DIALOG:I

    .line 1707
    iput v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->MSG_START_SERVICE:I

    .line 1708
    iput v7, p0, Lcom/android/server/clipboardex/ClipboardExService;->MSG_UPDATE_DIALOG:I

    .line 1709
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->MSG_DISMISS_DIALOG:I

    .line 1710
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->MSG_DELETE_TEMP_FILE:I

    .line 1711
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->MSG_COPY_URI:I

    .line 1795
    new-instance v2, Lcom/android/server/clipboardex/ClipboardExService$4;

    invoke-direct {v2, p0}, Lcom/android/server/clipboardex/ClipboardExService$4;-><init>(Lcom/android/server/clipboardex/ClipboardExService;)V

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    .line 672
    iput-object p1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    .line 673
    new-instance v2, Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/16 v3, 0x14

    invoke-direct {v2, v3, p1, v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;-><init>(ILandroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    .line 674
    new-instance v2, Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/16 v3, 0x14

    invoke-direct {v2, v3, p1, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;-><init>(ILandroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    .line 676
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Text"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Bitmap"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "HTMLFlagment"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    const-string/jumbo v2, "user"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Landroid/os/IUserManager;

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mUm:Landroid/os/IUserManager;

    .line 681
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Landroid/os/PersonaManager;

    .line 682
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcp"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RCPManager;

    iput-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mRCPManager:Landroid/os/RCPManager;

    .line 684
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 685
    .local v0, "knoxFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "enterprise.container.remove.progress"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 687
    const-string v2, "com.samsung.knox.clipboard.sync"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 689
    const-string/jumbo v2, "enterprise.container.uninstalled"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 690
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 691
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;-><init>(Lcom/android/server/clipboardex/ClipboardExService;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 694
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 695
    .local v1, "userFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 696
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 697
    const-string v2, "android.intent.action.SECONTAINER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 698
    const-string v2, "android.intent.action.SECONTAINER_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 699
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/clipboardex/ClipboardExService$1;

    invoke-direct {v3, p0}, Lcom/android/server/clipboardex/ClipboardExService$1;-><init>(Lcom/android/server/clipboardex/ClipboardExService;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 723
    return-void
.end method

.method private ListChange(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 2210
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 2211
    const/4 v4, 0x0

    .line 2212
    .local v4, "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2213
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 2214
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    check-cast v4, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 2216
    .restart local v4    # "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    :try_start_0
    invoke-interface {v4, p1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataListChange(I)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2213
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2217
    :catch_0
    move-exception v0

    .line 2218
    .local v0, "de":Landroid/os/DeadObjectException;
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 2219
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2220
    add-int/lit8 v1, v1, -0x1

    .line 2221
    add-int/lit8 v3, v3, -0x1

    .line 2224
    goto :goto_1

    .line 2222
    .end local v0    # "de":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v2

    .line 2223
    .local v2, "re":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2227
    .end local v1    # "i":I
    .end local v2    # "re":Landroid/os/RemoteException;
    .end local v3    # "size":I
    .end local v4    # "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/clipboardex/ClipboardExService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p1, "x1"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/server/clipboardex/ClipboardExService;->doSyncForFota(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/clipboardex/ClipboardExService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isKioskEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mCurrentUserContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/clipboardex/ClipboardExService;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mCurrentUserContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p1, "x1"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/server/clipboardex/ClipboardExService;->updateDataListChange(Landroid/sec/clipboard/data/ClipboardData;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/clipboardex/ClipboardExService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboardex/ClipboardExService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/ClipboardUIManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p1, "x1"    # Landroid/sec/clipboard/ClipboardUIManager;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/clipboardex/ClipboardExService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 130
    iget v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mEnableFormatId:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    return-object v0
.end method

.method static synthetic access$1900()Z
    .locals 1

    .prologue
    .line 130
    sget-boolean v0, Lcom/android/server/clipboardex/ClipboardExService;->SEC_FLOATING_FEATURE_VIEWSYSTEM_CLIPBOARD_UI_SERVICE:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/clipboardex/ClipboardExService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->KNOX_PASTE_FLAG:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/clipboardex/ClipboardExService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/server/clipboardex/ClipboardExService;->KNOX_PASTE_FLAG:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/clipboardex/ClipboardExService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p1, "x1"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/server/clipboardex/ClipboardExService;->ListChange(I)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/clipboardex/ClipboardExService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mIsCalledPasteApp:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/ClipboardConverter;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/ClipboardConverter;)Landroid/sec/clipboard/ClipboardConverter;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p1, "x1"    # Landroid/sec/clipboard/ClipboardConverter;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/clipboardex/ClipboardExService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaManager()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/os/PersonaManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private addData(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 12
    .param p1, "format"    # I
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v8, 0x0

    .line 1254
    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 1255
    const-string v9, "ClipboardExService"

    const-string v10, "addData.."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v7

    .line 1259
    .local v7, "userId":I
    const/16 v9, 0x64

    if-lt v7, v9, :cond_1

    const/16 v9, 0xc2

    if-le v7, v9, :cond_2

    .line 1260
    :cond_1
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->loadSEContainer()V

    .line 1262
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/clipboardex/ClipboardExService;->checkEquals(Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1263
    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v9, :cond_3

    .line 1264
    const-string v9, "ClipboardExService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The data are the same.:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :cond_3
    const/4 v9, 0x5

    if-ne p1, v9, :cond_6

    move-object v6, p2

    .line 1268
    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 1269
    .local v6, "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-direct {p0, v6}, Lcom/android/server/clipboardex/ClipboardExService;->deleteSameClipboardDataUri(Landroid/sec/clipboard/data/list/ClipboardDataUri;)V

    .line 1292
    .end local v6    # "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :cond_4
    invoke-virtual {p2, p1}, Landroid/sec/clipboard/data/ClipboardData;->GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 1293
    .local v0, "addItem":Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v0, :cond_8

    .line 1294
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/android/server/clipboardex/ClipboardExService$3;

    invoke-direct {v9, p0, v0, p1, p2}, Lcom/android/server/clipboardex/ClipboardExService$3;-><init>(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/data/ClipboardData;ILandroid/sec/clipboard/data/ClipboardData;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 1363
    const/4 v8, 0x1

    .line 1368
    .end local v0    # "addItem":Landroid/sec/clipboard/data/ClipboardData;
    :cond_5
    :goto_0
    return v8

    .line 1271
    :cond_6
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v5, p2

    .line 1273
    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 1274
    .local v5, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->getBitmapPath()Ljava/lang/String;

    move-result-object v4

    .line 1275
    .local v4, "imagePath":Ljava/lang/String;
    const-string v1, ""

    .line 1276
    .local v1, "extraFilePath":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->HasExtraData()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1277
    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->getExtraDataPath()Ljava/lang/String;

    move-result-object v1

    .line 1279
    :cond_7
    invoke-direct {p0, v4, v1}, Lcom/android/server/clipboardex/ClipboardExService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "extraFilePath":Ljava/lang/String;
    .end local v4    # "imagePath":Ljava/lang/String;
    .end local v5    # "trgData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    :pswitch_1
    move-object v3, p2

    .line 1282
    check-cast v3, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    .line 1283
    .local v3, "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getFirstImgPath()Ljava/lang/String;

    move-result-object v2

    .line 1284
    .local v2, "firstImagePath":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-direct {p0, v2, v9}, Lcom/android/server/clipboardex/ClipboardExService;->deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1365
    .end local v2    # "firstImagePath":Ljava/lang/String;
    .end local v3    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    .restart local v0    # "addItem":Landroid/sec/clipboard/data/ClipboardData;
    :cond_8
    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v9, :cond_5

    .line 1366
    const-string v9, "ClipboardExService"

    const-string/jumbo v10, "data is null"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1271
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private canReadAcrossProfiles()Z
    .locals 7

    .prologue
    .line 2104
    const/4 v1, 0x1

    .line 2106
    .local v1, "canCrossCopyPaste":Z
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2108
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v3

    .line 2109
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mUm:Landroid/os/IUserManager;

    invoke-interface {v4, v3}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 2110
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v4, "no_cross_profile_copy_paste"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v1, 0x1

    .line 2111
    :goto_0
    const-string v4, "ClipboardExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canReadAcrossProfiles : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2116
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "userId":I
    :cond_0
    :goto_1
    return v1

    .line 2110
    .restart local v0    # "b":Landroid/os/Bundle;
    .restart local v3    # "userId":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2112
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "userId":I
    :catch_0
    move-exception v2

    .line 2113
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private checkEquals(Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 14
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 957
    const/4 v6, 0x0

    .line 958
    .local v6, "result":Z
    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v11}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v0

    .line 959
    .local v0, "dataSize":I
    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v11}, Landroid/sec/clipboard/data/ClipboardDataMgr;->sharedSize()I

    move-result v8

    .line 960
    .local v8, "sharedSize":I
    const-string v11, "ClipboardExService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mClipDataMgr : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mSharedClipDataMgr : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    if-ge v0, v9, :cond_0

    move v1, v9

    .line 964
    .local v1, "isEmptyDataList":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v3

    .line 965
    .local v3, "isKnoxTwo":Z
    if-ge v8, v9, :cond_1

    move v2, v9

    .line 966
    .local v2, "isEmptySharedSize":Z
    :goto_1
    if-eqz v1, :cond_2

    if-nez v3, :cond_2

    .line 967
    const-string v9, "ClipboardExService"

    const-string/jumbo v10, "owner and empty data"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 995
    :goto_2
    return v5

    .end local v1    # "isEmptyDataList":Z
    .end local v2    # "isEmptySharedSize":Z
    .end local v3    # "isKnoxTwo":Z
    :cond_0
    move v1, v10

    .line 963
    goto :goto_0

    .restart local v1    # "isEmptyDataList":Z
    .restart local v3    # "isKnoxTwo":Z
    :cond_1
    move v2, v10

    .line 965
    goto :goto_1

    .line 969
    .restart local v2    # "isEmptySharedSize":Z
    :cond_2
    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    .line 970
    if-eqz v2, :cond_3

    .line 971
    const-string v9, "ClipboardExService"

    const-string/jumbo v10, "knox and empty both data"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 972
    goto :goto_2

    .line 974
    :cond_3
    iget-object v9, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v9, v11, v10}, Landroid/sec/clipboard/data/ClipboardDataMgr;->replaceWithTargetForUser(Landroid/sec/clipboard/data/ClipboardDataMgr;I)V

    .line 975
    iget-object v9, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v9, v10}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getSharedItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v7

    .line 976
    .local v7, "sharedData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v7, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 977
    .local v5, "newResult":Z
    const-string v9, "ClipboardExService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "block in checkEquals : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 982
    .end local v5    # "newResult":Z
    .end local v7    # "sharedData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_4
    iget-object v9, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v9, v10}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v4

    .line 983
    .local v4, "latestData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v9

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v11

    if-eq v9, v11, :cond_5

    move v5, v6

    .line 984
    goto :goto_2

    .line 987
    :cond_5
    invoke-virtual {v4, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 989
    if-eqz v6, :cond_6

    .line 990
    iget-object v9, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v9, v11, v10}, Landroid/sec/clipboard/data/ClipboardDataMgr;->replaceWithTargetForUser(Landroid/sec/clipboard/data/ClipboardDataMgr;I)V

    .line 991
    iget-object v9, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v9, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->reAddForKnox(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 992
    const-string v9, "ClipboardExService"

    const-string v10, "completed reAddForKnox method"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v5, v6

    .line 995
    goto :goto_2
.end method

.method private clearDataList()V
    .locals 4

    .prologue
    .line 1945
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    if-eqz v1, :cond_0

    .line 1946
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeAll()Z

    move-result v0

    .line 1947
    .local v0, "bRes":Z
    const-string v1, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearDataList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    .end local v0    # "bRes":Z
    :goto_0
    return-void

    .line 1949
    :cond_0
    const-string v1, "ClipboardExService"

    const-string v2, "clearDataList"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private copyFileToOwner(ILjava/lang/String;)Ljava/io/File;
    .locals 6
    .param p1, "persId"    # I
    .param p2, "personaPath"    # Ljava/lang/String;

    .prologue
    .line 594
    const/4 v1, 0x0

    .line 595
    .local v1, "tempFile":Ljava/io/File;
    const-string v3, "ClipboardExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "copyFileToUserZero : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :try_start_0
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mRCPManager:Landroid/os/RCPManager;

    if-nez v3, :cond_0

    .line 598
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "rcp"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RCPManager;

    iput-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mRCPManager:Landroid/os/RCPManager;

    .line 600
    :cond_0
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mRCPManager:Landroid/os/RCPManager;

    const/4 v4, 0x0

    const-string v5, "/data/clipboard/deletedClips.xml"

    invoke-virtual {v3, p1, p2, v4, v5}, Landroid/os/RCPManager;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    .line 601
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/clipboard/deletedClips.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "tempFile":Ljava/io/File;
    .local v2, "tempFile":Ljava/io/File;
    move-object v1, v2

    .line 605
    .end local v2    # "tempFile":Ljava/io/File;
    .restart local v1    # "tempFile":Ljava/io/File;
    :goto_0
    return-object v1

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ClipboardExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "inside file copy exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private copyUriFromClipboardSaveService(Ljava/lang/String;)V
    .locals 3
    .param p1, "uriPath"    # Ljava/lang/String;

    .prologue
    .line 1408
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 1409
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1410
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1411
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1412
    const-string/jumbo v2, "uriPath"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1414
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1415
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1418
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private deleteSameClipboardDataUri(Landroid/sec/clipboard/data/list/ClipboardDataUri;)V
    .locals 7
    .param p1, "uriData"    # Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .prologue
    .line 1373
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getDataSize()I

    move-result v0

    .line 1375
    .local v0, "count":I
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1376
    const-string v4, "ClipboardExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteSameClipboardDataUri :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_0
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 1379
    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 1380
    .local v2, "data":Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 1381
    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1378
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 1384
    check-cast v1, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 1385
    .local v1, "currentDataUri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1386
    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    goto :goto_1

    .line 1391
    .end local v1    # "currentDataUri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    .end local v2    # "data":Landroid/sec/clipboard/data/ClipboardData;
    :cond_3
    return-void
.end method

.method private deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "extraFilePath"    # Ljava/lang/String;

    .prologue
    .line 1394
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    const-string v2, "com.samsung.clipboardsaveservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1395
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1396
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1397
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1398
    const-string/jumbo v2, "deletePath"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    const-string/jumbo v2, "extraDataPath"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1401
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1402
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1405
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private doSyncForFota(I)V
    .locals 9
    .param p1, "id"    # I

    .prologue
    .line 571
    const/4 v2, 0x0

    .line 572
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/clipboard"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/shared/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 573
    .local v4, "sharedPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 574
    .local v3, "sharedFolder":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 575
    const-string v6, "ClipboardExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "doSyncForFota : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/user/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/com.sec.knox.bridge/shared_prefs/deletedClips.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, "deletedClipsPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 578
    .local v0, "delClipsFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 579
    invoke-direct {p0, p1, v1}, Lcom/android/server/clipboardex/ClipboardExService;->copyFileToOwner(ILjava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 580
    .local v5, "tempFile":Ljava/io/File;
    if-eqz v5, :cond_2

    .line 581
    invoke-direct {p0, v5}, Lcom/android/server/clipboardex/ClipboardExService;->parseXML(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v2

    .line 582
    invoke-virtual {p0, v5}, Lcom/android/server/clipboardex/ClipboardExService;->deleteDir(Ljava/io/File;)V

    .line 583
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v6, p1, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->updateFotaClips(ILjava/util/ArrayList;)V

    .line 584
    const-string v6, "ClipboardExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateFotaClips : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    .end local v5    # "tempFile":Ljava/io/File;
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/clipboardex/ClipboardExService;->deleteDir(Ljava/io/File;)V

    .line 591
    .end local v0    # "delClipsFile":Ljava/io/File;
    .end local v1    # "deletedClipsPath":Ljava/lang/String;
    :cond_1
    return-void

    .line 586
    .restart local v0    # "delClipsFile":Ljava/io/File;
    .restart local v1    # "deletedClipsPath":Ljava/lang/String;
    .restart local v5    # "tempFile":Ljava/io/File;
    :cond_2
    const-string v6, "ClipboardExService"

    const-string/jumbo v7, "tempfile is null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dump()V
    .locals 5

    .prologue
    .line 1929
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    .line 1930
    .local v1, "size":I
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1931
    const-string v2, "ClipboardExService"

    const-string v3, "====================================================="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1934
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    if-eqz v2, :cond_1

    .line 1935
    const-string v2, "ClipboardExService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1938
    :cond_2
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1939
    const-string v2, "ClipboardExService"

    const-string v3, "====================================================="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    :cond_3
    return-void
.end method

.method private getPersonaManager()Z
    .locals 2

    .prologue
    .line 2198
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    .line 2199
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Landroid/os/PersonaManager;

    .line 2202
    :cond_0
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Landroid/os/PersonaManager;

    if-eqz v0, :cond_1

    .line 2203
    const/4 v0, 0x1

    .line 2206
    :goto_0
    return v0

    .line 2205
    :cond_1
    const-string v0, "ClipboardExService"

    const-string/jumbo v1, "personaManager is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSEAMSCategory(Ljava/lang/String;)I
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1070
    const/4 v4, 0x0

    .line 1071
    .local v4, "pm":Landroid/content/pm/IPackageManager;
    const/4 v1, -0x1

    .line 1072
    .local v1, "category":I
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_2

    .line 1073
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 1078
    const/4 v0, 0x0

    .line 1079
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x0

    .line 1080
    .local v5, "seinfo":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    .line 1082
    const/16 v6, 0x80

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-interface {v4, p1, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1087
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 1088
    const-string v6, "ClipboardExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "appInfo is null for packageName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    move v2, v1

    .line 1098
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "category":I
    .end local v5    # "seinfo":Ljava/lang/String;
    .local v2, "category":I
    :goto_2
    return v2

    .line 1075
    .end local v2    # "category":I
    .restart local v1    # "category":I
    :cond_2
    const-string v6, "ClipboardExService"

    const-string v7, "Cannot get context for package manager"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 1076
    .end local v1    # "category":I
    .restart local v2    # "category":I
    goto :goto_2

    .line 1083
    .end local v2    # "category":I
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "category":I
    .restart local v5    # "seinfo":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1084
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1090
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 1091
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 1092
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "ClipboardExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSEAMSCategory, before checking range, category:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", seinfo:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :cond_4
    const/16 v6, 0x66

    if-eq v1, v6, :cond_5

    const/16 v6, 0xc9

    if-lt v1, v6, :cond_6

    :cond_5
    const/16 v6, 0x1f4

    if-le v1, v6, :cond_7

    .line 1094
    :cond_6
    const/4 v1, 0x0

    .line 1096
    :cond_7
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "ClipboardExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSEAMSCategory, category:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", seinfo:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static getService()Landroid/content/IClipboard;
    .locals 3

    .prologue
    .line 1913
    sget-object v1, Lcom/android/server/clipboardex/ClipboardExService;->sService:Landroid/content/IClipboard;

    if-eqz v1, :cond_0

    .line 1914
    sget-object v1, Lcom/android/server/clipboardex/ClipboardExService;->sService:Landroid/content/IClipboard;

    .line 1925
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 1916
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "clipboard"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1917
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v1

    sput-object v1, Lcom/android/server/clipboardex/ClipboardExService;->sService:Landroid/content/IClipboard;

    .line 1919
    sget-object v1, Lcom/android/server/clipboardex/ClipboardExService;->sService:Landroid/content/IClipboard;

    if-nez v1, :cond_1

    .line 1920
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1921
    const-string v1, "ClipboardExService"

    const-string v2, "Original clipboard service is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    :cond_1
    sget-object v1, Lcom/android/server/clipboardex/ClipboardExService;->sService:Landroid/content/IClipboard;

    goto :goto_0
.end method

.method private getUserId()I
    .locals 4

    .prologue
    .line 166
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 167
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 168
    .local v1, "userId":I
    invoke-static {v1}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    const/4 v1, 0x0

    .line 170
    const-string v2, "ClipboardExService"

    const-string/jumbo v3, "getUserId is BBC"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    return v1
.end method

.method private isClipboardAllowed(ZI)I
    .locals 10
    .param p1, "showToast"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 2122
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v7

    .line 2141
    :goto_0
    return v0

    .line 2126
    :cond_0
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2127
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 2128
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isClipboardAllowedAsUser"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2129
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 2131
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2132
    const-string/jumbo v0, "isClipboardAllowedAsUser"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 2136
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 2141
    goto :goto_0

    .line 2136
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move v0, v7

    .line 2139
    goto :goto_0
.end method

.method private isClipboardShareAllowed(I)I
    .locals 10
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 2148
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v7

    .line 2167
    :goto_0
    return v0

    .line 2152
    :cond_0
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2153
    .local v1, "uri":Landroid/net/Uri;
    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 2154
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isClipboardShareAllowedAsUser"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2155
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 2157
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2158
    const-string/jumbo v0, "isClipboardShareAllowedAsUser"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 2162
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 2167
    goto :goto_0

    .line 2162
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move v0, v7

    .line 2165
    goto :goto_0
.end method

.method private isEnabled(I)Z
    .locals 14
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v12, -0x1

    .line 2073
    const/4 v6, 0x0

    .line 2074
    .local v6, "result":Z
    const-wide/16 v4, -0x1

    .line 2076
    .local v4, "origId":J
    if-eqz p1, :cond_4

    .line 2077
    :try_start_0
    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService;->mUm:Landroid/os/IUserManager;

    if-nez v8, :cond_0

    .line 2078
    const-string/jumbo v8, "user"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    check-cast v8, Landroid/os/IUserManager;

    iput-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService;->mUm:Landroid/os/IUserManager;

    .line 2080
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2081
    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService;->mUm:Landroid/os/IUserManager;

    invoke-interface {v8, p1}, Landroid/os/IUserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 2082
    .local v7, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    .line 2083
    .local v3, "isManagedProfile":Z
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v2

    .line 2084
    .local v2, "isKnoxWorkspace":Z
    if-eqz v3, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    const/4 v6, 0x1

    .line 2085
    :goto_0
    const-string v8, "ClipboardExService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isEnabled, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2096
    .end local v2    # "isKnoxWorkspace":Z
    .end local v3    # "isManagedProfile":Z
    .end local v7    # "ui":Landroid/content/pm/UserInfo;
    :goto_1
    cmp-long v8, v4, v12

    if-eqz v8, :cond_2

    .line 2097
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2100
    :cond_2
    :goto_2
    return v6

    .line 2084
    .restart local v2    # "isKnoxWorkspace":Z
    .restart local v3    # "isManagedProfile":Z
    .restart local v7    # "ui":Landroid/content/pm/UserInfo;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 2087
    .end local v2    # "isKnoxWorkspace":Z
    .end local v3    # "isManagedProfile":Z
    .end local v7    # "ui":Landroid/content/pm/UserInfo;
    :cond_4
    const/4 v6, 0x1

    goto :goto_1

    .line 2089
    :catch_0
    move-exception v0

    .line 2090
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v8, "ClipboardExService"

    const-string/jumbo v9, "isEnabled() RemoteException!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2096
    cmp-long v8, v4, v12

    if-eqz v8, :cond_2

    .line 2097
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 2092
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2093
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v8, "ClipboardExService"

    const-string/jumbo v9, "isEnabled() Exception!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2096
    cmp-long v8, v4, v12

    if-eqz v8, :cond_2

    .line 2097
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 2096
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    cmp-long v9, v4, v12

    if-eqz v9, :cond_5

    .line 2097
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_5
    throw v8
.end method

.method private isKioskEnabled()Z
    .locals 4

    .prologue
    .line 656
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 657
    .local v0, "bRet":Z
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 658
    const-string v1, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isKioskEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_0
    return v0
.end method

.method private isKnoxKeyguardShowing()Z
    .locals 6

    .prologue
    .line 249
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 252
    .local v0, "ident":J
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v2

    .line 254
    .local v2, "userId":I
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 255
    const-string v3, "ClipboardExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isKnoxKeyguardShowing getPersonaId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 259
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaManager()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 260
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v3, v2}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v3, v2}, Landroid/os/PersonaManager;->getKeyguardShowState(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 261
    const/4 v3, 0x1

    .line 265
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isSEContainerClipboardEnabled(I)I
    .locals 10
    .param p1, "category"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 2171
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v7

    .line 2191
    :goto_0
    return v0

    .line 2174
    :cond_0
    const-string v0, "content://com.sec.knox.provider/SeamsPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2175
    .local v1, "uri":Landroid/net/Uri;
    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 2176
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "getSEContainerClipboardMode"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2177
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 2179
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2180
    const-string/jumbo v0, "getSEContainerClipboardMode"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 2184
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2190
    const-string v0, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSEContainerClipboardEnabled for secontainerid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 2191
    goto :goto_0

    .line 2184
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2187
    :cond_2
    const-string v0, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSEContainerClipboardEnabled for secontainerid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is -1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2188
    goto/16 :goto_0
.end method

.method private isServiceCallFromOther()Z
    .locals 8

    .prologue
    .line 231
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 232
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 234
    .local v1, "callingUser":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 237
    .local v4, "ident":J
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getCurrentListOwnerUid()I

    move-result v2

    .line 239
    .local v2, "currUser":I
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ClipboardExService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " isServiceCallFromOther getPersonaId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 242
    if-eq v1, v2, :cond_1

    .line 243
    const/4 v3, 0x1

    .line 245
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private loadSEContainer()V
    .locals 10

    .prologue
    .line 1034
    const/4 v0, 0x0

    .line 1036
    .local v0, "callerName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1040
    :goto_0
    const/4 v1, 0x0

    .line 1041
    .local v1, "cat":I
    if-eqz v0, :cond_0

    .line 1042
    invoke-direct {p0, v0}, Lcom/android/server/clipboardex/ClipboardExService;->getSEAMSCategory(Ljava/lang/String;)I

    move-result v1

    .line 1043
    if-gez v1, :cond_1

    .line 1044
    const-string v7, "ClipboardExService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "loadSEContainer, error getting SEAMS category value, cat: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :cond_0
    :goto_1
    return-void

    .line 1037
    .end local v1    # "cat":I
    :catch_0
    move-exception v2

    .line 1038
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "ClipboardExService"

    const-string v8, "Exception in getPackageNameFromAppProcesses"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1045
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "cat":I
    :cond_1
    if-lez v1, :cond_3

    .line 1046
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1047
    .local v4, "ident":J
    invoke-direct {p0, v1}, Lcom/android/server/clipboardex/ClipboardExService;->isSEContainerClipboardEnabled(I)I

    move-result v3

    .line 1048
    .local v3, "status":I
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1049
    const/4 v7, 0x1

    if-ne v3, v7, :cond_2

    .line 1050
    iget-object v7, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v7, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->loadSEContainerDB(I)V

    goto :goto_1

    .line 1052
    :cond_2
    const-string v7, "ClipboardExService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "loadSEContainter, cat:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", doesn\'t have clipboard enabled"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-object v7, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->loadSEContainerDB(I)V

    goto :goto_1

    .line 1056
    .end local v3    # "status":I
    .end local v4    # "ident":J
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v6

    .line 1058
    .local v6, "userId":I
    if-eqz v6, :cond_4

    const/16 v7, 0x64

    if-ge v6, v7, :cond_4

    iget-object v7, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v7, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isManagedProfile(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1059
    const-string v7, "ClipboardExService"

    const-string/jumbo v8, "loadSEContainer, before loadSECOntainerDB, isManagedProfile should have been false, cat :  userId + 1000"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget-object v7, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    add-int/lit16 v8, v6, 0x3e8

    invoke-virtual {v7, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->loadSEContainerDB(I)V

    goto :goto_1

    .line 1063
    :cond_4
    iget-object v7, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v7, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->loadSEContainerDB(I)V

    goto :goto_1
.end method

.method private parseXML(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "delClip"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 609
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 612
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 613
    .local v2, "factoryObject":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v6, 0x0

    .line 614
    .local v6, "myparser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 615
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 616
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    :try_start_1
    invoke-interface {v6, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 619
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 620
    .local v1, "event":I
    :goto_0
    const/4 v9, 0x1

    if-eq v1, v9, :cond_2

    .line 621
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 622
    .local v7, "name":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 634
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 635
    goto :goto_0

    .line 626
    :pswitch_1
    const-string v9, "boolean"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 627
    const/4 v9, 0x0

    const-string/jumbo v10, "name"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 628
    .local v8, "val":Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    const-string v9, "ClipboardExService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "parseXML : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 636
    .end local v1    # "event":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "val":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 637
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_2
    :try_start_2
    const-string v9, "ClipboardExService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "inside exception for parsexml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 639
    if-eqz v3, :cond_1

    .line 641
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 647
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    return-object v5

    .line 639
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "event":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :cond_2
    if-eqz v4, :cond_4

    .line 641
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v3, v4

    .line 644
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 642
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 643
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v9, "ClipboardExService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "inside exception for Close connection"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 644
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 642
    .end local v1    # "event":I
    :catch_2
    move-exception v0

    .line 643
    const-string v9, "ClipboardExService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "inside exception for Close connection"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 639
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v3, :cond_3

    .line 641
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 644
    :cond_3
    :goto_5
    throw v9

    .line 642
    :catch_3
    move-exception v0

    .line 643
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v10, "ClipboardExService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "inside exception for Close connection"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 639
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 636
    :catch_4
    move-exception v0

    goto/16 :goto_2

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "event":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :cond_4
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 622
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private registerKnoxModeChangeObserver()V
    .locals 6

    .prologue
    .line 727
    const-string v3, "ClipboardExService"

    const-string v4, "ClipboardExService.registerKnoxModeChangeObserver() Registered..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :try_start_0
    const-string/jumbo v3, "persona"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 730
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PersonaManagerService;

    .line 731
    .local v2, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-nez v2, :cond_0

    .line 732
    const-string v3, "ClipboardExService"

    const-string v4, "ClipboardExService.onKnoxModeChange() pms == null...  should not happened"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :goto_0
    return-void

    .line 736
    .restart local v0    # "b":Landroid/os/IBinder;
    .restart local v2    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :cond_0
    new-instance v3, Lcom/android/server/clipboardex/ClipboardExService$2;

    invoke-direct {v3, p0}, Lcom/android/server/clipboardex/ClipboardExService$2;-><init>(Lcom/android/server/clipboardex/ClipboardExService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PersonaManagerService;->registerKnoxModeChangeObserver(Landroid/content/pm/IKnoxModeChangeObserver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 754
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :catch_0
    move-exception v1

    .line 755
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "ClipboardExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Error during calling BMS.registerKnoxModeChangeObserver(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private sendOriginalClipboardData(Landroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)V
    .locals 13
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1432
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    move-object v8, p1

    .line 1433
    check-cast v8, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 1435
    .local v8, "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :try_start_0
    invoke-static {}, Lcom/android/server/clipboardex/ClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v11

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getClipData()Landroid/content/ClipData;

    move-result-object v12

    invoke-interface {v11, v12, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1436
    sget-boolean v11, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 1437
    const-string v11, "ClipboardExService"

    const-string v12, "String was copied.(Format.TEXT)"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1518
    .end local v8    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_0
    :goto_0
    return-void

    .line 1439
    .restart local v8    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :catch_0
    move-exception v3

    .line 1440
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1442
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v8    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_1
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_2

    .line 1443
    new-instance v8, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v8}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 1444
    .restart local v8    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    const/4 v11, 0x2

    invoke-virtual {p1, v11, v8}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    .line 1446
    :try_start_1
    invoke-static {}, Lcom/android/server/clipboardex/ClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v11

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getClipData()Landroid/content/ClipData;

    move-result-object v12

    invoke-interface {v11, v12, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1447
    sget-boolean v11, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 1448
    const-string v11, "ClipboardExService"

    const-string v12, "String was copied.(Format.HTML)"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1450
    :catch_1
    move-exception v3

    .line 1451
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1453
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v8    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_2
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_3

    move-object v9, p1

    .line 1454
    check-cast v9, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 1456
    .local v9, "uri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :try_start_2
    invoke-static {}, Lcom/android/server/clipboardex/ClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v11

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getClipData()Landroid/content/ClipData;

    move-result-object v12

    invoke-interface {v11, v12, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1459
    sget-boolean v11, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 1460
    const-string v11, "ClipboardExService"

    const-string v12, "String was copied.(Format.URI)"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1462
    :catch_2
    move-exception v3

    .line 1463
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1465
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v9    # "uri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :cond_3
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_4

    move-object v5, p1

    .line 1466
    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    .line 1468
    .local v5, "intent":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    :try_start_3
    invoke-static {}, Lcom/android/server/clipboardex/ClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v11

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getClipData()Landroid/content/ClipData;

    move-result-object v12

    invoke-interface {v11, v12, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1471
    sget-boolean v11, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 1472
    const-string v11, "ClipboardExService"

    const-string v12, "String was copied.(Format.INTENT)"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 1474
    :catch_3
    move-exception v3

    .line 1475
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1477
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "intent":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    :cond_4
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_8

    move-object v7, p1

    .line 1478
    check-cast v7, Landroid/sec/clipboard/data/list/ClipboardDataUriList;

    .line 1479
    .local v7, "multiUri":Landroid/sec/clipboard/data/list/ClipboardDataUriList;
    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->getUriList()Ljava/util/ArrayList;

    move-result-object v10

    .line 1480
    .local v10, "uries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    .line 1481
    .local v0, "N":I
    if-eqz v10, :cond_5

    .line 1482
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1484
    :cond_5
    const/4 v1, 0x0

    .line 1485
    .local v1, "clipData":Landroid/content/ClipData;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_7

    .line 1486
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    .line 1487
    .local v9, "uri":Landroid/net/Uri;
    if-nez v1, :cond_6

    .line 1488
    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12, v9}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v1

    .line 1485
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1490
    :cond_6
    new-instance v11, Landroid/content/ClipData$Item;

    invoke-direct {v11, v9}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v11}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_2

    .line 1494
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_7
    if-eqz v1, :cond_0

    .line 1495
    :try_start_4
    invoke-static {}, Lcom/android/server/clipboardex/ClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v11

    invoke-interface {v11, v1, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1496
    sget-boolean v11, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 1497
    const-string v11, "ClipboardExService"

    const-string v12, "String was copied.(Format.URI_LIST)"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 1500
    :catch_4
    move-exception v3

    .line 1501
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1503
    .end local v0    # "N":I
    .end local v1    # "clipData":Landroid/content/ClipData;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "i":I
    .end local v7    # "multiUri":Landroid/sec/clipboard/data/list/ClipboardDataUriList;
    .end local v10    # "uries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_8
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_0

    move-object v6, p1

    .line 1504
    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;

    .line 1505
    .local v6, "multiType":Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    .line 1508
    .local v2, "clipdata":Landroid/content/ClipData;
    if-eqz v2, :cond_0

    .line 1509
    :try_start_5
    invoke-static {}, Lcom/android/server/clipboardex/ClipboardExService;->getService()Landroid/content/IClipboard;

    move-result-object v11

    invoke-interface {v11, v2, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1510
    sget-boolean v11, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 1511
    const-string v11, "ClipboardExService"

    const-string v12, "String was copied.(Format.MULTIPLE_TYPE)"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 1514
    :catch_5
    move-exception v3

    .line 1515
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private updateDataListChange(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 1
    .param p1, "clip"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 1421
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/clipboardex/ClipboardExService;->ListChange(I)V

    .line 1423
    if-eqz p1, :cond_0

    .line 1424
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/clipboardex/ClipboardExService;->ObserverUpdate(ILandroid/sec/clipboard/data/ClipboardData;)V

    .line 1426
    :cond_0
    return-void
.end method


# virtual methods
.method public AddClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .locals 2
    .param p1, "listener"    # Landroid/sec/clipboard/IClipboardFormatListener;

    .prologue
    .line 848
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 849
    .local v0, "Result":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 850
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    :cond_0
    return v0

    .line 848
    .end local v0    # "Result":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 14
    .param p1, "format"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 881
    monitor-enter p0

    .line 882
    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v10

    invoke-direct {p0, v9, v10}, Lcom/android/server/clipboardex/ClipboardExService;->isClipboardAllowed(ZI)I

    move-result v5

    .line 883
    .local v5, "isClipboardAllowed":I
    if-nez v5, :cond_0

    .line 884
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->clearDataList()V

    .line 885
    monitor-exit p0

    move-object v0, v8

    .line 952
    :goto_0
    return-object v0

    .line 888
    :cond_0
    const/4 v0, 0x0

    .line 889
    .local v0, "Result":Landroid/sec/clipboard/data/ClipboardData;
    const/4 v4, 0x0

    .line 890
    .local v4, "iClipboardDataCount":I
    iget-object v9, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v9}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v2

    .line 891
    .local v2, "currentClipboardDataCount":I
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v6

    .line 893
    .local v6, "isKnoxTwoMode":Z
    iget-object v9, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    if-eqz v9, :cond_7

    .line 895
    if-eqz v6, :cond_1

    iget-object v9, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    if-eqz v9, :cond_1

    .line 896
    iget-object v9, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v9}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v9

    add-int v4, v2, v9

    .line 902
    :goto_1
    if-lez v4, :cond_7

    .line 903
    const/4 v1, 0x0

    .line 905
    .local v1, "cbData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/server/clipboardex/ClipboardExService;->isClipboardShareAllowed(I)I

    move-result v9

    if-nez v9, :cond_4

    .line 906
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->loadSEContainer()V

    .line 907
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_3

    .line 908
    iget-object v9, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v9, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v9

    invoke-virtual {v9}, Landroid/sec/clipboard/data/ClipboardData;->getCallerUid()J

    move-result-wide v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    int-to-long v12, v9

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    .line 909
    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v8, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    monitor-exit p0

    goto :goto_0

    .line 953
    .end local v1    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    .end local v2    # "currentClipboardDataCount":I
    .end local v3    # "i":I
    .end local v4    # "iClipboardDataCount":I
    .end local v5    # "isClipboardAllowed":I
    .end local v6    # "isKnoxTwoMode":Z
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 899
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v2    # "currentClipboardDataCount":I
    .restart local v4    # "iClipboardDataCount":I
    .restart local v5    # "isClipboardAllowed":I
    .restart local v6    # "isKnoxTwoMode":Z
    :cond_1
    move v4, v2

    goto :goto_1

    .line 907
    .restart local v1    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v3    # "i":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 912
    :cond_3
    :try_start_1
    monitor-exit p0

    move-object v0, v8

    goto :goto_0

    .line 918
    .end local v3    # "i":I
    :cond_4
    if-eqz v6, :cond_5

    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isServiceCallFromOther()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 919
    const-string v9, "ClipboardExService"

    const-string v10, "ClipboardExService GetClipboardData() abnormal called!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    monitor-exit p0

    move-object v0, v8

    goto :goto_0

    .line 923
    :cond_5
    iget-boolean v9, p0, Lcom/android/server/clipboardex/ClipboardExService;->KNOX_PASTE_FLAG:Z

    if-eqz v9, :cond_8

    if-eqz v6, :cond_8

    iget-object v9, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v9}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v9

    if-lez v9, :cond_8

    .line 924
    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getSharedItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    .line 925
    const-string v8, "ClipboardExService"

    const-string v9, "KNOX2 SYNC data has paste item & cbdata is SYNC item assign"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :goto_3
    if-eqz v1, :cond_7

    .line 941
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v8, :cond_6

    .line 942
    const-string v8, "ClipboardExService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getItem id : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", input id : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_6
    if-eq p1, v11, :cond_c

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v8

    if-eq v8, p1, :cond_c

    .line 945
    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/ClipboardData;->GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 952
    .end local v1    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_7
    :goto_4
    monitor-exit p0

    goto/16 :goto_0

    .line 926
    .restart local v1    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_8
    if-lez v2, :cond_b

    .line 928
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v7

    .line 929
    .local v7, "userId":I
    const/16 v8, 0x64

    if-lt v7, v8, :cond_9

    const/16 v8, 0xc2

    if-le v7, v8, :cond_a

    .line 930
    :cond_9
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->loadSEContainer()V

    .line 932
    :cond_a
    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    .line 933
    const-string v8, "ClipboardExService"

    const-string/jumbo v9, "owner copy and paste cdData"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 935
    .end local v7    # "userId":I
    :cond_b
    const-string v9, "ClipboardExService"

    const-string v10, "KNOX2 SYNC data has not paste item so return null "

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v8

    goto/16 :goto_0

    .line 947
    :cond_c
    move-object v0, v1

    goto :goto_4
.end method

.method public GetClipboardFormatName(I)Ljava/lang/String;
    .locals 3
    .param p1, "format"    # I

    .prologue
    .line 827
    const-string v0, ""

    .line 829
    .local v0, "Result":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 830
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "Result":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 832
    .restart local v0    # "Result":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public IsShowUIClipboardData()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1738
    const/4 v0, 0x0

    .line 1739
    .local v0, "Result":Z
    sget-boolean v1, Lcom/android/server/clipboardex/ClipboardExService;->SEC_FLOATING_FEATURE_VIEWSYSTEM_CLIPBOARD_UI_SERVICE:Z

    if-eqz v1, :cond_0

    .line 1740
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    if-eqz v1, :cond_0

    .line 1741
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardUIManager;->isShowing()Z

    move-result v0

    .line 1744
    :cond_0
    return v0
.end method

.method public ObserverUpdate(ILandroid/sec/clipboard/data/ClipboardData;)V
    .locals 4
    .param p1, "format"    # I
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 769
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/IClipboardFormatListener;

    .line 771
    .local v0, "Item":Landroid/sec/clipboard/IClipboardFormatListener;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/sec/clipboard/IClipboardFormatListener;->onNewClipboardData(ILandroid/sec/clipboard/data/ClipboardData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 772
    :catch_0
    move-exception v1

    .line 773
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 776
    .end local v0    # "Item":Landroid/sec/clipboard/IClipboardFormatListener;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V
    .locals 0
    .param p1, "iRegInterface"    # Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2238
    return-void
.end method

.method public RegistClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V
    .locals 5
    .param p1, "iRegInterface"    # Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1529
    monitor-enter p0

    .line 1530
    :try_start_0
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 1531
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1532
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->clipPickerDataList:Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;

    invoke-interface {p1, v3}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V

    .line 1537
    :goto_0
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipBoardDataUiEventImp:Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;

    invoke-interface {p1, v3}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataUiEvent(Landroid/sec/clipboard/IClipboardDataUiEvent;)V

    .line 1538
    const/4 v1, 0x0

    .line 1539
    .local v1, "isExist":Z
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 1540
    .local v2, "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1541
    const/4 v1, 0x1

    .line 1545
    .end local v2    # "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    :cond_1
    if-nez v1, :cond_4

    .line 1546
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1555
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "isExist":Z
    :cond_2
    :goto_1
    monitor-exit p0

    .line 1556
    return-void

    .line 1535
    :cond_3
    iget-object v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-interface {p1, v3}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V

    goto :goto_0

    .line 1555
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1548
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "isExist":Z
    :cond_4
    :try_start_1
    const-string v3, "ClipboardExService"

    const-string/jumbo v4, "exist uiInterface!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1551
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "isExist":Z
    :cond_5
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 1552
    const-string v3, "ClipboardExService"

    const-string v4, "RegistClipboardWorkingFormUiInterface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public RegisterClipboardFormat(Ljava/lang/String;)I
    .locals 7
    .param p1, "formatName"    # Ljava/lang/String;

    .prologue
    .line 800
    const/4 v1, 0x0

    .line 802
    .local v1, "Result":I
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 803
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, 0x2

    .line 804
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    :cond_0
    :goto_0
    return v1

    .line 806
    :cond_1
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 807
    .local v0, "Keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 808
    .local v3, "iVal":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 809
    .local v4, "sValue":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 810
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 811
    goto :goto_0
.end method

.method public RemoveClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .locals 2
    .param p1, "listener"    # Landroid/sec/clipboard/IClipboardFormatListener;

    .prologue
    .line 864
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 865
    .local v0, "Result":Z
    if-eqz v0, :cond_0

    .line 866
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 868
    :cond_0
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 870
    :goto_0
    return v0

    .line 868
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public SetClipboardData(ILandroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)Z
    .locals 12
    .param p1, "format"    # I
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 1110
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1111
    const-string v9, "ClipboardExService"

    const-string/jumbo v10, "not enabled! SetClipboardData()"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 1164
    :cond_0
    :goto_0
    return v6

    .line 1115
    :cond_1
    if-nez p2, :cond_2

    move v6, v8

    .line 1116
    goto :goto_0

    .line 1118
    :cond_2
    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v9, :cond_3

    .line 1119
    const-string v9, "ClipboardExService"

    const-string v10, "==================================================================="

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :cond_3
    const/4 v6, 0x0

    .line 1122
    .local v6, "result":Z
    monitor-enter p0

    .line 1123
    :try_start_0
    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v9, :cond_4

    .line 1124
    const-string v9, "ClipboardExService"

    const-string/jumbo v10, "in synchronized"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :cond_4
    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v10

    invoke-direct {p0, v9, v10}, Lcom/android/server/clipboardex/ClipboardExService;->isClipboardAllowed(ZI)I

    move-result v9

    if-nez v9, :cond_5

    .line 1128
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->clearDataList()V

    .line 1129
    monitor-exit p0

    move v6, v8

    goto :goto_0

    .line 1134
    :cond_5
    if-nez p2, :cond_6

    .line 1135
    monitor-exit p0

    move v6, v8

    goto :goto_0

    .line 1138
    :cond_6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1139
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1140
    .local v1, "callingUser":I
    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_7

    .line 1142
    :try_start_1
    iget-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, p3, v9, v10}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/clipboardex/ClipboardExService;->mCurrentUserContext:Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1148
    :cond_7
    :goto_1
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboardex/ClipboardExService;->addData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1150
    invoke-direct {p0, p3}, Lcom/android/server/clipboardex/ClipboardExService;->getSEAMSCategory(Ljava/lang/String;)I

    move-result v2

    .line 1151
    .local v2, "cat":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1152
    .local v4, "ident":J
    invoke-direct {p0, v2}, Lcom/android/server/clipboardex/ClipboardExService;->isSEContainerClipboardEnabled(I)I

    move-result v7

    .line 1153
    .local v7, "status":I
    const-string v8, "ClipboardExService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setClipboardData,callingPackage = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "getSEAMSCategory result: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1155
    if-eq v7, v11, :cond_8

    .line 1156
    invoke-direct {p0, p2, p3}, Lcom/android/server/clipboardex/ClipboardExService;->sendOriginalClipboardData(Landroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)V

    .line 1158
    :cond_8
    const/4 v6, 0x1

    .line 1160
    .end local v2    # "cat":I
    .end local v4    # "ident":J
    .end local v7    # "status":I
    :cond_9
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1161
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 1162
    const-string v8, "ClipboardExService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "==================================================================="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1143
    :catch_0
    move-exception v3

    .line 1144
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v8, "ClipboardExService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "callingPackage :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", NameNotFoundException :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1160
    .end local v0    # "callingUid":I
    .end local v1    # "callingUser":I
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8
.end method

.method public SetClipboardDataOriginalToEx(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 3
    .param p1, "format"    # I
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v0, 0x0

    .line 1206
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1207
    const-string v1, "ClipboardExService"

    const-string/jumbo v2, "not enabled! SetClipboardDataOriginalToEx()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/clipboardex/ClipboardExService;->setData(ILandroid/sec/clipboard/data/ClipboardData;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public SetClipboardDataWithoutSendingOrginalClipboard(ILandroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)Z
    .locals 4
    .param p1, "format"    # I
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1168
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1169
    const-string v2, "ClipboardExService"

    const-string/jumbo v3, "not enabled! SetClipboardDataWithoutSendingOrginalClipboard()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1202
    :cond_0
    :goto_0
    return v0

    .line 1173
    :cond_1
    if-nez p2, :cond_2

    move v0, v1

    .line 1174
    goto :goto_0

    .line 1177
    :cond_2
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1178
    const-string v2, "ClipboardExService"

    const-string v3, "======== SetClipboardDataWithoutSendingOrginalClipboard =========="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :cond_3
    const/4 v0, 0x0

    .line 1181
    .local v0, "result":Z
    monitor-enter p0

    .line 1182
    :try_start_0
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 1183
    const-string v2, "ClipboardExService"

    const-string v3, "----------------------------------------------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    const-string v2, "ClipboardExService"

    const-string/jumbo v3, "in synchronized"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :cond_4
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/clipboardex/ClipboardExService;->isClipboardAllowed(ZI)I

    move-result v2

    if-nez v2, :cond_5

    .line 1188
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->clearDataList()V

    .line 1189
    monitor-exit p0

    move v0, v1

    goto :goto_0

    .line 1193
    :cond_5
    if-nez p2, :cond_6

    .line 1194
    monitor-exit p0

    move v0, v1

    goto :goto_0

    .line 1197
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboardex/ClipboardExService;->addData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 1198
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1199
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1200
    const-string v1, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==================================================================="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1198
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public SetSyncClipboardData(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2234
    const/4 v0, 0x0

    return v0
.end method

.method public ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 3
    .param p1, "format"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 1715
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1716
    const-string v0, "ClipboardExService"

    const-string/jumbo v1, "show ui clipboard dialog in service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1733
    :cond_1
    :goto_0
    return-void

    .line 1726
    :cond_2
    iput p1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mEnableFormatId:I

    .line 1727
    iput-object p2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 1729
    sget-boolean v0, Lcom/android/server/clipboardex/ClipboardExService;->SEC_FLOATING_FEATURE_VIEWSYSTEM_CLIPBOARD_UI_SERVICE:Z

    if-eqz v0, :cond_1

    .line 1730
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1731
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public UpdateClipboardDB(I)V
    .locals 0
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2231
    return-void
.end method

.method public UpdateUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 2
    .param p1, "format"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    .line 1754
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->IsShowUIClipboardData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1765
    :goto_0
    return-void

    .line 1759
    :cond_0
    iput p1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mEnableFormatId:I

    .line 1760
    iput-object p2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 1762
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1763
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public callPasteMenuFromApp(I)V
    .locals 4
    .param p1, "enabled"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 2053
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2054
    const-string v0, "ClipboardExService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callPasteMenuFromApp() in service. enabled :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    :cond_0
    if-nez p1, :cond_2

    .line 2057
    iput-boolean v3, p0, Lcom/android/server/clipboardex/ClipboardExService;->mIsCalledPasteApp:Z

    .line 2065
    :cond_1
    :goto_0
    return-void

    .line 2058
    :cond_2
    if-ne p1, v3, :cond_3

    .line 2059
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mIsCalledPasteApp:Z

    goto :goto_0

    .line 2061
    :cond_3
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2062
    const-string v0, "ClipboardExService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrong param in setPastedFromApp() enabled :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteDir(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 651
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    .line 652
    return-void
.end method

.method public dismissUIDataDialog()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    .line 1772
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1773
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1778
    return-void
.end method

.method public getClipedStrings(II)Ljava/util/List;
    .locals 13
    .param p1, "metaType"    # I
    .param p2, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1955
    monitor-enter p0

    .line 1956
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1957
    .local v6, "metaDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1960
    .local v1, "clipText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isServiceCallFromOther()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1961
    const-string v11, "ClipboardExService"

    const-string v12, "ClipboardExService getClipedStrings() abnormal called!!!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    monitor-exit p0

    .line 2019
    :goto_0
    return-object v6

    .line 1966
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v11}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v11

    if-ge v4, v11, :cond_1

    .line 1967
    iget-object v11, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v11, v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 1968
    .local v2, "clipboardData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5

    .line 1969
    move-object v0, v2

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    move-object v9, v0

    .line 1970
    .local v9, "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v9}, Landroid/sec/clipboard/data/list/ClipboardDataText;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 1971
    if-nez p1, :cond_2

    .line 1972
    invoke-virtual {v9}, Landroid/sec/clipboard/data/list/ClipboardDataText;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1973
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1974
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ne v11, p2, :cond_3

    .line 2019
    .end local v2    # "clipboardData":Landroid/sec/clipboard/data/ClipboardData;
    .end local v9    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_1
    :goto_2
    monitor-exit p0

    goto :goto_0

    .line 2020
    .end local v1    # "clipText":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "metaDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 1978
    .restart local v1    # "clipText":Ljava/lang/String;
    .restart local v2    # "clipboardData":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v4    # "i":I
    .restart local v6    # "metaDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_2
    :try_start_1
    new-instance v8, Landroid/util/secutil/SmartParser;

    invoke-virtual {v9}, Landroid/sec/clipboard/data/list/ClipboardDataText;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v11, v12}, Landroid/util/secutil/SmartParser;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 1979
    .local v8, "parser":Landroid/util/secutil/SmartParser;
    invoke-virtual {v8}, Landroid/util/secutil/SmartParser;->getTotalData()Landroid/util/secutil/SmartParsingData;

    move-result-object v10

    .line 1980
    .local v10, "totalData":Landroid/util/secutil/SmartParsingData;
    invoke-virtual {v10, p1}, Landroid/util/secutil/SmartParsingData;->getCount(I)I

    move-result v11

    if-lez v11, :cond_3

    .line 1981
    invoke-virtual {v10, p1}, Landroid/util/secutil/SmartParsingData;->getInfo(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 1982
    .local v7, "parseResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "idx":I
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_3

    .line 1983
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1984
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ne v11, p2, :cond_4

    .line 2015
    .end local v5    # "idx":I
    .end local v7    # "parseResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "parser":Landroid/util/secutil/SmartParser;
    .end local v9    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v10    # "totalData":Landroid/util/secutil/SmartParsingData;
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eq v11, p2, :cond_1

    .line 1966
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1982
    .restart local v5    # "idx":I
    .restart local v7    # "parseResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "parser":Landroid/util/secutil/SmartParser;
    .restart local v9    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .restart local v10    # "totalData":Landroid/util/secutil/SmartParsingData;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1991
    .end local v5    # "idx":I
    .end local v7    # "parseResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "parser":Landroid/util/secutil/SmartParser;
    .end local v9    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v10    # "totalData":Landroid/util/secutil/SmartParsingData;
    :cond_5
    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_3

    .line 1992
    move-object v0, v2

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    move-object v3, v0

    .line 1993
    .local v3, "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getPlainText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 1994
    if-nez p1, :cond_6

    .line 1995
    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getPlainText()Ljava/lang/String;

    move-result-object v1

    .line 1996
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1997
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ne v11, p2, :cond_3

    goto :goto_2

    .line 2001
    :cond_6
    new-instance v8, Landroid/util/secutil/SmartParser;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getPlainText()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v11, v12}, Landroid/util/secutil/SmartParser;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 2002
    .restart local v8    # "parser":Landroid/util/secutil/SmartParser;
    invoke-virtual {v8}, Landroid/util/secutil/SmartParser;->getTotalData()Landroid/util/secutil/SmartParsingData;

    move-result-object v10

    .line 2003
    .restart local v10    # "totalData":Landroid/util/secutil/SmartParsingData;
    invoke-virtual {v10, p1}, Landroid/util/secutil/SmartParsingData;->getCount(I)I

    move-result v11

    if-lez v11, :cond_3

    .line 2004
    invoke-virtual {v10, p1}, Landroid/util/secutil/SmartParsingData;->getInfo(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 2005
    .restart local v7    # "parseResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .restart local v5    # "idx":I
    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_3

    .line 2006
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2007
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    if-eq v11, p2, :cond_3

    .line 2005
    add-int/lit8 v5, v5, 0x1

    goto :goto_4
.end method

.method public getDataSize()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 999
    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v0

    .line 1001
    .local v0, "dataSize":I
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/clipboardex/ClipboardExService;->isClipboardAllowed(ZI)I

    move-result v4

    if-nez v4, :cond_0

    .line 1002
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->clearDataList()V

    .line 1024
    :goto_0
    return v3

    .line 1004
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/clipboardex/ClipboardExService;->isClipboardShareAllowed(I)I

    move-result v4

    if-nez v4, :cond_3

    .line 1005
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->loadSEContainer()V

    .line 1006
    const/4 v3, 0x0

    .line 1007
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1008
    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardData;->getCallerUid()J

    move-result-wide v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1009
    add-int/lit8 v3, v3, 0x1

    .line 1007
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1012
    :cond_2
    const-string v4, "ClipboardExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDataSize : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1018
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1019
    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->sharedSize()I

    move-result v2

    .line 1020
    .local v2, "sharedSize":I
    const-string v4, "ClipboardExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDataSize : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    add-int v3, v0, v2

    goto :goto_0

    .end local v2    # "sharedSize":I
    :cond_4
    move v3, v0

    .line 1024
    goto :goto_0
.end method

.method public getPersonaId()I
    .locals 2

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/clipboardex/ClipboardExService;->mHasKnox:Z

    if-eqz v1, :cond_1

    .line 178
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaManager()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v1}, Landroid/os/PersonaManager;->getFocusedUser()I

    move-result v0

    .line 186
    :goto_0
    return v0

    .line 181
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    goto :goto_0

    .line 184
    :cond_1
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getUserId()I

    move-result v0

    goto :goto_0
.end method

.method public getScrapDataSize()I
    .locals 2

    .prologue
    .line 1029
    const-string v0, "ClipboardExService"

    const-string/jumbo v1, "getScrapDataSize!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 2069
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/clipboardex/ClipboardExService;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method isKnoxTwoEnabled()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 192
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 193
    .local v1, "versionInfo":Landroid/os/Bundle;
    const-string v5, "2.0"

    const-string/jumbo v6, "version"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 194
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaManager()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 195
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 196
    .local v2, "ident":J
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v0

    .line 197
    .local v0, "currUser":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 199
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 200
    const-string v5, "ClipboardExService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isKnoxTwoEnabled getPersonaId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v5, v0}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 204
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 205
    const-string v5, "ClipboardExService"

    const-string v6, "Current user is a USER, hence return false"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v0    # "currUser":I
    .end local v2    # "ident":J
    :cond_1
    :goto_0
    return v4

    .line 209
    .restart local v0    # "currUser":I
    .restart local v2    # "ident":J
    :cond_2
    invoke-static {v0}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 210
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 211
    const-string v5, "ClipboardExService"

    const-string v6, "Current user is BBC, hence return false"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :cond_3
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 217
    const-string v4, "ClipboardExService"

    const-string v5, "Current user is a persona, hence return true"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    .line 223
    .end local v0    # "currUser":I
    .end local v2    # "ident":J
    :cond_5
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 224
    const-string v5, "ClipboardExService"

    const-string v6, "\'ro.build.knox.container\' system property is not set to \'2.0\', hence return false"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public iscalledPasteMenuFromApp()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2045
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2046
    const-string v0, "ClipboardExService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "iscalledPasteMenuFromApp() in service : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mIsCalledPasteApp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mIsCalledPasteApp:Z

    return v0
.end method

.method public multiUserMode(ILjava/lang/String;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    .line 2025
    invoke-direct {p0, p1}, Lcom/android/server/clipboardex/ClipboardExService;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2026
    const-string v1, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not enabled! multiUserMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    :goto_0
    return-void

    .line 2029
    :cond_0
    monitor-enter p0

    .line 2031
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2032
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaManager()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2033
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v0

    .line 2034
    .local v0, "parentId":I
    const-string v1, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "multiUserMode parentId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1, v2, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->replaceWithTargetForUser(Landroid/sec/clipboard/data/ClipboardDataMgr;I)V

    .line 2039
    .end local v0    # "parentId":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService;->mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1, p1, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->multiUserMode(ILjava/lang/String;)V

    .line 2040
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setData(ILandroid/sec/clipboard/data/ClipboardData;Z)Z
    .locals 7
    .param p1, "format"    # I
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;
    .param p3, "isCallFromGED"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 1218
    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->canReadAcrossProfiles()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1219
    const-string v3, "ClipboardExService"

    const-string/jumbo v4, "disallow cross profile copy & paste!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :cond_0
    :goto_0
    return v0

    .line 1223
    :cond_1
    if-eqz p2, :cond_0

    .line 1226
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 1227
    const-string v4, "ClipboardExService"

    const-string v5, "==================================================================="

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    const-string v4, "ClipboardExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setData : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/clipboardex/ClipboardExService;->isClipboardAllowed(ZI)I

    move-result v4

    if-nez v4, :cond_3

    .line 1234
    invoke-direct {p0}, Lcom/android/server/clipboardex/ClipboardExService;->clearDataList()V

    goto :goto_0

    .line 1238
    :cond_3
    const/4 v4, 0x5

    if-ne p1, v4, :cond_4

    move-object v2, p2

    .line 1239
    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 1240
    .local v2, "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 1241
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_4

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->isImagefile()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1242
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/clipboardex/ClipboardExService;->copyUriFromClipboardSaveService(Ljava/lang/String;)V

    move v0, v3

    .line 1243
    goto :goto_0

    .line 1246
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/clipboardex/ClipboardExService;->addData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 1247
    .local v0, "ret":Z
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1248
    const-string v3, "ClipboardExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=================================================================== "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showUIDataDialog()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 1782
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1783
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1784
    const-string v0, "ClipboardExService"

    const-string/jumbo v1, "showUIDataDialog : Context is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    :cond_0
    :goto_0
    return-void

    .line 1790
    :cond_1
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1791
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public unRegistClipboardWorkingFormUiInterface()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2241
    return-void
.end method

.method public unRegistClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V
    .locals 5
    .param p1, "iRegInterface"    # Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1562
    monitor-enter p0

    .line 1563
    :try_start_0
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1564
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 1565
    .local v1, "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1566
    iget-object v2, p0, Lcom/android/server/clipboardex/ClipboardExService;->mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1567
    monitor-exit p0

    .line 1573
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    :goto_0
    return-void

    .line 1570
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v2, "ClipboardExService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to remove "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
