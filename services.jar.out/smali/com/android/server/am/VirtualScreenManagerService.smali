.class public Lcom/android/server/am/VirtualScreenManagerService;
.super Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager$Stub;
.source "VirtualScreenManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/VirtualScreenManagerService$1;,
        Lcom/android/server/am/VirtualScreenManagerService$MyHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DEBUG_PERFORMANCE:Z

.field private static final DEBUG_POSITION:Z = false

.field private static final PAUSE_TIMEOUT:I = 0x3e8

.field private static final PAUSE_VIRTUAL_SCREEN_MSG:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "VirtualScreenManagerService"

.field private static sSelf:Lcom/android/server/am/VirtualScreenManagerService;


# instance fields
.field private mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private mBindingDisplayIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mHandler:Landroid/os/Handler;

.field private mOffsetMoveBackTime:J

.field private mOffsetStartTime:J

.field private mReadyToUpdateOffset:Z

.field private mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

.field private mVirtualScreen:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/VirtualScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mVirtualScreenByPackage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVirtualScreenPosition:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 70
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/am/VirtualScreenManagerService;->DEBUG_PERFORMANCE:Z

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/VirtualScreenManagerService;->sSelf:Lcom/android/server/am/VirtualScreenManagerService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 4
    .param p1, "systemContext"    # Landroid/content/Context;
    .param p2, "am"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager$Stub;-><init>()V

    .line 71
    iput-wide v2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mOffsetStartTime:J

    .line 72
    iput-wide v2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mOffsetMoveBackTime:J

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    .line 82
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/VirtualScreenManagerService;->mBindingDisplayIds:Landroid/util/SparseArray;

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenPosition:Landroid/util/SparseArray;

    .line 90
    new-instance v0, Lcom/android/server/am/VirtualScreenManagerService$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/VirtualScreenManagerService$MyHandler;-><init>(Lcom/android/server/am/VirtualScreenManagerService;Lcom/android/server/am/VirtualScreenManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/am/VirtualScreenManagerService;->mHandler:Landroid/os/Handler;

    .line 92
    iput-object v1, p0, Lcom/android/server/am/VirtualScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/VirtualScreenManagerService;->mReadyToUpdateOffset:Z

    .line 111
    iput-object p1, p0, Lcom/android/server/am/VirtualScreenManagerService;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 113
    iget-object v0, p2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/am/VirtualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 114
    sput-object p0, Lcom/android/server/am/VirtualScreenManagerService;->sSelf:Lcom/android/server/am/VirtualScreenManagerService;

    .line 116
    iget-object v0, p0, Lcom/android/server/am/VirtualScreenManagerService;->mContext:Landroid/content/Context;

    const v1, 0x10c0003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/VirtualScreenManagerService;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 118
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/VirtualScreenManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/VirtualScreenManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/am/VirtualScreenManagerService;->handlePauseVirtualScreen(I)V

    return-void
.end method

.method private addBindingDisplayId(II)V
    .locals 2
    .param p1, "bindDisplayId"    # I
    .param p2, "mainDisplayId"    # I

    .prologue
    .line 910
    const/4 v0, 0x0

    .line 911
    .local v0, "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/am/VirtualScreenManagerService;->mBindingDisplayIds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 913
    .restart local v0    # "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 914
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    :goto_0
    return-void

    .line 916
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 917
    .restart local v0    # "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    iget-object v1, p0, Lcom/android/server/am/VirtualScreenManagerService;->mBindingDisplayIds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private dumpVirtualScreenByPackageLocked(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z

    .prologue
    .line 1098
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "List of Packages :"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1099
    iget-object v3, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1100
    .local v1, "keys":Ljava/util/Iterator;
    iget-object v3, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1101
    const-string v3, "    No Packages"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1104
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1106
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1107
    .local v0, "displayId":I
    const-string v3, "    Package ["

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "]"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1108
    if-eqz p3, :cond_1

    .line 1109
    const-string v3, "      virtualscreen="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1110
    const-string v3, "      position="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenPosition:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 1112
    :cond_1
    const-string v3, "      VirtualScreen\'s displayId="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_0

    .line 1115
    .end local v0    # "displayId":I
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private dumpVirtualScreenLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1118
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "List of VirtualScreens :"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1119
    iget-object v2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1120
    const-string v2, "    No VirtualScreen"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1122
    :cond_0
    const/4 v0, 0x0

    .local v0, "ndx":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1123
    iget-object v2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 1124
    .local v1, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    const-string v2, "    "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1125
    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1127
    .end local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_1
    return-void
.end method

.method private handlePauseVirtualScreen(I)V
    .locals 8
    .param p1, "displayId"    # I

    .prologue
    const/4 v5, 0x1

    .line 935
    iget-object v4, p0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 936
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/VirtualScreen;

    .line 937
    .local v2, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v3

    if-nez v3, :cond_2

    .line 938
    iget-object v3, p0, Lcom/android/server/am/VirtualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 939
    .local v1, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v5, :cond_1

    .line 940
    :cond_0
    const-string v3, "VirtualScreenManagerService"

    const-string/jumbo v5, "handlePauseVirtualScreen() stack is empty"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    monitor-exit v4

    .line 948
    .end local v1    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_0
    return-void

    .line 943
    .restart local v1    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 944
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v3, v5, v6, v7}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    .line 945
    iget-object v3, p0, Lcom/android/server/am/VirtualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 947
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v1    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v2    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private removeBindingDisplayId(II)V
    .locals 2
    .param p1, "bindDisplayId"    # I
    .param p2, "mainDisplayId"    # I

    .prologue
    .line 923
    const/4 v0, 0x0

    .line 924
    .local v0, "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/am/VirtualScreenManagerService;->mBindingDisplayIds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 925
    .restart local v0    # "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 926
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 928
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 929
    iget-object v1, p0, Lcom/android/server/am/VirtualScreenManagerService;->mBindingDisplayIds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 932
    :cond_0
    return-void
.end method

.method public static self()Lcom/android/server/am/VirtualScreenManagerService;
    .locals 1

    .prologue
    .line 625
    sget-object v0, Lcom/android/server/am/VirtualScreenManagerService;->sSelf:Lcom/android/server/am/VirtualScreenManagerService;

    return-object v0
.end method

