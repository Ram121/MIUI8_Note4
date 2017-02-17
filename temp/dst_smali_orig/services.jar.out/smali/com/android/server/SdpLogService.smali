.class public Lcom/android/server/SdpLogService;
.super Lcom/sec/sdp/ISdpLogService$Stub;
.source "SdpLogService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpLogService$1;,
        Lcom/android/server/SdpLogService$SdpLogHandler;,
        Lcom/android/server/SdpLogService$SdpLogThread;
    }
.end annotation


# static fields
.field private static final CURRENT_VERSION:J = 0x1L

.field private static final DEBUG:Z = false

.field private static final DELAY:I = 0xbb8

.field private static final FILE_EOL:B = 0xat

.field private static final FILE_OFFSET:J = 0x0L

.field private static final FILE_PATH:Ljava/lang/String; = "/data/log/sdp_log"

.field private static final MAX_FILE_LENGTH:J = 0x200000L

.field private static final MAX_HEADER_LENGTH:J = 0x11L

.field private static final MAX_Q_SIZE:I = 0x12c

.field private static final MSG_SAVE_TO_FILE:I = 0x1

.field private static final MSG_SYSTEM_READY:I = 0x0

.field private static final Q_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "SdpLogService"

.field private static sContext:Landroid/content/Context;

.field private static final sLogQ:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

