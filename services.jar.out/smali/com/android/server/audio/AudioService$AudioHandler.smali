.class Lcom/android/server/audio/AudioService$AudioHandler;
.super Landroid/os/Handler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .prologue
    .line 5893
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/audio/AudioService;
    .param p2, "x1"    # Lcom/android/server/audio/AudioService$1;

    .prologue
    .line 5893
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/audio/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$AudioHandler;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 5893
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->cleanupPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private cleanupPlayer(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 6251
    if-eqz p1, :cond_0

    .line 6253
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 6254
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6259
    :cond_0
    :goto_0
    return-void

    .line 6255
    :catch_0
    move-exception v0

    .line 6256
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onLoadSoundEffects()Z
    .locals 15

    .prologue
    .line 5987
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 5988
    :try_start_0
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSystemReady:Z
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$6200(Lcom/android/server/audio/AudioService;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 5989
    const-string v10, "AudioService"

    const-string/jumbo v12, "onLoadSoundEffects() called before boot complete"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5990
    const/4 v10, 0x0

    monitor-exit v11

    .line 6121
    :goto_0
    return v10

    .line 5993
    :cond_0
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 5994
    const/4 v10, 0x1

    monitor-exit v11

    goto :goto_0

    .line 6120
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 5997
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->loadTouchSoundAssets()V
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$6300(Lcom/android/server/audio/AudioService;)V

    .line 5999
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v12, Landroid/media/SoundPool$Builder;

    invoke-direct {v12}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v12

    new-instance v13, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v13}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v14, 0xd

    invoke-virtual {v13, v14}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v12

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->access$2102(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 6006
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->access$2202(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    .line 6007
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v12, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    iget-object v13, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {v12, v13}, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;-><init>(Lcom/android/server/audio/AudioService;)V

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->access$6402(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 6008
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$6400(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->start()V

    .line 6009
    const/4 v0, 0x3

    .local v0, "attempts":I
    move v1, v0

    .line 6010
    .end local v0    # "attempts":I
    .local v1, "attempts":I
    :goto_1
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    if-nez v10, :cond_2

    add-int/lit8 v0, v1, -0x1

    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    if-lez v1, :cond_3

    .line 6013
    :try_start_2
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v10

    const-wide/16 v12, 0x1388

    invoke-virtual {v10, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v0

    .line 6016
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_1

    .line 6014
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    :catch_0
    move-exception v2

    .line 6015
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v10, "AudioService"

    const-string v12, "Interrupted while waiting sound pool listener thread."

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 6016
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_1

    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_2
    move v0, v1

    .line 6019
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    :cond_3
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v10

    if-nez v10, :cond_5

    .line 6020
    const-string v10, "AudioService"

    const-string/jumbo v12, "onLoadSoundEffects() SoundPool listener or thread creation error"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6021
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$1900(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 6022
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$1900(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Looper;->quit()V

    .line 6023
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->access$1902(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 6025
    :cond_4
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->access$6402(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 6026
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/SoundPool;->release()V

    .line 6027
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->access$2102(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 6028
    const/4 v10, 0x0

    monitor-exit v11

    goto/16 :goto_0

    .line 6036
    :cond_5
    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$6500()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    new-array v7, v10, [I

    .line 6037
    .local v7, "poolId":[I
    const/4 v4, 0x0

    .local v4, "fileIdx":I
    :goto_2
    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$6500()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_6

    .line 6038
    const/4 v10, -0x1

    aput v10, v7, v4

    .line 6037
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 6046
    :cond_6
    const/4 v6, 0x0

    .line 6047
    .local v6, "numSamples":I
    const/4 v3, 0x0

    .local v3, "effect":I
    :goto_3
    const/16 v10, 0x10

    if-ge v3, v10, :cond_c

    .line 6049
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    aget v10, v10, v12

    if-nez v10, :cond_7

    .line 6047
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 6052
    :cond_7
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x0

    aget v10, v10, v12

    aget v10, v7, v10

    const/4 v12, -0x1

    if-ne v10, v12, :cond_b

    .line 6060
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$5100(Lcom/android/server/audio/AudioService;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 6061
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/audio/AudioService;->access$5100(Lcom/android/server/audio/AudioService;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$6500()Ljava/util/List;

    move-result-object v10

    iget-object v13, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v13}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v3

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6066
    .local v5, "filePath":Ljava/lang/String;
    :goto_5
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v12}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v8

    .line 6068
    .local v8, "sampleId":I
    if-gtz v8, :cond_8

    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$5100(Lcom/android/server/audio/AudioService;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 6069
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "/media/audio/ui/"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$6500()Ljava/util/List;

    move-result-object v10

    iget-object v13, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v13}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v3

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6070
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v12}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v8

    .line 6073
    :cond_8
    if-gtz v8, :cond_a

    .line 6074
    const-string v10, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Soundpool could not load file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 6063
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v8    # "sampleId":I
    :cond_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "/media/audio/ui/"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$6500()Ljava/util/List;

    move-result-object v10

    iget-object v13, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v13}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v3

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "filePath":Ljava/lang/String;
    goto/16 :goto_5

    .line 6076
    .restart local v8    # "sampleId":I
    :cond_a
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    aput v8, v10, v12

    .line 6077
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x0

    aget v10, v10, v12

    aput v8, v7, v10

    .line 6078
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 6081
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v8    # "sampleId":I
    :cond_b
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v13}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v3

    const/4 v14, 0x0

    aget v13, v13, v14

    aget v13, v7, v13

    aput v13, v10, v12

    goto/16 :goto_4

    .line 6086
    :cond_c
    if-lez v6, :cond_d

    .line 6087
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/android/server/audio/AudioService$SoundPoolCallback;->setSamples([I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6089
    const/4 v0, 0x3

    .line 6090
    const/4 v9, 0x1

    .local v9, "status":I
    move v1, v0

    .line 6091
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    :goto_6
    const/4 v10, 0x1

    if-ne v9, v10, :cond_14

    add-int/lit8 v0, v1, -0x1

    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    if-lez v1, :cond_e

    .line 6093
    :try_start_4
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v10

    const-wide/16 v12, 0x1388

    invoke-virtual {v10, v12, v13}, Ljava/lang/Object;->wait(J)V

    .line 6094
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/audio/AudioService$SoundPoolCallback;->status()I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v9

    move v1, v0

    .line 6097
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_6

    .line 6095
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    :catch_1
    move-exception v2

    .line 6096
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v10, "AudioService"

    const-string v12, "Interrupted while waiting sound pool callback."

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 6097
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_6

    .line 6100
    .end local v1    # "attempts":I
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v9    # "status":I
    .restart local v0    # "attempts":I
    :cond_d
    const/4 v9, -0x1

    .line 6103
    .restart local v9    # "status":I
    :cond_e
    :goto_7
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$1900(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v10

    if-eqz v10, :cond_f

    .line 6104
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$1900(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Looper;->quit()V

    .line 6105
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->access$1902(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 6107
    :cond_f
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->access$6402(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 6108
    if-eqz v9, :cond_12

    .line 6109
    const-string v10, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onLoadSoundEffects(), Error "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " while loading samples"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6111
    const/4 v3, 0x0

    :goto_8
    const/16 v10, 0x10

    if-ge v3, v10, :cond_11

    .line 6112
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    aget v10, v10, v12

    if-lez v10, :cond_10

    .line 6113
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    const/4 v13, -0x1

    aput v13, v10, v12

    .line 6111
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 6117
    :cond_11
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/SoundPool;->release()V

    .line 6118
    iget-object v10, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10, v12}, Lcom/android/server/audio/AudioService;->access$2102(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 6120
    :cond_12
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 6121
    if-nez v9, :cond_13

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_0

    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    :cond_14
    move v0, v1

    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    goto :goto_7
.end method

.method private onPersistSafeVolumeState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 6268
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "audio_safe_volume_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6271
    return-void
.end method

.method private onPlaySoundEffect(II)V
    .locals 12
    .param p1, "effectType"    # I
    .param p2, "volume"    # I

    .prologue
    .line 6156
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 6158
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onLoadSoundEffects()Z

    .line 6160
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6161
    const-string v0, "AudioService"

    const-string/jumbo v1, "playSoundEffect mSoundPool == null !!!."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6162
    monitor-exit v11

    .line 6248
    :goto_0
    return-void

    .line 6174
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6175
    .local v2, "volFloat":F
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setStreamType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6177
    packed-switch p1, :pswitch_data_0

    .line 6194
    :goto_1
    :pswitch_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6196
    :try_start_1
    const-string/jumbo v0, "situation=1;device=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 6204
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v0

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget v0, v0, v1

    if-lez v0, :cond_2

    .line 6205
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v1

    aget-object v1, v1, p1

    const/4 v3, 0x1

    aget v1, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 6247
    :goto_3
    monitor-exit v11

    goto :goto_0

    .end local v2    # "volFloat":F
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 6182
    .restart local v2    # "volFloat":F
    :pswitch_1
    const/high16 v2, 0x3f000000    # 0.5f

    .line 6183
    goto :goto_2

    .line 6185
    :pswitch_2
    :try_start_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mIsDefaultStreamNotification:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6700(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6186
    const-string v0, "AudioService"

    const-string/jumbo v1, "setStreamType STREAM_NOTIFICATION"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6187
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setStreamType(I)V

    goto :goto_1

    .line 6189
    :cond_1
    const-string v0, "AudioService"

    const-string/jumbo v1, "setStreamType STREAM_RING"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6190
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setStreamType(I)V

    goto :goto_1

    .line 6197
    :catch_0
    move-exception v7

    .line 6198
    .local v7, "e":Ljava/lang/NumberFormatException;
    const-string v0, "AudioService"

    const-string v1, "NumberFormatException occurred. Play default volume touch tone."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6199
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_2

    .line 6208
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    new-instance v10, Landroid/media/MediaPlayer;

    invoke-direct {v10}, Landroid/media/MediaPlayer;-><init>()V

    .line 6209
    .local v10, "mediaPlayer":Landroid/media/MediaPlayer;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mediaPlayerplay"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6217
    :try_start_4
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5100(Lcom/android/server/audio/AudioService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECTS_PATH_THEME:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$5100(Lcom/android/server/audio/AudioService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$6500()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, p1

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 6223
    .local v9, "filePath":Ljava/lang/String;
    :goto_4
    invoke-virtual {v10, v9}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 6224
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 6225
    invoke-virtual {v10}, Landroid/media/MediaPlayer;->prepare()V

    .line 6226
    invoke-virtual {v10, v2}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 6227
    new-instance v0, Lcom/android/server/audio/AudioService$AudioHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$AudioHandler$1;-><init>(Lcom/android/server/audio/AudioService$AudioHandler;)V

    invoke-virtual {v10, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 6232
    new-instance v0, Lcom/android/server/audio/AudioService$AudioHandler$2;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$AudioHandler$2;-><init>(Lcom/android/server/audio/AudioService$AudioHandler;)V

    invoke-virtual {v10, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 6238
    invoke-virtual {v10}, Landroid/media/MediaPlayer;->start()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 6239
    .end local v9    # "filePath":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 6240
    .local v8, "ex":Ljava/io/IOException;
    :try_start_5
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IOException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .line 6220
    .end local v8    # "ex":Ljava/io/IOException;
    :cond_3
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/ui/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$6500()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, p1

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v9

    .restart local v9    # "filePath":Ljava/lang/String;
    goto :goto_4

    .line 6241
    .end local v9    # "filePath":Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 6242
    .local v8, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_7
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalArgumentException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 6243
    .end local v8    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v8

    .line 6244
    .local v8, "ex":Ljava/lang/IllegalStateException;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalStateException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    .line 6177
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onUnloadSoundEffects()V
    .locals 7

    .prologue
    .line 6130
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$2000(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 6131
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    if-nez v3, :cond_0

    .line 6132
    monitor-exit v4

    .line 6153
    :goto_0
    return-void

    .line 6135
    :cond_0
    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$6500()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 6136
    .local v2, "poolId":[I
    const/4 v1, 0x0

    .local v1, "fileIdx":I
    :goto_1
    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Lcom/android/server/audio/AudioService;->access$6500()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 6137
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 6136
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6140
    :cond_1
    const/4 v0, 0x0

    .local v0, "effect":I
    :goto_2
    const/16 v3, 0x10

    if-ge v0, v3, :cond_4

    .line 6141
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x1

    aget v3, v3, v5

    if-gtz v3, :cond_3

    .line 6140
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6144
    :cond_3
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    aget v3, v2, v3

    if-nez v3, :cond_2

    .line 6145
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v5}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v5

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v5}, Landroid/media/SoundPool;->unload(I)Z

    .line 6146
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, v3, v5

    .line 6147
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$6600(Lcom/android/server/audio/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    const/4 v5, -0x1

    aput v5, v2, v3

    goto :goto_3

    .line 6152
    .end local v0    # "effect":I
    .end local v1    # "fileIdx":I
    .end local v2    # "poolId":[I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 6150
    .restart local v0    # "effect":I
    .restart local v1    # "fileIdx":I
    .restart local v2    # "poolId":[I
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$2100(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/SoundPool;->release()V

    .line 6151
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3, v5}, Lcom/android/server/audio/AudioService;->access$2102(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 6152
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private persistRingerMode(I)V
    .locals 2
    .param p1, "ringerMode"    # I

    .prologue
    .line 5978
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4600(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5982
    :goto_0
    return-void

    .line 5981
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .locals 7
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .prologue
    const/16 v1, 0x6f

    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 5950
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4600(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5975
    :cond_0
    :goto_0
    return-void

    .line 5953
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6100(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_2

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$700(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_0

    .line 5957
    :cond_2
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v3, v0, 0xa

    .line 5958
    .local v3, "volume":I
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$700(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    .line 5959
    if-ne p2, v2, :cond_4

    .line 5960
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const-string/jumbo v5, "persist.audio.sysvolume"

    move v6, v4

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5971
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    const/4 v4, -0x2

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 5962
    :cond_4
    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    .line 5963
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const-string/jumbo v5, "persist.audio.headsetsysvolume"

    move v6, v4

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_1

    .line 5965
    :cond_5
    const/16 v0, 0x8

    if-ne p2, v0, :cond_3

    .line 5966
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const-string/jumbo v5, "persist.audio.hphonesysvolume"

    move v6, v4

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_1
.end method

.method private setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V
    .locals 4
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;

    .prologue
    .line 5937
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 5940
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 5941
    .local v0, "numStreamTypes":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "streamType":I
    :goto_0
    if-ltz v1, :cond_1

    .line 5942
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$700(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)[I

    move-result-object v2

    aget v2, v2, v1

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$700(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 5944
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$5800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 5941
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5947
    :cond_1
    return-void
.end method

.method private setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .locals 10
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .prologue
    .line 5897
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 5899
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 5902
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v7

    .line 5903
    .local v7, "numStreamTypes":I
    add-int/lit8 v9, v7, -0x1

    .local v9, "streamType":I
    :goto_0
    if-ltz v9, :cond_2

    .line 5904
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$700(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    if-eq v9, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4400(Lcom/android/server/audio/AudioService;)[I

    move-result-object v0

    aget v0, v0, v9

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$700(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 5908
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I
    invoke-static {v0, v9}, Lcom/android/server/audio/AudioService;->access$5600(Lcom/android/server/audio/AudioService;I)I

    move-result v8

    .line 5909
    .local v8, "streamDevice":I
    if-eq p2, v8, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$4800(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x20000380

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 5911
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 5913
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5800(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-virtual {v0, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 5903
    .end local v8    # "streamDevice":I
    :cond_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 5916
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5918
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/16 v6, 0x1f4

    move v3, p2

    move-object v5, p1

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5926
    return-void

    .line 5916
    .end local v7    # "numStreamTypes":I
    .end local v9    # "streamType":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setFineVolume_internal(Lcom/android/server/audio/AudioService$FineVolumeState;I)V
    .locals 0
    .param p1, "state"    # Lcom/android/server/audio/AudioService$FineVolumeState;
    .param p2, "device"    # I

    .prologue
    .line 5930
    if-eqz p1, :cond_0

    .line 5931
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$FineVolumeState;->applyFineVolume(I)V

    .line 5932
    :cond_0
    return-void
.end method

.method private setForceUse(II)V
    .locals 2
    .param p1, "usage"    # I
    .param p2, "config"    # I

    .prologue
    .line 6262
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v1

    monitor-enter v1

    .line 6263
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->setForceUseInt_SyncDevices(II)V
    invoke-static {v0, p1, p2}, Lcom/android/server/audio/AudioService;->access$6900(Lcom/android/server/audio/AudioService;II)V

    .line 6264
    monitor-exit v1

    .line 6265
    return-void

    .line 6264
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 6275
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 6516
    :cond_0
    :goto_0
    return-void

    .line 6278
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService$AudioHandler;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    goto :goto_0

    .line 6282
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/AudioService$FineVolumeState;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService$AudioHandler;->setFineVolume_internal(Lcom/android/server/audio/AudioService$FineVolumeState;I)V

    goto :goto_0

    .line 6287
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V

    goto :goto_0

    .line 6291
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService$AudioHandler;->persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    goto :goto_0

    .line 6295
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$4600(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6298
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "volume_master_mute"

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 6307
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->persistRingerMode(I)V

    goto :goto_0

    .line 6311
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->onMediaServerDied()V

    goto :goto_0

    .line 6315
    :sswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onUnloadSoundEffects()V

    goto :goto_0

    .line 6321
    :sswitch_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService$AudioHandler;->onLoadSoundEffects()Z

    move-result v10

    .line 6322
    .local v10, "loaded":Z
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 6323
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    .line 6324
    .local v13, "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    monitor-enter v13

    .line 6325
    if-eqz v10, :cond_1

    const/4 v1, 0x0

    :goto_1
    :try_start_0
    iput v1, v13, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    .line 6326
    invoke-virtual {v13}, Ljava/lang/Object;->notify()V

    .line 6327
    monitor-exit v13

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6325
    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    .line 6332
    .end local v10    # "loaded":Z
    .end local v13    # "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    :sswitch_9
    const-string v1, "AudioService"

    const-string/jumbo v2, "received MSG_PLAY_SOUND_EFFECT onPlaySoundEffect start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6333
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService$AudioHandler;->onPlaySoundEffect(II)V

    goto/16 :goto_0

    .line 6338
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$3300(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v2

    monitor-enter v2

    .line 6339
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static {v3, v1}, Lcom/android/server/audio/AudioService;->access$7000(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    .line 6340
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 6345
    :sswitch_b
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioService$AudioHandler;->setForceUse(II)V

    goto/16 :goto_0

    .line 6349
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->resetBluetoothSco()V
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$7100(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_0

    .line 6353
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;

    .line 6356
    .local v8, "connectState":Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;
    iget-object v1, v8, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6359
    iget-object v1, v8, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mName:Ljava/lang/String;

    const-string/jumbo v2, "h2w-before-boot-completed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6360
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSystemReady:Z
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$6200(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6361
    iget v1, v8, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mType:I

    sparse-switch v1, :sswitch_data_1

    .line 6377
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$7400(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 6364
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v2, v8, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mType:I

    iget v3, v8, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mState:I

    iget-object v4, v8, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mAddress:Ljava/lang/String;

    const-string/jumbo v5, "h2w"

    iget-object v6, v8, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    # invokes: Lcom/android/server/audio/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->access$7200(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6366
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v2, v8, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mType:I

    # setter for: Lcom/android/server/audio/AudioService;->mLateBootCompleted_WiredDevice:I
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$7302(Lcom/android/server/audio/AudioService;I)I

    goto :goto_2

    .line 6374
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v2, v8, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mType:I

    iget v3, v8, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mState:I

    iget-object v4, v8, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mAddress:Ljava/lang/String;

    iget-object v5, v8, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mName:Ljava/lang/String;

    iget-object v6, v8, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;->mCaller:Ljava/lang/String;

    # invokes: Lcom/android/server/audio/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->access$7200(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 6382
    .end local v8    # "connectState":Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/audio/AudioService;->onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v2, v1, v3}, Lcom/android/server/audio/AudioService;->access$7500(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 6383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$7400(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 6387
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/audio/AudioService;->onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v2, v1, v3}, Lcom/android/server/audio/AudioService;->access$7600(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 6388
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$7400(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 6392
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v7

    .line 6393
    .local v7, "N":I
    if-lez v7, :cond_4

    .line 6395
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v2

    .line 6396
    :try_start_2
    new-instance v14, Landroid/media/AudioRoutesInfo;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v14, v1}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 6397
    .local v14, "routes":Landroid/media/AudioRoutesInfo;
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 6398
    :goto_3
    if-lez v7, :cond_4

    .line 6399
    add-int/lit8 v7, v7, -0x1

    .line 6400
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v12

    check-cast v12, Landroid/media/IAudioRoutesObserver;

    .line 6402
    .local v12, "obs":Landroid/media/IAudioRoutesObserver;
    :try_start_3
    invoke-interface {v12, v14}, Landroid/media/IAudioRoutesObserver;->dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 6403
    :catch_0
    move-exception v1

    goto :goto_3

    .line 6397
    .end local v12    # "obs":Landroid/media/IAudioRoutesObserver;
    .end local v14    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    .line 6407
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 6408
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, -0x1

    # invokes: Lcom/android/server/audio/AudioService;->observeDevicesForStreams(I)V
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$4300(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_0

    .line 6413
    .end local v7    # "N":I
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/android/server/audio/AudioService;->onCheckMusicActive(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/server/audio/AudioService;->access$7700(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6421
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/audio/AudioService;->onSendBecomingNoisyIntent(I)V
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$7800(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_0

    .line 6427
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    move v2, v1

    :goto_4
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/android/server/audio/AudioService;->onConfigureSafeVolume(ZLjava/lang/String;)V
    invoke-static {v3, v2, v1}, Lcom/android/server/audio/AudioService;->access$7900(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    move v2, v1

    goto :goto_4

    .line 6431
    :sswitch_15
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->onPersistSafeVolumeState(I)V

    goto/16 :goto_0

    .line 6435
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/audio/AudioService;->onBroadcastScoConnectionState(I)V
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$8000(Lcom/android/server/audio/AudioService;I)V

    goto/16 :goto_0

    .line 6439
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->onSystemReady()V

    goto/16 :goto_0

    .line 6443
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    goto/16 :goto_0

    .line 6447
    :sswitch_19
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 6448
    .local v11, "musicActiveMs":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "unsafe_volume_music_active_ms"

    const/4 v3, -0x2

    invoke-static {v1, v2, v11, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_0

    .line 6453
    .end local v11    # "musicActiveMs":I
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$4700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "microphone_mute"

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_0

    .line 6459
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/audio/AudioService;->onUnmuteStream(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/audio/AudioService;->access$8100(Lcom/android/server/audio/AudioService;II)V

    goto/16 :goto_0

    .line 6462
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/audio/AudioService;->onDynPolicyMixStateUpdate(Ljava/lang/String;I)V
    invoke-static {v2, v1, v3}, Lcom/android/server/audio/AudioService;->access$8200(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 6466
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/audio/AudioService;->onSetAoBleSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v2, v1, v3}, Lcom/android/server/audio/AudioService;->access$8300(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 6467
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$7400(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 6471
    :sswitch_1e
    const-string v1, "AudioService"

    const-string v2, "MSG_USB_CHECK_RELEASE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6472
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mFakeState:Z
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$8402(Lcom/android/server/audio/AudioService;Z)Z

    .line 6473
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->getCurOutDevice()I
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 6474
    const-string v1, "AudioService"

    const-string v2, "### release fake device"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6475
    const/4 v1, 0x4

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, ""

    invoke-static {v1, v2, v3, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6481
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->checkAndSendEarCareInfo()V
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$8500(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_0

    .line 6486
    :sswitch_20
    const-string v1, "AudioService"

    const-string v2, "Soft reset is received"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6487
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->performSoftReset()V
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$8600(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_0

    .line 6491
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->playSilentModeSound()V
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$8700(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_0

    .line 6494
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->vibrateCall()V
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$8800(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_0

    .line 6497
    :sswitch_23
    const-string v1, "AudioService"

    const-string/jumbo v2, "mIsPlaySilentModeOff false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6498
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mIsPlaySilentModeOff:Z
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$8902(Lcom/android/server/audio/AudioService;Z)Z

    goto/16 :goto_0

    .line 6501
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/audio/AudioService;->mIsVibrate:Z
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$9002(Lcom/android/server/audio/AudioService;Z)Z

    goto/16 :goto_0

    .line 6505
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/audio/AudioService;->onSendBecomingNoisyIntent(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/audio/AudioService;->access$9100(Lcom/android/server/audio/AudioService;II)V

    goto/16 :goto_0

    .line 6509
    :sswitch_26
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 6510
    .local v9, "key":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 6511
    .local v15, "value":Ljava/lang/String;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SystemProperties.set("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6512
    invoke-static {v9, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6275
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_3
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_9
        0x6 -> :sswitch_a
        0x7 -> :sswitch_8
        0x8 -> :sswitch_b
        0x9 -> :sswitch_c
        0xa -> :sswitch_2
        0xb -> :sswitch_4
        0xc -> :sswitch_11
        0xd -> :sswitch_b
        0xe -> :sswitch_12
        0xf -> :sswitch_13
        0x10 -> :sswitch_14
        0x11 -> :sswitch_14
        0x12 -> :sswitch_15
        0x13 -> :sswitch_16
        0x14 -> :sswitch_7
        0x15 -> :sswitch_17
        0x16 -> :sswitch_19
        0x17 -> :sswitch_1a
        0x18 -> :sswitch_1b
        0x19 -> :sswitch_1c
        0x1a -> :sswitch_18
        0x64 -> :sswitch_d
        0x65 -> :sswitch_f
        0x66 -> :sswitch_10
        0x67 -> :sswitch_1e
        0x68 -> :sswitch_1f
        0x69 -> :sswitch_20
        0x6a -> :sswitch_21
        0x6b -> :sswitch_22
        0x6c -> :sswitch_23
        0x6d -> :sswitch_24
        0x6e -> :sswitch_25
        0x6f -> :sswitch_26
        0x70 -> :sswitch_1
        0x71 -> :sswitch_1d
    .end sparse-switch

    .line 6361
    :sswitch_data_1
    .sparse-switch
        0x4 -> :sswitch_e
        0x8 -> :sswitch_e
    .end sparse-switch
.end method
