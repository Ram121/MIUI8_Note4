.class Lcom/android/server/audio/AudioService$FineVolumeState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FineVolumeState"
.end annotation


# instance fields
.field private final mIndex:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexMax:I

.field private mVolumeIndexSettingName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 7

    .prologue
    .line 5327
    iput-object p1, p0, Lcom/android/server/audio/AudioService$FineVolumeState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5325
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v4, 0x8

    const/high16 v5, 0x3f400000    # 0.75f

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v3, p0, Lcom/android/server/audio/AudioService$FineVolumeState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5328
    const v2, 0x7fffffff

    .line 5329
    .local v2, "remainingDevices":I
    const/16 v3, 0x9

    iput v3, p0, Lcom/android/server/audio/AudioService$FineVolumeState;->mIndexMax:I

    .line 5330
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz v2, :cond_1

    .line 5331
    const/4 v3, 0x1

    shl-int v0, v3, v1

    .line 5332
    .local v0, "device":I
    and-int v3, v0, v2

    if-nez v3, :cond_0

    .line 5330
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5335
    :cond_0
    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v2, v3

    .line 5336
    iget-object v3, p0, Lcom/android/server/audio/AudioService$FineVolumeState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 5338
    .end local v0    # "device":I
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Lcom/android/server/audio/AudioService$1;

    .prologue
    .line 5322
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$FineVolumeState;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method

.method private getValidIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 5367
    if-gez p1, :cond_1

    .line 5368
    const/4 p1, 0x0

    .line 5372
    .end local p1    # "index":I
    :cond_0
    :goto_0
    return p1

    .line 5369
    .restart local p1    # "index":I
    :cond_1
    iget v0, p0, Lcom/android/server/audio/AudioService$FineVolumeState;->mIndexMax:I

    if-le p1, v0, :cond_0

    .line 5370
    iget p1, p0, Lcom/android/server/audio/AudioService$FineVolumeState;->mIndexMax:I

    goto :goto_0
.end method


# virtual methods
.method public applyFineVolume(I)V
    .locals 2
    .param p1, "device"    # I

    .prologue
    .line 5377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioParam;fine_volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$FineVolumeState;->getIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5378
    return-void
.end method

.method public getIndex(I)I
    .locals 4
    .param p1, "device"    # I

    .prologue
    .line 5353
    const-class v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v2

    .line 5354
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$FineVolumeState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 5355
    .local v0, "index":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 5357
    iget-object v1, p0, Lcom/android/server/audio/AudioService$FineVolumeState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "index":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 5359
    .restart local v0    # "index":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v2

    return v1

    .line 5360
    .end local v0    # "index":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMaxIndex()I
    .locals 1

    .prologue
    .line 5363
    iget v0, p0, Lcom/android/server/audio/AudioService$FineVolumeState;->mIndexMax:I

    return v0
.end method

.method public setIndex(II)Z
    .locals 5
    .param p1, "index"    # I
    .param p2, "device"    # I

    .prologue
    .line 5341
    const-class v2, Lcom/android/server/audio/AudioService$FineVolumeState;

    monitor-enter v2

    .line 5342
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$FineVolumeState;->getIndex(I)I

    move-result v0

    .line 5343
    .local v0, "oldIndex":I
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$FineVolumeState;->getValidIndex(I)I

    move-result p1

    .line 5345
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5346
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$FineVolumeState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5347
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5348
    const/4 v1, 0x1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v1

    .line 5347
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 5349
    .end local v0    # "oldIndex":I
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