.field private mSdpLogThread:Lcom/android/server/SdpLogService$SdpLogThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/SdpLogService;->Q_LOCK:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Lcom/sec/sdp/ISdpLogService$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/SdpLogService;->mContext:Landroid/content/Context;

    sput-object p1, Lcom/android/server/SdpLogService;->sContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/SdpLogService$SdpLogThread;

    const-string v1, "SdpLogThread"

    invoke-direct {v0, p0, v1}, Lcom/android/server/SdpLogService$SdpLogThread;-><init>(Lcom/android/server/SdpLogService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/SdpLogService;->mSdpLogThread:Lcom/android/server/SdpLogService$SdpLogThread;

    iget-object v0, p0, Lcom/android/server/SdpLogService;->mSdpLogThread:Lcom/android/server/SdpLogService$SdpLogThread;

    invoke-virtual {v0}, Lcom/android/server/SdpLogService$SdpLogThread;->start()V

    const-string v0, "SdpLogService"

    const-string v1, "Spawned sdp log thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/SdpLogService;Lcom/android/server/SdpLogService$SdpLogHandler;)Lcom/android/server/SdpLogService$SdpLogHandler;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SdpLogService;
    .param p1, "x1"    # Lcom/android/server/SdpLogService$SdpLogHandler;

    .prologue
    iput-object p1, p0, Lcom/android/server/SdpLogService;->mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

    return-object p1
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/SdpLogService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SdpLogService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/SdpLogService;->saveToFile()V

    return-void
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 5
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    const-string v1, "SdpLogService"

    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/SdpLogService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .local v0, "e":Ljava/lang/SecurityException;
    throw v0

    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "SdpLogService.d"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const-string v0, "SdpLogService.e"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private enqPayloadLocked(Ljava/lang/String;)V
    .locals 6
    .param p1, "payload"    # Ljava/lang/String;

    .prologue
    sget-object v2, Lcom/android/server/SdpLogService;->Q_LOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SdpLogService;->overloadProtection()V

    sget-object v1, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/SdpLogService;->mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/SdpLogService$SdpLogHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/SdpLogService;->mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/SdpLogService$SdpLogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/SdpLogService;->mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

    const/4 v3, 0x1

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/SdpLogService$SdpLogHandler;->sendEmptyMessageDelayed(IJ)Z

    monitor-exit v2

    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private overloadProtection()V
    .locals 2

    .prologue
    sget-object v0, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_0

    const-string v0, "Overload Observed..."

    invoke-static {v0}, Lcom/android/server/SdpLogService;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_0
    return-void
.end method

.method private saveToFile()V
    .locals 24

    .prologue
    const/4 v9, 0x0

    .local v9, "file":Ljava/io/RandomAccessFile;
    const-wide/16 v12, 0x0

    .local v12, "fileLength":J
    const-wide/16 v14, 0x0

    .local v14, "filePointer":J
    const-wide/16 v4, 0x0

    .local v4, "currVersion":J
    const/16 v17, 0x1

    .local v17, "prevResult":Z
    const/4 v11, 0x0

    .local v11, "isResetRequired":Z
    if-eqz v17, :cond_3

    :try_start_0
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v18, "/data/log/sdp_log"

    const-string v19, "rwd"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v9    # "file":Ljava/io/RandomAccessFile;
    .local v10, "file":Ljava/io/RandomAccessFile;
    const-wide/16 v18, 0x0

    :try_start_1
    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    const-wide/16 v18, 0x11

    cmp-long v18, v12, v18

    if-gtz v18, :cond_7

    const/4 v11, 0x1

    const-string v18, "saveToFile() - File is too small"

    invoke-static/range {v18 .. v18}, Lcom/android/server/SdpLogService;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz v11, :cond_2

    const-wide/16 v18, 0x11

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    const-wide/16 v18, 0x1

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    const/16 v18, 0xa

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/io/RandomAccessFile;->writeByte(I)V

    const-wide/16 v18, 0x11

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v14

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v4

    const-wide/16 v18, 0x11

    cmp-long v18, v14, v18

    if-ltz v18, :cond_1

    const-wide/32 v18, 0x200000

    cmp-long v18, v14, v18

    if-lez v18, :cond_2

    :cond_1
    const/16 v17, 0x0

    const-string v18, "saveToFile() - Couldn\'t restore the file"

    invoke-static/range {v18 .. v18}, Lcom/android/server/SdpLogService;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_2
    move-object v9, v10

    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .restart local v9    # "file":Ljava/io/RandomAccessFile;
    :cond_3
    if-eqz v17, :cond_b

    :try_start_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "saveToFile() - FP : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", Version : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V

    invoke-virtual {v9, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    sget-object v19, Lcom/android/server/SdpLogService;->Q_LOCK:Ljava/lang/Object;

    monitor-enter v19
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "saveToFile() - QS : "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v20, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    invoke-interface/range {v20 .. v20}, Ljava/util/Queue;->size()I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V

    :cond_4
    :goto_1
    sget-object v18, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    invoke-interface/range {v18 .. v18}, Ljava/util/Queue;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_a

    sget-object v18, Lcom/android/server/SdpLogService;->sLogQ:Ljava/util/Queue;

    invoke-interface/range {v18 .. v18}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .local v16, "log":Ljava/lang/String;
    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .local v7, "dataToWrite":[B
    array-length v6, v7

    .local v6, "dataLength":I
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v20

    int-to-long v0, v6

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    const-wide/16 v22, 0x1

    add-long v20, v20, v22

    const-wide/32 v22, 0x200000

    cmp-long v18, v20, v22

    if-lez v18, :cond_5

    const-wide/16 v20, 0x11

    move-wide/from16 v0, v20

    invoke-virtual {v9, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_5
    invoke-virtual {v9, v7}, Ljava/io/RandomAccessFile;->write([B)V

    const/16 v18, 0xa

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/io/RandomAccessFile;->write(I)V

    goto :goto_1

    .end local v6    # "dataLength":I
    .end local v7    # "dataToWrite":[B
    .end local v16    # "log":Ljava/lang/String;
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v18
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v8

    .local v8, "exc":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const-string v18, "saveToFile() - Couldn\'t open file"

    invoke-static/range {v18 .. v18}, Lcom/android/server/SdpLogService;->e(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/16 v17, 0x0

    if-eqz v9, :cond_6

    :try_start_6
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .end local v8    # "exc":Ljava/io/FileNotFoundException;
    :cond_6
    :goto_3
    if-eqz v17, :cond_f

    const-string v18, "saveToFile() - Done Successfully!!!"

    invoke-static/range {v18 .. v18}, Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V

    :goto_4
    return-void

    .end local v9    # "file":Ljava/io/RandomAccessFile;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    :cond_7
    const-wide/32 v18, 0x200000

    cmp-long v18, v12, v18

    if-lez v18, :cond_8

    const/4 v11, 0x1

    :try_start_7
    const-string v18, "saveToFile() - File length had exceeded limitation"

    invoke-static/range {v18 .. v18}, Lcom/android/server/SdpLogService;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v8

    move-object v9, v10

    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .restart local v9    # "file":Ljava/io/RandomAccessFile;
    goto :goto_2

    .end local v9    # "file":Ljava/io/RandomAccessFile;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    :cond_8
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v14

    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v4

    const-wide/16 v18, 0x11

    cmp-long v18, v14, v18

    if-ltz v18, :cond_9

    const-wide/32 v18, 0x200000

    cmp-long v18, v14, v18

    if-lez v18, :cond_0

    :cond_9
    const/4 v11, 0x1

    const-string v18, "saveToFile() - File header had been broken"

    invoke-static/range {v18 .. v18}, Lcom/android/server/SdpLogService;->e(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_0

    :catch_2
    move-exception v8

    move-object v9, v10

    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .local v8, "exc":Ljava/io/IOException;
    .restart local v9    # "file":Ljava/io/RandomAccessFile;
    :goto_5
    :try_start_8
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    const-string v18, "saveToFile() - Couldn\'t modify file..."

    invoke-static/range {v18 .. v18}, Lcom/android/server/SdpLogService;->e(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/16 v17, 0x0

    if-eqz v9, :cond_6

    :try_start_9
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    :catch_3
    move-exception v18

    goto :goto_3

    .end local v8    # "exc":Ljava/io/IOException;
    :cond_a
    :try_start_a
    monitor-exit v19
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v14

    const-wide/32 v18, 0x200000

    cmp-long v18, v14, v18

    if-lez v18, :cond_d

    const/16 v17, 0x0

    :cond_b
    :goto_6
    if-eqz v17, :cond_c

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "saveToFile() - FP : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", FL : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_c
    if-eqz v9, :cond_6

    :try_start_c
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_3

    :catch_4
    move-exception v18

    goto/16 :goto_3

    :cond_d
    const-wide/16 v18, 0x0

    :try_start_d
    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v9, v14, v15}, Ljava/io/RandomAccessFile;->writeLong(J)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_6

    :catch_5
    move-exception v8

    goto :goto_5

    :catch_6
    move-exception v8

    .local v8, "exc":Ljava/lang/Exception;
    :goto_7
    :try_start_e
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    const-string v18, "saveToFile() - Unexpected error occurred..."

    invoke-static/range {v18 .. v18}, Lcom/android/server/SdpLogService;->e(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    const/16 v17, 0x0

    if-eqz v9, :cond_6

    :try_start_f
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    goto/16 :goto_3

    :catch_7
    move-exception v18

    goto/16 :goto_3

    .end local v8    # "exc":Ljava/lang/Exception;
    :catchall_1
    move-exception v18

    :goto_8
    if-eqz v9, :cond_e

    :try_start_10
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    :cond_e
    :goto_9
    throw v18

    :cond_f
    const-string v18, "saveToFile() - Failed..."

    invoke-static/range {v18 .. v18}, Lcom/android/server/SdpLogService;->d(Ljava/lang/String;)V

    goto/16 :goto_4

    .local v8, "exc":Ljava/io/FileNotFoundException;
    :catch_8
    move-exception v18

    goto/16 :goto_3

    .end local v8    # "exc":Ljava/io/FileNotFoundException;
    :catch_9
    move-exception v19

    goto :goto_9

    .end local v9    # "file":Ljava/io/RandomAccessFile;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v18

    move-object v9, v10

    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .restart local v9    # "file":Ljava/io/RandomAccessFile;
    goto :goto_8

    .end local v9    # "file":Ljava/io/RandomAccessFile;
    .restart local v10    # "file":Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v8

    move-object v9, v10

    .end local v10    # "file":Ljava/io/RandomAccessFile;
    .restart local v9    # "file":Ljava/io/RandomAccessFile;
    goto :goto_7
.end method


# virtual methods
.method public enqPayload(Ljava/lang/String;)V
    .locals 1
    .param p1, "payload"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "enqPayload"

    invoke-static {v0}, Lcom/android/server/SdpLogService;->checkCallerPermissionFor(Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/SdpLogService;->enqPayloadLocked(Ljava/lang/String;)V

    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    const-string v1, "systemReady"

    invoke-static {v1}, Lcom/android/server/SdpLogService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string v1, "SdpLogService"

    const-string v2, "SdpLogService ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SdpLogService"

    const-string v2, "sending message MSG_SYSTEM_READY to handler."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/SdpLogService;->mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/SdpLogService$SdpLogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/SdpLogService;->mSdpLogHandler:Lcom/android/server/SdpLogService$SdpLogHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/SdpLogService$SdpLogHandler;->sendMessage(Landroid/os/Message;)Z

    const-string v1, "SdpLogService"

    const-string v2, "systemReady done."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
