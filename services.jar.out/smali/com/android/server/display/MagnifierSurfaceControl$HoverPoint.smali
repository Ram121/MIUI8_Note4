.class Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;
.super Ljava/lang/Object;
.source "MagnifierSurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MagnifierSurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HoverPoint"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Magnifier.Point"


# instance fields
.field private final DEBUG:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mPointFxSession:Landroid/view/SurfaceSession;

.field final mPointLock:Ljava/lang/Object;

.field private mPointSurface:Landroid/view/Surface;

.field private mPointSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layerStack"    # I
    .param p3, "size"    # I

    .prologue
    const/4 v9, 0x0

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->DEBUG:Z

    .line 367
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointLock:Ljava/lang/Object;

    .line 374
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurface:Landroid/view/Surface;

    .line 375
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointFxSession:Landroid/view/SurfaceSession;

    .line 376
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 378
    :try_start_0
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointFxSession:Landroid/view/SurfaceSession;

    const-string v2, "OverlayMagnifierPoint"

    const/4 v5, -0x2

    const v6, -0x7ffffffc

    move v3, p3

    move v4, p3

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    .line 381
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 382
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 383
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 384
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    const v1, 0x1e8480

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 391
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080ac6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 392
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v9, v9, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 394
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v7

    .line 395
    .local v7, "c":Landroid/graphics/Canvas;
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 396
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurface:Landroid/view/Surface;

    invoke-virtual {v0, v7}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 397
    return-void

    .line 385
    .end local v7    # "c":Landroid/graphics/Canvas;
    :catch_0
    move-exception v8

    .line 386
    .local v8, "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_1
    invoke-virtual {v8}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_0

    .end local v8    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 437
    const-string v0, "Magnifier.Point"

    const-string/jumbo v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointLock:Ljava/lang/Object;

    monitor-enter v1

    .line 440
    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 442
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurface:Landroid/view/Surface;

    .line 444
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 449
    monitor-exit v1

    .line 450
    return-void

    .line 447
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    .line 449
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 422
    const-string v0, "Magnifier.Point"

    const-string/jumbo v1, "hide"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointLock:Ljava/lang/Object;

    monitor-enter v1

    .line 425
    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 427
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 428
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 432
    monitor-exit v1

    .line 433
    return-void

    .line 430
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    .line 432
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public setPosition(Landroid/graphics/Point;)V
    .locals 4
    .param p1, "pt"    # Landroid/graphics/Point;

    .prologue
    .line 400
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointLock:Ljava/lang/Object;

    monitor-enter v1

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 402
    monitor-exit v1

    .line 403
    return-void

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 407
    const-string v0, "Magnifier.Point"

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointLock:Ljava/lang/Object;

    monitor-enter v1

    .line 410
    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 412
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 413
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->mPointSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 417
    monitor-exit v1

    .line 418
    return-void

    .line 415
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    .line 417
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