.method private unBindVirtualScreenLocked(I)Z
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 556
    const/4 v0, -0x1

    .line 557
    .local v0, "bindDisplayId":I
    iget-object v3, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/VirtualScreen;

    .line 559
    .local v2, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v2, :cond_1

    .line 560
    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->getBindDisplayId()I

    move-result v0

    .line 561
    invoke-direct {p0, v0, p1}, Lcom/android/server/am/VirtualScreenManagerService;->removeBindingDisplayId(II)V

    .line 562
    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->unbind()V

    .line 564
    if-eqz v0, :cond_0

    .line 565
    iget-object v3, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 566
    .local v1, "bindedVirtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v1, :cond_0

    .line 567
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/VirtualScreenManagerService;->removeBindingDisplayId(II)V

    .line 568
    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->unbind()V

    .line 571
    .end local v1    # "bindedVirtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_0
    const/4 v3, 0x1

    .line 573
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public allowAppTransition(Lcom/android/server/am/ActivityRecord;)Z
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v4, 0x0

    .line 881
    if-eqz p1, :cond_2

    .line 882
    const/4 v1, 0x0

    .line 883
    .local v1, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    const/4 v0, -0x1

    .line 885
    .local v0, "displayId":I
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreenAttrs;->getDisplayId()I

    move-result v0

    .line 886
    iget-object v2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 887
    .restart local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v1, :cond_0

    .line 888
    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->allowAppTransition()Z

    move-result v2

    .line 906
    .end local v0    # "displayId":I
    .end local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :goto_0
    return v2

    .line 891
    .restart local v0    # "displayId":I
    .restart local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_0
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreenAttrs;->getBaseDisplayId()I

    move-result v0

    .line 892
    iget-object v2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 893
    .restart local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 894
    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->allowAppTransition()Z

    move-result v2

    goto :goto_0

    .line 897
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 898
    iget-object v2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 899
    iget-object v2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 900
    .restart local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 901
    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->allowAppTransition()Z

    move-result v2

    goto :goto_0

    .line 906
    .end local v0    # "displayId":I
    .end local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bindVirtualScreen(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "bindDisplayId"    # I

    .prologue
    const/4 v3, 0x0

    .line 504
    iget-object v2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 505
    const-string v2, "VirtualScreenManagerService"

    const-string v4, "bindVirtualScreen() There wasn\'t Main Virtual Screen."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 536
    :goto_0
    return v2

    .line 509
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 510
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 512
    .local v0, "mainDisplayId":I
    iget-object v2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 514
    .local v1, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v1, :cond_1

    .line 515
    invoke-virtual {v1, p2}, Lcom/android/server/am/VirtualScreen;->setBindDisplayId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 516
    const-string v2, "VirtualScreenManagerService"

    const-string v5, "bindVirtualScreen() Fail to bind display. Already binded display"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 521
    :cond_1
    const-string v2, "VirtualScreenManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindVirtualScreen() package="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "binding with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-direct {p0, p2, v0}, Lcom/android/server/am/VirtualScreenManagerService;->addBindingDisplayId(II)V

    .line 524
    if-eqz p2, :cond_3

    .line 525
    iget-object v2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 526
    .restart local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v1, :cond_2

    .line 527
    invoke-virtual {v1, v0}, Lcom/android/server/am/VirtualScreen;->setBindDisplayId(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 528
    const-string v2, "VirtualScreenManagerService"

    const-string v5, "bindVirtualScreen() Fail to bind display. Already binded display"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 533
    :cond_2
    const-string v2, "VirtualScreenManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindVirtualScreen() package="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "binding with "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-direct {p0, v0, p2}, Lcom/android/server/am/VirtualScreenManagerService;->addBindingDisplayId(II)V

    .line 536
    :cond_3
    const/4 v2, 0x1

    monitor-exit v4

    goto/16 :goto_0

    .line 537
    .end local v0    # "mainDisplayId":I
    .end local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public cleanupVirtualScreen(I)V
    .locals 5
    .param p1, "displayId"    # I

    .prologue
    .line 280
    iget-object v2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 281
    .local v1, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v1, :cond_0

    .line 282
    const-string v2, "VirtualScreenManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanupVirtualScreen() for display #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getBindDisplayId()I

    move-result v0

    .line 284
    .local v0, "bindDisplayId":I
    iget-object v2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 286
    invoke-direct {p0, v0, p1}, Lcom/android/server/am/VirtualScreenManagerService;->removeBindingDisplayId(II)V

    .line 288
    if-eqz v0, :cond_0

    .line 289
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/VirtualScreenManagerService;->removeBindingDisplayId(II)V

    .line 292
    .end local v0    # "bindDisplayId":I
    :cond_0
    return-void
.end method

.method public clearTransition()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 385
    iget-object v0, p0, Lcom/android/server/am/VirtualScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    if-nez v0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/VirtualScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/am/VirtualScreen;->setOffset(II)Z

    .line 389
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/VirtualScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    goto :goto_0
.end method

.method public clearVirtualScreenPosition()V
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenPosition:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 725
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/VirtualScreenManagerService;->mReadyToUpdateOffset:Z

    .line 726
    return-void
.end method

.method public createVirtualScreen(Landroid/graphics/Rect;)I
    .locals 9
    .param p1, "bound"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, -0x1

    .line 122
    if-nez p1, :cond_0

    .line 123
    const-string v5, "VirtualScreenManagerService"

    const-string/jumbo v6, "createVirtualScreen() Invalid bound"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 149
    :goto_0
    return v0

    .line 127
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mVirtualScreenPolicy:Lcom/android/server/am/VirtualScreenPolicy;

    const-string v6, "com.samsung.android.virtualscreen.permission.MANAGE_VIRTUAL_SCREEN"

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: createVirtualScreen() from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " requires PERMISSION_MANAGE_VIRTUAL_SCREEN permission"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "msg":Ljava/lang/String;
    const-string v4, "VirtualScreenManagerService"

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 137
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 138
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 139
    .local v2, "ident":J
    iget-object v6, p0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/ActivityManagerService;->createVirtualScreen(II)I

    move-result v0

    .line 140
    .local v0, "displayId":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 141
    if-gez v0, :cond_2

    .line 142
    const-string v6, "VirtualScreenManagerService"

    const-string/jumbo v7, "createVirtualScreen() Invalid displayId"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    monitor-exit v5

    move v0, v4

    goto :goto_0

    .line 145
    :cond_2
    const-string v4, "VirtualScreenManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "createVirtualScreen displayId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v4, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/server/am/VirtualScreen;

    invoke-direct {v6, v0, p1}, Lcom/android/server/am/VirtualScreen;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v4, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    iget-object v4, p0, Lcom/android/server/am/VirtualScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->performLayoutForAppTransition()V

    .line 149
    monitor-exit v5

    goto/16 :goto_0

    .line 150
    .end local v0    # "displayId":I
    .end local v2    # "ident":J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public createVirtualScreenAnimation(Z)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "enter"    # Z

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/server/am/VirtualScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/server/am/VirtualScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    iget-object v1, p0, Lcom/android/server/am/VirtualScreenManagerService;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/VirtualScreen;->createTransitAnimation(ZLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 381
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1047
    iget-object v6, p0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 1049
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump virtualscreen from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " without permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1095
    :goto_0
    return-void

    .line 1056
    :cond_0
    const/4 v1, 0x0

    .line 1057
    .local v1, "dumpAll":Z
    const/4 v3, 0x0

    .line 1058
    .local v3, "opti":I
    :goto_1
    array-length v6, p3

    if-ge v3, v6, :cond_1

    .line 1059
    aget-object v2, p3, v3

    .line 1060
    .local v2, "opt":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_2

    .line 1077
    .end local v2    # "opt":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1079
    .local v4, "origId":J
    :try_start_0
    array-length v6, p3

    if-ge v3, v6, :cond_5

    .line 1080
    aget-object v0, p3, v3

    .line 1081
    .local v0, "cmd":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 1083
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad virtualscreen command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1084
    const-string v6, "Use -h for help."

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1093
    .end local v0    # "cmd":Ljava/lang/String;
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1063
    .end local v4    # "origId":J
    .restart local v2    # "opt":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 1064
    const-string v6, "-h"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1065
    const-string v6, "VirtualScreen manager dump options:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1066
    const-string v6, "  [-h] [cmd] ..."

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1067
    const-string v6, "  cmd may be one of:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1068
    const-string v6, "  -a: include all available server state"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1070
    :cond_3
    const-string v6, "-a"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1071
    const/4 v1, 0x1

    goto :goto_1

    .line 1073
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown argument: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; use -h for help"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1086
    .end local v2    # "opt":Ljava/lang/String;
    .restart local v4    # "origId":J
    :cond_5
    :try_start_1
    iget-object v7, p0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1087
    :try_start_2
    const-string v6, "VIRTUALSCREEN MANAGER (dumpsys virtualscreen)"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1088
    const-string v6, "  "

    invoke-direct {p0, v6, p2, v1}, Lcom/android/server/am/VirtualScreenManagerService;->dumpVirtualScreenByPackageLocked(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 1089
    const-string v6, "  "

    invoke-direct {p0, v6, p2}, Lcom/android/server/am/VirtualScreenManagerService;->dumpVirtualScreenLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1090
    monitor-exit v7

    goto :goto_2

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1093
    :catchall_1
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method getDefaultDisplayRect()Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 838
    iget-object v1, p0, Lcom/android/server/am/VirtualScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 839
    .local v0, "info":Landroid/view/DisplayInfo;
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public getDisplayId(Landroid/os/IBinder;Ljava/lang/String;)I
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 595
    iget-object v3, p0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 596
    if-eqz p1, :cond_3

    .line 597
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 599
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v4, :cond_1

    .line 600
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid arguments. token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : getDisplayId() from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, "msg":Ljava/lang/String;
    const-string v4, "VirtualScreenManagerService"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    monitor-exit v3

    .line 618
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_0
    return v2

    .line 609
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 610
    iget-object v2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 620
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 612
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    :try_start_1
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreenAttrs;->getBaseDisplayId()I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 615
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 616
    iget-object v2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 618
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method getInitialDefaultDisplayRect()Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 832
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 833
    .local v0, "size":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/server/am/VirtualScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v4, v0}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 834
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public getOffset(I)Landroid/graphics/Point;
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 491
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 492
    .local v0, "pt":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    if-eqz v2, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-object v0

    .line 495
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 496
    .local v1, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v1, :cond_0

    .line 497
    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getOffsetX()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getOffsetY()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public getVirtualScreenPosition(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/PointF;F)Z
    .locals 10
    .param p1, "displayId"    # I
    .param p2, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p3, "position"    # Landroid/graphics/PointF;
    .param p4, "scale"    # F

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 777
    if-eqz p2, :cond_1

    .line 778
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7d0

    if-lt v4, v7, :cond_0

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0xbb7

    if-gt v4, v7, :cond_0

    move v4, v5

    .line 828
    :goto_0
    return v4

    .line 782
    :cond_0
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    .line 784
    goto :goto_0

    .line 788
    :cond_1
    if-nez p3, :cond_2

    .line 789
    const-string v4, "VirtualScreenManagerService"

    const-string/jumbo v6, "getVirtualScreenPosition() position is null."

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 790
    goto :goto_0

    .line 793
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenPosition:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 794
    .local v3, "virtualScreenPosition":Landroid/graphics/PointF;
    if-eqz v3, :cond_4

    .line 795
    iget-boolean v4, p0, Lcom/android/server/am/VirtualScreenManagerService;->mReadyToUpdateOffset:Z

    if-nez v4, :cond_3

    move v4, v5

    .line 796
    goto :goto_0

    .line 798
    :cond_3
    invoke-virtual {p3, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    move v4, v6

    .line 799
    goto :goto_0

    .line 802
    :cond_4
    const/4 v2, 0x0

    .line 803
    .local v2, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    iget-object v4, p0, Lcom/android/server/am/VirtualScreenManagerService;->mBindingDisplayIds:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 804
    .local v0, "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_6

    .line 805
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 806
    iget-object v7, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    check-cast v2, Lcom/android/server/am/VirtualScreen;

    .line 807
    .restart local v2    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/am/VirtualScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 809
    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->getOffsetX()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p4

    iput v4, p3, Landroid/graphics/PointF;->x:F

    .line 810
    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->getOffsetY()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p4

    iput v4, p3, Landroid/graphics/PointF;->y:F

    .line 805
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 815
    .end local v1    # "i":I
    :cond_6
    iget-object v4, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    check-cast v2, Lcom/android/server/am/VirtualScreen;

    .line 816
    .restart local v2    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v2, :cond_7

    .line 817
    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->getScreenSize()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->getOffsetX()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p4

    add-float/2addr v4, v7

    invoke-virtual {v2, p4}, Lcom/android/server/am/VirtualScreen;->getOffsetByPosition(F)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v7

    iput v4, p3, Landroid/graphics/PointF;->x:F

    .line 818
    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->getScreenSize()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->getOffsetY()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p4

    add-float/2addr v4, v7

    invoke-virtual {v2, p4}, Lcom/android/server/am/VirtualScreen;->getOffsetByPosition(F)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v7

    iput v4, p3, Landroid/graphics/PointF;->y:F

    .line 825
    :cond_7
    iget v4, p3, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_8

    iget v4, p3, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_8

    move v4, v5

    .line 826
    goto/16 :goto_0

    :cond_8
    move v4, v6

    .line 828
    goto/16 :goto_0
.end method

.method public getVirtualScreenSize(I)Landroid/graphics/Rect;
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 1023
    iget-object v2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 1024
    .local v1, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v1, :cond_0

    .line 1025
    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getScreenSize()Landroid/graphics/Rect;

    move-result-object v0

    .line 1026
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getOffsetX()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getOffsetY()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1029
    .end local v0    # "rect":Landroid/graphics/Rect;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFrontVirtualScreen(Lcom/android/server/am/ActivityStack;)Z
    .locals 5
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    const/4 v2, 0x1

    .line 843
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 844
    .local v0, "top":Lcom/android/server/am/ActivityRecord;
    iget-object v3, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 845
    .local v1, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v3, v4, :cond_0

    .line 847
    const/4 v2, 0x0

    .line 849
    :cond_0
    return v2
.end method

.method public isMoving(I)Z
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 1034
    iget-object v1, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    .line 1035
    .local v0, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getOffsetX()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getOffsetY()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1037
    :cond_0
    const-string v1, "VirtualScreenManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isMoving() called from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getOffsetUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " offsetX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getOffsetX()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " offsetY : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getOffsetY()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const/4 v1, 0x1

    .line 1042
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVirtualScreen(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    .line 853
    iget-object v1, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    .line 854
    .local v0, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-nez v0, :cond_0

    .line 855
    const/4 v1, 0x0

    .line 857
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isVisibleVirtualScreen(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    .line 861
    iget-object v1, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    .line 862
    .local v0, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-nez v0, :cond_0

    .line 863
    const/4 v1, 0x0

    .line 865
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v1

    goto :goto_0
.end method

.method public isVisibleVirtualScreen(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 869
    iget-object v2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 870
    iget-object v2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 871
    .local v0, "displayId":I
    iget-object v2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 872
    .local v1, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-nez v1, :cond_0

    move v2, v3

    .line 877
    .end local v0    # "displayId":I
    .end local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :goto_0
    return v2

    .line 875
    .restart local v0    # "displayId":I
    .restart local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v2

    goto :goto_0

    .end local v0    # "displayId":I
    .end local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_1
    move v2, v3

    .line 877
    goto :goto_0
.end method

.method moveTaskBackToDisplayIfNeeded(Lcom/android/server/am/TaskRecord;ZZ)Z
    .locals 12
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "updateVisibility"    # Z
    .param p3, "onlyAllowTheLast"    # Z

    .prologue
    const/4 v9, 0x0

    .line 635
    if-eqz p1, :cond_d

    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_d

    .line 636
    if-eqz p3, :cond_2

    .line 637
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 638
    .local v4, "numOfActivities":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 639
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 640
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v8, :cond_0

    add-int/lit8 v4, v4, -0x1

    .line 638
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 642
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v8, 0x1

    if-le v4, v8, :cond_2

    .line 643
    const-string v8, "VirtualScreenManagerService"

    const-string/jumbo v10, "moveTaskBackToDisplayIfNeeded(): The task has more than one activity"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 707
    .end local v3    # "i":I
    .end local v4    # "numOfActivities":I
    :goto_1
    return v8

    .line 648
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 649
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_3

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v8, :cond_4

    .line 650
    :cond_3
    const-string v8, "VirtualScreenManagerService"

    const-string/jumbo v10, "moveTaskBackToDisplayIfNeeded(): top activity or app is null"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 651
    goto :goto_1

    .line 654
    :cond_4
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v8, v8, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v8, :cond_5

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v8, v8, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v8, :cond_5

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v8, v8, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-eqz v8, :cond_8

    .line 655
    :cond_5
    const/4 v2, -0x1

    .line 656
    .local v2, "displayId":I
    iget-object v8, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    iget-object v10, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 657
    iget-object v8, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    iget-object v10, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 661
    :cond_6
    :goto_2
    iget-object v8, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/VirtualScreen;

    .line 662
    .local v7, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v7, :cond_8

    .line 663
    const-string v8, "VirtualScreenManagerService"

    const-string/jumbo v10, "moveTaskBackToDisplayIfNeeded(): app which created virtualscreen is crashing or not responding, reset offset!"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-virtual {v7, v9, v9}, Lcom/android/server/am/VirtualScreen;->setOffset(II)Z

    move v8, v9

    .line 665
    goto :goto_1

    .line 658
    .end local v7    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_7
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/server/am/VirtualScreenManagerService;->isVirtualScreen(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 659
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v2

    goto :goto_2

    .line 669
    .end local v2    # "displayId":I
    :cond_8
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v8

    iget-object v10, v5, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v10}, Lcom/android/server/am/VirtualScreenAttrs;->getBaseDisplayId()I

    move-result v10

    if-eq v8, v10, :cond_d

    .line 671
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v8}, Lcom/android/server/am/VirtualScreenAttrs;->getBaseDisplayId()I

    move-result v1

    .line 673
    .local v1, "baseDisplayId":I
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v8, v8, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v8, :cond_9

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v8, v8, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v8, :cond_9

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v8, v8, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-eqz v8, :cond_a

    .line 674
    :cond_9
    const-string v8, "VirtualScreenManagerService"

    const-string/jumbo v10, "moveTaskBackToDisplayIfNeeded(): app on virtualscreen is crashing or not responding, reset offset!"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v8, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/VirtualScreen;

    .line 676
    .restart local v7    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    invoke-virtual {v7, v9, v9}, Lcom/android/server/am/VirtualScreen;->setOffset(II)Z

    move v8, v9

    .line 677
    goto/16 :goto_1

    .line 680
    .end local v7    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_a
    if-eqz p2, :cond_b

    .line 682
    iget-object v8, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/VirtualScreen;

    iput-object v8, p0, Lcom/android/server/am/VirtualScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    .line 683
    iget-object v8, p0, Lcom/android/server/am/VirtualScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    if-eqz v8, :cond_b

    .line 684
    iget-object v8, p0, Lcom/android/server/am/VirtualScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    invoke-virtual {v8}, Lcom/android/server/am/VirtualScreen;->prepareTransition()V

    .line 686
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 688
    const/4 v6, 0x0

    .line 689
    .local v6, "transit":I
    iget-object v8, p0, Lcom/android/server/am/VirtualScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    invoke-virtual {v8}, Lcom/android/server/am/VirtualScreen;->getBindDisplayId()I

    move-result v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_c

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v8}, Lcom/android/server/am/VirtualScreenAttrs;->getBaseDisplayId()I

    move-result v8

    if-eqz v8, :cond_c

    .line 691
    const/16 v6, 0x12d

    .line 695
    :goto_3
    iget-object v8, p0, Lcom/android/server/am/VirtualScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, v6, v9, v9}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    .line 697
    iget-object v8, p0, Lcom/android/server/am/VirtualScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v8, v10, v9, v9}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    .line 701
    .end local v6    # "transit":I
    :cond_b
    const-string v8, "VirtualScreenManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "moveTaskBackToDisplayIfNeeded() need to change display="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/VirtualScreenManagerService;->moveTaskToDisplay(Lcom/android/server/am/TaskRecord;I)Z

    move-result v8

    goto/16 :goto_1

    .line 693
    .restart local v6    # "transit":I
    :cond_c
    const/16 v6, 0x9

    goto :goto_3

    .line 706
    .end local v1    # "baseDisplayId":I
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "transit":I
    :cond_d
    const-string v8, "VirtualScreenManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "failed to move task "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 707
    goto/16 :goto_1
.end method

.method moveTaskToDisplay(Lcom/android/server/am/TaskRecord;I)Z
    .locals 1
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toDisplayId"    # I

    .prologue
    .line 951
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/VirtualScreenManagerService;->moveTaskToDisplay(Lcom/android/server/am/TaskRecord;IZ)Z

    move-result v0

    return v0
.end method

.method moveTaskToDisplay(Lcom/android/server/am/TaskRecord;IZ)Z
    .locals 9
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toDisplayId"    # I
    .param p3, "updateBase"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 955
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 957
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    const-string v6, "VirtualScreenManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "moveTaskToDisplay() to display #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    if-nez v1, :cond_0

    .line 995
    :goto_0
    return v4

    .line 962
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 963
    .local v0, "fromStack":Lcom/android/server/am/ActivityStack;
    iget-object v6, p0, Lcom/android/server/am/VirtualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6, v7, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 964
    .local v2, "toStack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_1

    .line 965
    iget-object v6, p0, Lcom/android/server/am/VirtualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, p0, Lcom/android/server/am/VirtualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v7

    invoke-virtual {v6, v7, p2}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(II)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 966
    if-nez v2, :cond_1

    .line 967
    const-string v5, "VirtualScreenManagerService"

    const-string/jumbo v6, "moveTaskToDisplay() Couldn\'t find stack"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 972
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 973
    .local v3, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_2

    if-nez p2, :cond_2

    .line 974
    iput-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 975
    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v6}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 976
    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/high16 v7, 0x100000

    invoke-virtual {v3, v6, v7}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 981
    :cond_2
    const v6, 0x1339e1

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v4, v7, v5

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 984
    iget-object v4, p0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mVirtualScreenPolicy:Lcom/android/server/am/VirtualScreenPolicy;

    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v6, p2, p3}, Lcom/android/server/am/VirtualScreenPolicy;->updateDisplayForAllActivitiesInTask(Lcom/android/server/am/TaskRecord;IZ)V

    .line 986
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 987
    iget-object v4, p0, Lcom/android/server/am/VirtualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v6

    const-string/jumbo v7, "moveTaskToDisplay"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;)Z

    .line 990
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/VirtualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v6, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v7

    invoke-virtual {v4, v6, v7, v5, v5}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZ)V

    .line 991
    invoke-virtual {p0, p2}, Lcom/android/server/am/VirtualScreenManagerService;->isVirtualScreen(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 992
    iget-object v4, p0, Lcom/android/server/am/VirtualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v6, "change-display"

    invoke-virtual {v4, v2, v6}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 994
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    move v4, v5

    .line 995
    goto/16 :goto_0
.end method

.method public moveVirtualScreenToDisplay(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .prologue
    .line 578
    iget-object v4, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 579
    const-string v4, "VirtualScreenManagerService"

    const-string/jumbo v5, "moveVirtualScreenToDisplay() package doesn\'t exist!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v1, 0x0

    .line 589
    :goto_0
    return v1

    .line 583
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 585
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 586
    .local v2, "ident":J
    iget-object v4, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 587
    .local v0, "curDisplayId":I
    invoke-virtual {p0, v0, p2}, Lcom/android/server/am/VirtualScreenManagerService;->moveVirtualScreenToDisplayLocked(II)Z

    move-result v1

    .line 588
    .local v1, "res":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 589
    monitor-exit v5

    goto :goto_0

    .line 590
    .end local v0    # "curDisplayId":I
    .end local v1    # "res":Z
    .end local v2    # "ident":J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method moveVirtualScreenToDisplayLocked(II)Z
    .locals 7
    .param p1, "virtualScreenDisplayId"    # I
    .param p2, "displayId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 999
    iget-object v5, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1000
    const-string v4, "VirtualScreenManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "moveVirtualScreenToDisplay - virtualScreenDisplayId("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") doesn\'t exist!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :goto_0
    return v3

    .line 1004
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1005
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/VirtualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1006
    .local v1, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v4, :cond_2

    .line 1007
    :cond_1
    const-string v4, "VirtualScreenManagerService"

    const-string/jumbo v6, "moveVirtualScreenToDisplayLocked(): stack is empty"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    monitor-exit v5

    goto :goto_0

    .line 1017
    .end local v1    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1011
    .restart local v1    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 1012
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v2

    .line 1014
    .local v2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v4, :cond_3

    .line 1015
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, v3, p2}, Lcom/android/server/am/VirtualScreenManagerService;->moveTaskToDisplay(Lcom/android/server/am/TaskRecord;I)Z

    move-result v3

    monitor-exit v5

    goto :goto_0

    .line 1017
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    .line 1018
    goto :goto_0
.end method

.method public recreateVirtualScreen(Ljava/lang/String;Landroid/graphics/Rect;)I
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, -0x1

    .line 154
    if-nez p2, :cond_0

    .line 155
    const-string v6, "VirtualScreenManagerService"

    const-string/jumbo v8, "recreateVirtualScreen() Invalid bound"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    .line 198
    :goto_0
    return v1

    .line 159
    :cond_0
    iget-object v6, p0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, p0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mVirtualScreenPolicy:Lcom/android/server/am/VirtualScreenPolicy;

    const-string v8, "com.samsung.android.virtualscreen.permission.MANAGE_VIRTUAL_SCREEN"

    invoke-virtual {v6, v8}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 161
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: recreateVirtualScreen() from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " requires PERMISSION_MANAGE_VIRTUAL_SCREEN permission"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "msg":Ljava/lang/String;
    const-string v6, "VirtualScreenManagerService"

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 169
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 170
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 171
    .local v1, "displayId":I
    iget-object v6, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/VirtualScreen;

    .line 172
    .local v5, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v5, :cond_4

    .line 173
    invoke-virtual {v5}, Lcom/android/server/am/VirtualScreen;->getScreenSize()Landroid/graphics/Rect;

    move-result-object v0

    .line 174
    .local v0, "curBounds":Landroid/graphics/Rect;
    move-object v4, p2

    .line 175
    .local v4, "toBounds":Landroid/graphics/Rect;
    const-string v6, "VirtualScreenManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "recreateVirtualScreen() displayId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 177
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-ne v6, v9, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-eq v6, v9, :cond_3

    .line 178
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/am/VirtualScreenManagerService;->removeVirtualScreen(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, p2}, Lcom/android/server/am/VirtualScreenManagerService;->createVirtualScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 180
    if-lez v1, :cond_4

    .line 181
    iget-object v6, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v6, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/VirtualScreen;

    .line 183
    .local v3, "newVirtualScreen":Lcom/android/server/am/VirtualScreen;
    invoke-virtual {v5}, Lcom/android/server/am/VirtualScreen;->getBindDisplayId()I

    move-result v6

    invoke-virtual {p0, p1, v6}, Lcom/android/server/am/VirtualScreenManagerService;->bindVirtualScreen(Ljava/lang/String;I)Z

    .line 184
    monitor-exit v8

    goto/16 :goto_0

    .line 196
    .end local v0    # "curBounds":Landroid/graphics/Rect;
    .end local v1    # "displayId":I
    .end local v3    # "newVirtualScreen":Lcom/android/server/am/VirtualScreen;
    .end local v4    # "toBounds":Landroid/graphics/Rect;
    .end local v5    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 188
    .restart local v0    # "curBounds":Landroid/graphics/Rect;
    .restart local v1    # "displayId":I
    .restart local v4    # "toBounds":Landroid/graphics/Rect;
    .restart local v5    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_3
    :try_start_1
    new-instance v3, Lcom/android/server/am/VirtualScreen;

    invoke-direct {v3, v1, p2}, Lcom/android/server/am/VirtualScreen;-><init>(ILandroid/graphics/Rect;)V

    .line 189
    .restart local v3    # "newVirtualScreen":Lcom/android/server/am/VirtualScreen;
    invoke-virtual {v5}, Lcom/android/server/am/VirtualScreen;->getBindDisplayId()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/am/VirtualScreen;->setBindDisplayId(I)Z

    .line 190
    iget-object v6, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 191
    iget-object v6, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v6, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    monitor-exit v8

    goto/16 :goto_0

    .line 196
    .end local v0    # "curBounds":Landroid/graphics/Rect;
    .end local v3    # "newVirtualScreen":Lcom/android/server/am/VirtualScreen;
    .end local v4    # "toBounds":Landroid/graphics/Rect;
    :cond_4
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    const-string v6, "VirtualScreenManagerService"

    const-string/jumbo v8, "recreateVirtualScreen() failed to recreate virtual screen."

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    .line 198
    goto/16 :goto_0
.end method

.method public removeVirtualScreen()V
    .locals 13

    .prologue
    .line 204
    iget-object v9, p0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, p0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mVirtualScreenPolicy:Lcom/android/server/am/VirtualScreenPolicy;

    const-string v10, "com.samsung.android.virtualscreen.permission.MANAGE_VIRTUAL_SCREEN"

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_0

    .line 206
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Permission Denial: removeVirtualScreen() from pid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " requires PERMISSION_MANAGE_VIRTUAL_SCREEN permission"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "msg":Ljava/lang/String;
    const-string v9, "VirtualScreenManagerService"

    invoke-static {v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v9, Ljava/lang/SecurityException;

    invoke-direct {v9, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 214
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 215
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 216
    iget-object v9, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_3

    .line 217
    iget-object v9, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/VirtualScreen;

    .line 218
    .local v8, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v8, :cond_2

    .line 219
    iget-object v9, p0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/VirtualScreen;->getDisplayId()I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/android/server/am/ActivityManagerService;->removeVirtualScreen(I)V

    .line 220
    iget-object v9, p0, Lcom/android/server/am/VirtualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8}, Lcom/android/server/am/VirtualScreen;->getDisplayId()I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 221
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 222
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 223
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v7

    .line 224
    .local v7, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .local v6, "taskNdx":I
    :goto_2
    if-ltz v6, :cond_1

    .line 225
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 226
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    iget-object v9, p0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mVirtualScreenPolicy:Lcom/android/server/am/VirtualScreenPolicy;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v9, v5, v11, v12}, Lcom/android/server/am/VirtualScreenPolicy;->updateDisplayForAllActivitiesInTask(Lcom/android/server/am/TaskRecord;IZ)V

    .line 227
    iget-object v9, p0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget v11, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v9, v11}, Lcom/android/server/am/ActivityManagerService;->removeTask(I)Z

    .line 224
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 221
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 216
    .end local v1    # "i":I
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v6    # "taskNdx":I
    .end local v7    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 232
    .end local v8    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_3
    monitor-exit v10

    .line 233
    return-void

    .line 232
    .end local v0    # "displayNdx":I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method public removeVirtualScreen(Ljava/lang/String;)V
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 236
    iget-object v10, p0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, p0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mVirtualScreenPolicy:Lcom/android/server/am/VirtualScreenPolicy;

    const-string v11, "com.samsung.android.virtualscreen.permission.MANAGE_VIRTUAL_SCREEN"

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_0

    .line 238
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: removeVirtualScreen() from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " requires PERMISSION_MANAGE_VIRTUAL_SCREEN permission"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, "msg":Ljava/lang/String;
    const-string v10, "VirtualScreenManagerService"

    invoke-static {v10, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v10, Ljava/lang/SecurityException;

    invoke-direct {v10, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 246
    .end local v4    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v11, p0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 247
    :try_start_0
    iget-object v10, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v10, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 249
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 251
    .local v2, "ident":J
    :try_start_1
    const-string v10, "VirtualScreenManagerService"

    const-string/jumbo v12, "removeVirtualScreen(): it is the one that created virtual screen"

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v10, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v10, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 253
    .local v0, "displayId":I
    iget-object v10, p0, Lcom/android/server/am/VirtualScreenManagerService;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x3e9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 254
    iget-object v10, p0, Lcom/android/server/am/VirtualScreenManagerService;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x3e9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 256
    :cond_1
    iget-object v10, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 257
    iget-object v10, p0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10, v0}, Lcom/android/server/am/ActivityManagerService;->removeVirtualScreen(I)V

    .line 258
    iget-object v10, p0, Lcom/android/server/am/VirtualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v10, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks(I)Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 259
    .local v6, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    if-nez v6, :cond_2

    .line 272
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    .end local v0    # "displayId":I
    .end local v2    # "ident":J
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_0
    return-void

    .line 262
    .restart local v0    # "displayId":I
    .restart local v2    # "ident":J
    .restart local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    :try_start_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_4

    .line 263
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    .line 264
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v9

    .line 265
    .local v9, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v8, v10, -0x1

    .local v8, "taskNdx":I
    :goto_2
    if-ltz v8, :cond_3

    .line 266
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    .line 267
    .local v7, "task":Lcom/android/server/am/TaskRecord;
    iget-object v10, p0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mVirtualScreenPolicy:Lcom/android/server/am/VirtualScreenPolicy;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v10, v7, v12, v13}, Lcom/android/server/am/VirtualScreenPolicy;->updateDisplayForAllActivitiesInTask(Lcom/android/server/am/TaskRecord;IZ)V

    .line 268
    iget-object v10, p0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget v12, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v10, v12}, Lcom/android/server/am/ActivityManagerService;->removeTask(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 265
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 262
    .end local v7    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 272
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "taskNdx":I
    .end local v9    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_4
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 274
    monitor-exit v11

    goto :goto_0

    .line 276
    .end local v0    # "displayId":I
    .end local v1    # "i":I
    .end local v2    # "ident":J
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v10

    .line 272
    .restart local v2    # "ident":J
    :catchall_1
    move-exception v10

    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    .line 276
    .end local v2    # "ident":J
    :cond_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public setOffset(Landroid/os/IBinder;IIIZ)Z
    .locals 21
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I
    .param p5, "force"    # Z

    .prologue
    .line 394
    const/4 v11, 0x1

    .line 395
    .local v11, "res":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 396
    move/from16 v6, p2

    .line 397
    .local v6, "currentDisplayId":I
    const/4 v10, 0x0

    .line 398
    .local v10, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p1, :cond_2

    .line 399
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 401
    if-eqz v10, :cond_0

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    .line 402
    :cond_0
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Invalid arguments. token="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " : setOffset() from pid="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, ", uid="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 406
    .local v7, "msg":Ljava/lang/String;
    const-string v16, "VirtualScreenManagerService"

    move-object/from16 v0, v16

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/16 v16, 0x0

    monitor-exit v17

    .line 486
    .end local v7    # "msg":Ljava/lang/String;
    :goto_0
    return v16

    .line 410
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    move-object/from16 v16, v0

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/VirtualScreenAttrs;->getBaseDisplayId()I

    move-result v16

    if-nez v16, :cond_4

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    move-object/from16 v16, v0

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result p2

    move/from16 v6, p2

    .line 418
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/VirtualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks(I)Ljava/util/ArrayList;

    move-result-object v13

    .line 419
    .local v13, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 420
    :cond_3
    const-string v16, "VirtualScreenManagerService"

    const-string/jumbo v18, "setOffset(): stack is empty"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/16 v16, 0x0

    monitor-exit v17

    goto :goto_0

    .line 485
    .end local v13    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :catchall_0
    move-exception v16

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v16

    .line 413
    :cond_4
    :try_start_1
    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/VirtualScreenAttrs;->getDisplayId()I

    move-result v6

    .line 414
    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/VirtualScreenAttrs;->getBaseDisplayId()I

    move-result p2

    goto :goto_1

    .line 424
    .restart local v13    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 425
    .local v5, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    .line 428
    .local v8, "ident":J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/VirtualScreen;

    .line 429
    .local v14, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v14, :cond_6

    .line 430
    invoke-virtual {v14}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v15

    .line 431
    .local v15, "visible":Z
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v14, v0, v1, v5, v2}, Lcom/android/server/am/VirtualScreen;->setOffset(IIIZ)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v16

    if-nez v16, :cond_7

    .line 432
    const/4 v11, 0x0

    .line 483
    .end local v15    # "visible":Z
    :cond_6
    :goto_2
    :try_start_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 485
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v16, v11

    .line 486
    goto/16 :goto_0

    .line 434
    .restart local v15    # "visible":Z
    :cond_7
    if-eqz p1, :cond_9

    .line 435
    :try_start_4
    invoke-virtual {v14}, Lcom/android/server/am/VirtualScreen;->isDefaultDisplay()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 436
    if-eqz v6, :cond_8

    .line 437
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v6, v1}, Lcom/android/server/am/VirtualScreenManagerService;->moveVirtualScreenToDisplayLocked(II)Z

    .line 439
    :cond_8
    const/16 v16, 0x0

    const/16 v18, 0x0

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/android/server/am/VirtualScreen;->setOffset(II)Z

    .line 452
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/VirtualScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 454
    invoke-virtual {v14}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_c

    .line 455
    invoke-virtual {v14}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v15

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/VirtualScreenManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v18, 0x3e9

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/VirtualScreenManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v18, 0x3e9

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 459
    :cond_a
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityStack;

    .line 460
    .local v12, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v15, :cond_11

    .line 461
    sget-boolean v16, Lcom/android/server/am/VirtualScreenManagerService;->DEBUG_PERFORMANCE:Z

    if-eqz v16, :cond_b

    .line 462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/VirtualScreenManagerService;->mOffsetStartTime:J

    .line 463
    const-string v16, "VirtualScreenManagerService"

    const-string v18, "1. Performance Test Start"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_b
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 473
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_c
    :goto_4
    if-eqz v15, :cond_6

    .line 474
    invoke-virtual {v14}, Lcom/android/server/am/VirtualScreen;->getBindDisplayId()I

    move-result v4

    .line 475
    .local v4, "bindDisplayId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/VirtualScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isDrawnAppWindow(I)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, -0x1

    move/from16 v0, v16

    if-le v4, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/VirtualScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowManagerService;->isDrawnAppWindow(I)Z

    move-result v16

    if-nez v16, :cond_6

    .line 477
    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 441
    .end local v4    # "bindDisplayId":I
    :cond_e
    if-nez p3, :cond_f

    if-eqz p4, :cond_9

    .line 442
    :cond_f
    move/from16 v0, p2

    if-eq v0, v6, :cond_9

    .line 443
    sget-boolean v16, Lcom/android/server/am/VirtualScreenManagerService;->DEBUG_PERFORMANCE:Z

    if-eqz v16, :cond_10

    .line 444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/VirtualScreenManagerService;->mOffsetMoveBackTime:J

    .line 445
    const-string v16, "VirtualScreenManagerService"

    const-string v18, "2. Performance Test Start"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_10
    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v16, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/VirtualScreenManagerService;->moveTaskBackToDisplayIfNeeded(Lcom/android/server/am/TaskRecord;ZZ)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_3

    .line 483
    .end local v14    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    .end local v15    # "visible":Z
    :catchall_1
    move-exception v16

    :try_start_5
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 469
    .restart local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v14    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    .restart local v15    # "visible":Z
    :cond_11
    const/16 v16, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    :try_start_6
    move/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/VirtualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v16, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_4
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 629
    iget-object v1, p0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 630
    :try_start_0
    iput-object p1, p0, Lcom/android/server/am/VirtualScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 631
    monitor-exit v1

    .line 632
    return-void

    .line 631
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startActivity(Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)I
    .locals 29
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 296
    if-nez p2, :cond_0

    .line 297
    const-string v2, "VirtualScreenManagerService"

    const-string/jumbo v3, "startActivity: Invalid intent"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/16 v23, -0x1

    .line 373
    :goto_0
    return v23

    .line 301
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-virtual {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    const-string v2, "VirtualScreenManagerService"

    const-string/jumbo v3, "startActivity: Can\'t start activity in the emergency mode."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/16 v23, -0x1

    goto :goto_0

    .line 307
    :cond_1
    const-string v2, "VirtualScreenManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivity: intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " by package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 310
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getVirtualScreenParams()Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;

    move-result-object v26

    .line 311
    .local v26, "params":Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 313
    const-string v2, "VirtualScreenManagerService"

    const-string/jumbo v3, "startActivity: don\'t exist displayContent. create new one!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/16 v22, 0x0

    .line 315
    .local v22, "bound":Landroid/graphics/Rect;
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_7

    .line 316
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    .line 317
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/VirtualScreenManagerService;->createVirtualScreen(Landroid/graphics/Rect;)I

    move-result v23

    .line 318
    .local v23, "displayId":I
    if-gez v23, :cond_2

    .line 319
    const-string v2, "VirtualScreenManagerService"

    const-string/jumbo v3, "startActivity: Invalid displayId"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/16 v23, -0x1

    monitor-exit v28

    goto/16 :goto_0

    .line 374
    .end local v22    # "bound":Landroid/graphics/Rect;
    .end local v23    # "displayId":I
    .end local v26    # "params":Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;
    :catchall_0
    move-exception v2

    monitor-exit v28
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 323
    .restart local v22    # "bound":Landroid/graphics/Rect;
    .restart local v23    # "displayId":I
    .restart local v26    # "params":Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;
    :cond_2
    :try_start_1
    move-object/from16 v0, v26

    iget v2, v0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/VirtualScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/VirtualScreen;->setAllowAppTransition(Z)V

    .line 327
    :cond_3
    move/from16 v0, v23

    move-object/from16 v1, v26

    iput v0, v1, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mDisplayId:I

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .end local v22    # "bound":Landroid/graphics/Rect;
    :cond_4
    :goto_1
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setVirtualScreenParams(Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v8, "VirtualScreenManager"

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityManagerService;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 358
    .local v19, "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    .line 359
    .local v7, "mimeType":Ljava/lang/String;
    if-nez v7, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "content"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/ActivityManagerService;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v7

    .line 363
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v6, p2

    move-object/from16 v17, p3

    invoke-virtual/range {v2 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ZILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I

    move-result v27

    .line 365
    .local v27, "res":I
    if-ltz v27, :cond_a

    .line 366
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v24

    .line 367
    .local v24, "msg":Landroid/os/Message;
    const/16 v2, 0x3e9

    move-object/from16 v0, v24

    iput v2, v0, Landroid/os/Message;->what:I

    .line 368
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v24

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/VirtualScreenManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 373
    .end local v24    # "msg":Landroid/os/Message;
    :cond_6
    :goto_2
    monitor-exit v28

    goto/16 :goto_0

    .line 331
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v19    # "userId":I
    .end local v23    # "displayId":I
    .end local v27    # "res":I
    .restart local v22    # "bound":Landroid/graphics/Rect;
    :cond_7
    move-object/from16 v0, v26

    iget v0, v0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mDisplayId:I

    move/from16 v23, v0

    .line 332
    .restart local v23    # "displayId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/VirtualScreenManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks(I)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_4

    .line 333
    const-string v2, "VirtualScreenManagerService"

    const-string/jumbo v3, "display doesn\'t exist!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/16 v23, -0x1

    monitor-exit v28

    goto/16 :goto_0

    .line 342
    .end local v22    # "bound":Landroid/graphics/Rect;
    .end local v23    # "displayId":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 343
    .restart local v23    # "displayId":I
    move-object/from16 v0, v26

    iget v2, v0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_9

    .line 344
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/VirtualScreenManagerService;->recreateVirtualScreen(Ljava/lang/String;Landroid/graphics/Rect;)I

    move-result v25

    .line 345
    .local v25, "newDisplayId":I
    if-lez v25, :cond_9

    .line 346
    move/from16 v23, v25

    .line 349
    .end local v25    # "newDisplayId":I
    :cond_9
    move/from16 v0, v23

    move-object/from16 v1, v26

    iput v0, v1, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mDisplayId:I

    goto/16 :goto_1

    .line 370
    .restart local v7    # "mimeType":Ljava/lang/String;
    .restart local v19    # "userId":I
    .restart local v27    # "res":I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/am/VirtualScreenManagerService;->isVirtualScreen(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->removeVirtualScreen(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public unBindVirtualScreen(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 542
    iget-object v1, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 543
    const-string v1, "VirtualScreenManagerService"

    const-string/jumbo v2, "unBindVirtualScreen() There wasn\'t Main Virtual Screen."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/4 v1, 0x0

    .line 551
    :goto_0
    return v1

    .line 547
    :cond_0
    const-string v1, "VirtualScreenManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unBindVirtualScreen() package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 550
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 551
    .local v0, "mainDisplayId":I
    invoke-direct {p0, v0}, Lcom/android/server/am/VirtualScreenManagerService;->unBindVirtualScreenLocked(I)Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 552
    .end local v0    # "mainDisplayId":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateConfigurationLocked()V
    .locals 3

    .prologue
    .line 711
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 712
    iget-object v2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 713
    .local v0, "displayId":I
    invoke-virtual {p0, v0}, Lcom/android/server/am/VirtualScreenManagerService;->updateConfigurationLocked(I)V

    .line 711
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 715
    .end local v0    # "displayId":I
    :cond_0
    return-void
.end method

.method updateConfigurationLocked(I)V
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    .line 718
    iget-object v2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 719
    .local v1, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    iget-object v2, p0, Lcom/android/server/am/VirtualScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v0

    .line 720
    .local v0, "rotation":I
    invoke-virtual {v1, v0}, Lcom/android/server/am/VirtualScreen;->computeScreenConfiguration(I)V

    .line 721
    return-void
.end method

.method public updateVirtualScreenPosition(F)V
    .locals 14
    .param p1, "scale"    # F

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    .line 729
    invoke-virtual {p0}, Lcom/android/server/am/VirtualScreenManagerService;->clearVirtualScreenPosition()V

    .line 730
    iget-object v4, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_7

    .line 731
    iget-object v4, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/VirtualScreen;

    .line 732
    .local v3, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v3, :cond_2

    .line 733
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 734
    .local v2, "position":Landroid/graphics/PointF;
    invoke-virtual {v3}, Lcom/android/server/am/VirtualScreen;->getDisplayId()I

    move-result v0

    .line 735
    .local v0, "displayId":I
    invoke-virtual {p0, v0, v13, v2, p1}, Lcom/android/server/am/VirtualScreenManagerService;->getVirtualScreenPosition(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/PointF;F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 736
    iget-object v4, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenPosition:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 739
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 740
    iget-object v4, p0, Lcom/android/server/am/VirtualScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowManagerService;->isDrawnAppWindow(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 741
    iput-boolean v12, p0, Lcom/android/server/am/VirtualScreenManagerService;->mReadyToUpdateOffset:Z

    .line 750
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/VirtualScreenManagerService;->mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 730
    .end local v0    # "displayId":I
    .end local v2    # "position":Landroid/graphics/PointF;
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 743
    .restart local v0    # "displayId":I
    .restart local v2    # "position":Landroid/graphics/PointF;
    :cond_3
    sget-boolean v4, Lcom/android/server/am/VirtualScreenManagerService;->DEBUG_PERFORMANCE:Z

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/android/server/am/VirtualScreenManagerService;->mOffsetStartTime:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_1

    .line 744
    const-string v4, "VirtualScreenManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1. Performance Test End : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/am/VirtualScreenManagerService;->mOffsetStartTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iput-wide v10, p0, Lcom/android/server/am/VirtualScreenManagerService;->mOffsetStartTime:J

    goto :goto_1

    .line 754
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/am/VirtualScreen;->getBindDisplayId()I

    move-result v0

    .line 755
    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    .line 756
    new-instance v2, Landroid/graphics/PointF;

    .end local v2    # "position":Landroid/graphics/PointF;
    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 757
    .restart local v2    # "position":Landroid/graphics/PointF;
    invoke-virtual {p0, v0, v13, v2, p1}, Lcom/android/server/am/VirtualScreenManagerService;->getVirtualScreenPosition(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/PointF;F)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 758
    iget-object v4, p0, Lcom/android/server/am/VirtualScreenManagerService;->mVirtualScreenPosition:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 761
    :cond_5
    invoke-virtual {v3}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 762
    iget-object v4, p0, Lcom/android/server/am/VirtualScreenManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowManagerService;->isDrawnAppWindow(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 763
    iput-boolean v12, p0, Lcom/android/server/am/VirtualScreenManagerService;->mReadyToUpdateOffset:Z

    goto :goto_2

    .line 765
    :cond_6
    sget-boolean v4, Lcom/android/server/am/VirtualScreenManagerService;->DEBUG_PERFORMANCE:Z

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/android/server/am/VirtualScreenManagerService;->mOffsetMoveBackTime:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_2

    .line 766
    const-string v4, "VirtualScreenManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2. Performance Test End : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/am/VirtualScreenManagerService;->mOffsetMoveBackTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iput-wide v10, p0, Lcom/android/server/am/VirtualScreenManagerService;->mOffsetMoveBackTime:J

    goto/16 :goto_2

    .line 774
    .end local v0    # "displayId":I
    .end local v2    # "position":Landroid/graphics/PointF;
    .end local v3    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_7
    return-void
.end method
