.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "LifeLogComponentRunner.java"

# interfaces
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;


# static fields
.field private static final DEFAULT_BATCHING_PERIOD:I = 0xffff

.field private static final DEFAULT_STOP_PERIOD:I = 0x12c

.field private static final DEFAULT_WAIT_PERIOD:I = 0x5dc


# instance fields
.field private final mCurrentPositionRequest:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;

.field protected final mPassiveCurrentPosition:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

.field private mStopPeriod:I

.field private mWaitPeriod:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 3
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mStopPeriod:I

    const/16 v0, 0x5dc

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mWaitPeriod:I

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-direct {v0, p2, p3, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mPassiveCurrentPosition:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mCurrentPositionRequest:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mCurrentPositionRequest:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;

    invoke-interface {v0, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;->registerObserver(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mCurrentPositionRequest:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;

    check-cast v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->addRequestParser(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;)V

    return-void
.end method

.method private checkMovingPacket([BI)Z
    .locals 2
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    add-int/lit8 v0, p2, 0x5

    array-length v1, p1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkStayingAreaPacket([BI)Z
    .locals 2
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    add-int/lit8 v0, p2, 0x17

    array-length v1, p1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseForMoving([BIJJ)I
    .locals 21
    .param p1, "packet"    # [B
    .param p2, "next"    # I
    .param p3, "curUtcTime"    # J
    .param p5, "curTimeMillis"    # J

    .prologue
    move/from16 v19, p2

    .local v19, "tmpNext":I
    move-object/from16 v0, p1

    array-length v5, v0

    sub-int v5, v5, v19

    add-int/lit8 v5, v5, -0x4

    if-gez v5, :cond_0

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v20, -0x1

    :goto_0
    return v20

    :cond_0
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "tmpNext":I
    .local v20, "tmpNext":I
    aget-byte v5, p1, v19

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    aget-byte v6, p1, v20

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    add-int/lit8 v20, v19, 0x1

    .end local v19    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    aget-byte v6, p1, v19

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    aget-byte v6, p1, v20

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    int-to-long v10, v5

    .local v10, "timeStamp":J
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v5

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(JJJ)J

    move-result-wide v16

    .local v16, "movingTimeStamp":J
    move-object/from16 v0, p1

    array-length v5, v0

    sub-int v5, v5, v19

    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_1

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v20, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    aget-byte v14, p1, v19

    .local v14, "movingCount":I
    if-gtz v14, :cond_2

    move/from16 v19, v20

    .end local v20    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    goto :goto_0

    .end local v19    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    :cond_2
    new-array v13, v14, [I

    .local v13, "movingActivity":[I
    new-array v12, v14, [I

    .local v12, "movingAccuracy":[I
    new-array v15, v14, [I

    .local v15, "movingTimeDuration":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v14, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->checkMovingPacket([BI)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v5, v14, -0x1

    if-le v4, v5, :cond_4

    :cond_3
    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v5, -0x1

    move/from16 v19, v20

    .end local v20    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    move/from16 v20, v5

    goto :goto_0

    .end local v19    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    :cond_4
    add-int/lit8 v19, v20, 0x1

    .end local v20    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    aget-byte v5, p1, v20

    aput v5, v13, v4

    add-int/lit8 v20, v19, 0x1

    .end local v19    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    aget-byte v5, p1, v19

    aput v5, v12, v4

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    aget-byte v5, p1, v20

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v20, v19, 0x1

    .end local v19    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    aget-byte v6, p1, v19

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    aget-byte v6, p1, v20

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    aput v5, v15, v4

    add-int/lit8 v4, v4, 0x1

    move/from16 v20, v19

    .end local v19    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    goto :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v18

    .local v18, "names":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v6, 0x8

    aget-object v6, v18, v6

    invoke-virtual {v5, v6, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v6, 0x9

    aget-object v6, v18, v6

    move-wide/from16 v0, v16

    invoke-virtual {v5, v6, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v6, 0xa

    aget-object v6, v18, v6

    invoke-virtual {v5, v6, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v6, 0xb

    aget-object v6, v18, v6

    invoke-virtual {v5, v6, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v6, 0xc

    aget-object v6, v18, v6

    invoke-virtual {v5, v6, v15}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    move/from16 v19, v20

    .end local v20    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    goto/16 :goto_0
.end method

.method private parseForStayingArea([BIJJ)I
    .locals 23
    .param p1, "packet"    # [B
    .param p2, "next"    # I
    .param p3, "curUtcTime"    # J
    .param p5, "curTimeMillis"    # J

    .prologue
    move/from16 v21, p2

    .local v21, "tmpNext":I
    move-object/from16 v0, p1

    array-length v5, v0

    sub-int v5, v5, v21

    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_0

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v22, -0x1

    :goto_0
    return v22

    :cond_0
    add-int/lit8 v22, v21, 0x1

    .end local v21    # "tmpNext":I
    .local v22, "tmpNext":I
    aget-byte v14, p1, v21

    .local v14, "stayingAreaCount":I
    if-gtz v14, :cond_1

    move/from16 v21, v22

    .end local v22    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    goto :goto_0

    .end local v21    # "tmpNext":I
    .restart local v22    # "tmpNext":I
    :cond_1
    new-array v0, v14, [J

    move-object/from16 v20, v0

    .local v20, "stayingAreaTimeStamp":[J
    new-array v15, v14, [D

    .local v15, "stayingAreaLatitude":[D
    new-array v0, v14, [D

    move-object/from16 v16, v0

    .local v16, "stayingAreaLongitude":[D
    new-array v13, v14, [D

    .local v13, "stayingAreaAltitude":[D
    new-array v0, v14, [I

    move-object/from16 v19, v0

    .local v19, "stayingAreaTimeDuration":[I
    new-array v0, v14, [I

    move-object/from16 v17, v0

    .local v17, "stayingAreaRadius":[I
    new-array v0, v14, [I

    move-object/from16 v18, v0

    .local v18, "stayingAreaStatus":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v14, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->checkStayingAreaPacket([BI)Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v5, v14, -0x1

    if-lt v4, v5, :cond_2

    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v5, -0x1

    move/from16 v21, v22

    .end local v22    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    move/from16 v22, v5

    goto :goto_0

    .end local v21    # "tmpNext":I
    .restart local v22    # "tmpNext":I
    :cond_2
    add-int/lit8 v21, v22, 0x1

    .end local v22    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    aget-byte v5, p1, v22

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v22, v21, 0x1

    .end local v21    # "tmpNext":I
    .restart local v22    # "tmpNext":I
    aget-byte v6, p1, v21

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    aget-byte v6, p1, v22

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/lit8 v22, v21, 0x1

    .end local v21    # "tmpNext":I
    .restart local v22    # "tmpNext":I
    aget-byte v6, p1, v21

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    int-to-long v10, v5

    .local v10, "timeStamp":J
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v5

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(JJJ)J

    move-result-wide v6

    aput-wide v6, v20, v4

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    aget-byte v5, p1, v22

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v22, v21, 0x1

    .end local v21    # "tmpNext":I
    .restart local v22    # "tmpNext":I
    aget-byte v6, p1, v21

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    aget-byte v6, p1, v22

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/lit8 v22, v21, 0x1

    .end local v21    # "tmpNext":I
    .restart local v22    # "tmpNext":I
    aget-byte v6, p1, v21

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    int-to-double v6, v5

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v6, v8

    aput-wide v6, v15, v4

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    aget-byte v5, p1, v22

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v22, v21, 0x1

    .end local v21    # "tmpNext":I
    .restart local v22    # "tmpNext":I
    aget-byte v6, p1, v21

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    aget-byte v6, p1, v22

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/lit8 v22, v21, 0x1

    .end local v21    # "tmpNext":I
    .restart local v22    # "tmpNext":I
    aget-byte v6, p1, v21

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    int-to-double v6, v5

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v6, v8

    aput-wide v6, v16, v4

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    aget-byte v5, p1, v22

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v22, v21, 0x1

    .end local v21    # "tmpNext":I
    .restart local v22    # "tmpNext":I
    aget-byte v6, p1, v21

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    aget-byte v6, p1, v22

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/lit8 v22, v21, 0x1

    .end local v21    # "tmpNext":I
    .restart local v22    # "tmpNext":I
    aget-byte v6, p1, v21

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    int-to-double v6, v5

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    aput-wide v6, v13, v4

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    aget-byte v5, p1, v22

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v22, v21, 0x1

    .end local v21    # "tmpNext":I
    .restart local v22    # "tmpNext":I
    aget-byte v6, p1, v21

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    aget-byte v6, p1, v22

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/lit8 v22, v21, 0x1

    .end local v21    # "tmpNext":I
    .restart local v22    # "tmpNext":I
    aget-byte v6, p1, v21

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    aput v5, v19, v4

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    aget-byte v5, p1, v22

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v22, v21, 0x1

    .end local v21    # "tmpNext":I
    .restart local v22    # "tmpNext":I
    aget-byte v6, p1, v21

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    aput v5, v17, v4

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    aget-byte v5, p1, v22

    aput v5, v18, v4

    add-int/lit8 v4, v4, 0x1

    move/from16 v22, v21

    .end local v21    # "tmpNext":I
    .restart local v22    # "tmpNext":I
    goto/16 :goto_1

    .end local v10    # "timeStamp":J
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v12

    .local v12, "names":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v12, v6

    invoke-virtual {v5, v6, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v12, v6

    move-object/from16 v0, v20

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v12, v6

    invoke-virtual {v5, v6, v15}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v6, v12, v6

    move-object/from16 v0, v16

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v6, v12, v6

    invoke-virtual {v5, v6, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x5

    aget-object v6, v12, v6

    move-object/from16 v0, v19

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x6

    aget-object v6, v12, v6

    move-object/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x7

    aget-object v6, v12, v6

    move-object/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    move/from16 v21, v22

    .end local v22    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    goto/16 :goto_0
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    return-void
.end method

.method public final disable()V
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mPassiveCurrentPosition:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->disable()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    return-void
.end method

.method protected display()V
    .locals 0

    .prologue
    return-void
.end method

.method public final enable()V
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mPassiveCurrentPosition:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->enable()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "StayingAreaCount"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "StayingAreaTimeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "StayingAreaLatitude"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "StayingAreaLongitude"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "StayingAreaAltitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "StayingAreaTimeDuration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "StayingAreaRadius"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "StayingAreaStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "MovingCount"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "MovingTimeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "MovingActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "MovingAccuracy"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "MovingTimeDuration"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v3, 0x9

    new-array v1, v3, [B

    .local v1, "packet":[B
    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mStopPeriod:I

    invoke-static {v3, v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .local v0, "data":[B
    aget-byte v3, v0, v5

    aput-byte v3, v1, v5

    aget-byte v3, v0, v6

    aput-byte v3, v1, v6

    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mWaitPeriod:I

    invoke-static {v3, v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    aget-byte v3, v0, v5

    aput-byte v3, v1, v7

    const/4 v3, 0x3

    aget-byte v4, v0, v6

    aput-byte v4, v1, v3

    const v3, 0xffff

    invoke-static {v3, v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    const/4 v3, 0x4

    aget-byte v4, v0, v5

    aput-byte v4, v1, v3

    const/4 v3, 0x5

    aget-byte v4, v0, v6

    aput-byte v4, v1, v3

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v2

    .local v2, "utcTime":[I
    const/4 v3, 0x6

    aget v4, v2, v5

    invoke-static {v4, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    const/4 v3, 0x7

    aget v4, v2, v6

    invoke-static {v4, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    const/16 v3, 0x8

    aget v4, v2, v7

    invoke-static {v4, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    return-object v1
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    const/16 v0, 0x1d

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    return-object p0
.end method

.method protected final getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .locals 0

    .prologue
    return-object p0
.end method

.method public parse([BI)I
    .locals 14
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    move/from16 v3, p2

    .local v3, "tmpNext":I
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v13, "GMT"

    invoke-direct {v1, v2, v13}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .local v0, "calender":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .local v8, "hour":I
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .local v10, "minute":I
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .local v11, "second":I
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .local v9, "milliSec":I
    mul-int/lit16 v1, v8, 0xe10

    mul-int/lit8 v2, v10, 0x3c

    add-int/2addr v1, v2

    add-int/2addr v1, v11

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v1, v9

    int-to-long v4, v1

    .local v4, "curUtcTime":J
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .local v6, "curTimeMillis":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->parseForStayingArea([BIJJ)I

    move-result v3

    if-gtz v3, :cond_0

    move v12, v3

    .end local v3    # "tmpNext":I
    .local v12, "tmpNext":I
    :goto_0
    return v12

    .end local v12    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    :cond_0
    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->parseForMoving([BIJJ)I

    move-result v3

    if-gtz v3, :cond_1

    move v12, v3

    .end local v3    # "tmpNext":I
    .restart local v12    # "tmpNext":I
    goto :goto_0

    .end local v12    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse end:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    move v12, v3

    .end local v3    # "tmpNext":I
    .restart local v12    # "tmpNext":I
    goto :goto_0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 10
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/16 v9, 0x17

    const/16 v8, 0x1d

    const/4 v7, 0x2

    const/4 v0, 0x1

    .local v0, "result":Z
    const/16 v5, 0x1c

    if-ne p1, v5, :cond_0

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, "stopPeriod":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StopPeriod = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iput v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mStopPeriod:I

    const/4 v5, 0x1

    invoke-static {v3, v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v6

    invoke-virtual {p0, v9, v8, v5, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    .end local v3    # "stopPeriod":I
    :goto_0
    return v0

    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_0
    if-ne p1, v8, :cond_1

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .local v4, "waitPeriod":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WaitPeriod = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iput v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mWaitPeriod:I

    invoke-static {v4, v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v5

    invoke-virtual {p0, v9, v8, v7, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    goto :goto_0

    .end local v4    # "waitPeriod":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_1
    const/16 v5, 0x1e

    if-ne p1, v5, :cond_2

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "stayingRadius":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StayingRadius = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    const/4 v5, 0x3

    invoke-static {v2, v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v6

    invoke-virtual {p0, v9, v8, v5, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    goto :goto_0

    .end local v2    # "stayingRadius":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_2
    const/16 v5, 0x1f

    if-ne p1, v5, :cond_3

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "stayingAreaRadius":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StayingAreaRadius = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    const/4 v5, 0x4

    invoke-static {v1, v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v6

    invoke-virtual {p0, v9, v8, v5, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    goto/16 :goto_0

    .end local v1    # "stayingAreaRadius":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public updatePassiveCurrentPosition(I[IDDDDFFI)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "utcTime"    # [I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "distance"    # D
    .param p11, "speed"    # F
    .param p12, "accuracy"    # F
    .param p13, "satelliteCount"    # I

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->isDisable()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "send the passive current position to SensorHub"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-static/range {p1 .. p13}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->sendPositionToSensorHub(I[IDDDDFFI)I

    move-result v0

    .local v0, "result":I
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final updatePosition(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;)V
    .locals 18
    .param p1, "position"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->isDisable()Z

    move-result v14

    if-eqz v14, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    sget-object v14, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CURRENT_POSITION_NULL_EXCEPTION:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v14

    invoke-static {v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v8, p1

    .local v8, "pos":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getLatitude()D

    move-result-wide v14

    const-wide v16, 0x412e848000000000L    # 1000000.0

    mul-double v14, v14, v16

    double-to-int v6, v14

    .local v6, "latitude":I
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getLongitude()D

    move-result-wide v14

    const-wide v16, 0x412e848000000000L    # 1000000.0

    mul-double v14, v14, v16

    double-to-int v7, v14

    .local v7, "longitude":I
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getAltitude()D

    move-result-wide v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    double-to-int v3, v14

    .local v3, "altitude":I
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getAccuracy()F

    move-result v14

    float-to-int v2, v14

    .local v2, "accuracy":I
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getUtcTime()[I

    move-result-object v13

    .local v13, "utcTime":[I
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getSatelliteCount()I

    move-result v9

    .local v9, "satelliteCount":I
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getSpeed()F

    move-result v14

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float/2addr v14, v15

    float-to-int v11, v14

    .local v11, "speed":I
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getDistance()D

    move-result-wide v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    double-to-int v5, v14

    .local v5, "distance":I
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getType()I

    move-result v12

    .local v12, "type":I
    const/16 v14, 0x16

    new-array v4, v14, [B

    .local v4, "dataPacket":[B
    const/4 v10, 0x0

    .local v10, "size":I
    const/4 v14, 0x4

    invoke-static {v6, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v10, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v14, 0x4

    invoke-static {v7, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    const/4 v15, 0x0

    add-int/lit8 v10, v10, 0x4

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v10, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v14, 0x4

    invoke-static {v3, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    const/4 v15, 0x0

    add-int/lit8 v10, v10, 0x4

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v10, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v14, 0x1

    invoke-static {v2, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    const/4 v15, 0x0

    add-int/lit8 v10, v10, 0x4

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v10, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v14, 0x0

    aget v14, v13, v14

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    const/4 v15, 0x0

    add-int/lit8 v10, v10, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v10, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v14, 0x1

    aget v14, v13, v14

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    const/4 v15, 0x0

    add-int/lit8 v10, v10, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v10, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v14, 0x2

    aget v14, v13, v14

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    const/4 v15, 0x0

    add-int/lit8 v10, v10, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v10, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v14, 0x1

    invoke-static {v9, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    const/4 v15, 0x0

    add-int/lit8 v10, v10, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v10, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v14, 0x2

    invoke-static {v11, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    const/4 v15, 0x0

    add-int/lit8 v10, v10, 0x1

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v10, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v14, 0x2

    invoke-static {v5, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    const/4 v15, 0x0

    add-int/lit8 v10, v10, 0x2

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v10, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v14, 0x1

    invoke-static {v12, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    const/4 v15, 0x0

    add-int/lit8 v10, v10, 0x2

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v14, v15, v4, v10, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 v14, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->sendCommonValueToSensorHub(B[B)Z

    goto/16 :goto_0
.end method
