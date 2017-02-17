.class Lcom/android/server/display/MagnifierSurfaceControl$Border;
.super Ljava/lang/Object;
.source "MagnifierSurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MagnifierSurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Border"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Magnifier.Border"


# instance fields
.field private final DEBUG:Z

.field private fingerMagnifierState:I

.field private mBorderFxSession:Landroid/view/SurfaceSession;

.field final mBorderLock:Ljava/lang/Object;

.field private mBorderSurface:Landroid/view/Surface;

.field private mBorderSurfaceControl:Landroid/view/SurfaceControl;

.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableClose:Landroid/graphics/drawable/Drawable;

.field private mDrawableCloseMarginRight:I

.field private mDrawableCloseMarginTop:I

.field private mDrawableCloseSize:I

.field private mDrawableHandlerSize:I

.field private mDrawableScreenChange:Landroid/graphics/drawable/Drawable;

.field private mDrawableScreenChangeMarginRight:I

.field private mDrawableScreenChangeMarginTop:I

.field private mDrawableScreenChangeSize:I

.field private mPadding:Landroid/graphics/Rect;

.field private mShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layerStack"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iput-boolean v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->DEBUG:Z

    .line 456
    iput-boolean v8, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mShowing:Z

    .line 460
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPadding:Landroid/graphics/Rect;

    .line 461
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    .line 474
    iput v8, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->fingerMagnifierState:I

    .line 477
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    .line 478
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderFxSession:Landroid/view/SurfaceSession;

    .line 479
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 481
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050354

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginTop:I

    .line 482
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050352

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginRight:I

    .line 483
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050353

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseSize:I

    .line 484
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050355

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandlerSize:I

    .line 485
    const-string v0, "com.sec.feature.overlaymagnifier"

    invoke-static {p1, v0}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "finger_magnifier"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->fingerMagnifierState:I

    .line 490
    :cond_0
    if-lt p3, v3, :cond_1

    if-ge p4, v3, :cond_3

    .line 491
    :cond_1
    :try_start_0
    const-string v0, "Magnifier.Border"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 492
    if-ge p3, v3, :cond_2

    const/4 p3, 0x1

    .line 493
    :cond_2
    if-ge p4, v3, :cond_3

    const/4 p4, 0x1

    .line 495
    :cond_3
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderFxSession:Landroid/view/SurfaceSession;

    const-string v2, "OverlayMagnifierBorder"

    iget v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandlerSize:I

    div-int/lit8 v3, v3, 0x2

    add-int v4, p4, v3

    const/4 v5, -0x2

    const v6, -0x7ffffffc

    move v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    .line 498
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 499
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 500
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 501
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    const v1, 0x1e847f

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 509
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10805db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 510
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 511
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8, v8, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 513
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10800c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    .line 514
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 515
    iput-object p1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mContext:Landroid/content/Context;

    .line 516
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 517
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginRight:I

    iget v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginTop:I

    iget v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseSize:I

    iget v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginRight:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginTop:I

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseSize:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 534
    :goto_1
    return-void

    .line 502
    :catch_0
    move-exception v7

    .line 503
    .local v7, "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_1
    invoke-virtual {v7}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_0

    .end local v7    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    .line 519
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseSize:I

    iget v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginRight:I

    add-int/2addr v1, v2

    sub-int v1, p3, v1

    iget v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginTop:I

    iget v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginRight:I

    sub-int v3, p3, v3

    iget v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginTop:I

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseSize:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method public static isRTL(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 627
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v1, 0xc0

    .line 628
    .local v0, "layout_dir":I
    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 612
    const-string v0, "Magnifier.Border"

    const-string/jumbo v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 615
    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 617
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 618
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    .line 619
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 620
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 622
    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 624
    monitor-exit v1

    .line 625
    return-void

    .line 622
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    .line 624
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public getPadding()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 596
    const-string v0, "Magnifier.Border"

    const-string/jumbo v1, "hide"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 599
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mShowing:Z

    .line 600
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 602
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 603
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 605
    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 607
    monitor-exit v1

    .line 608
    return-void

    .line 605
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    .line 607
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
    .line 541
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 542
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 543
    monitor-exit v1

    .line 544
    return-void

    .line 543
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSize(II)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 548
    const-string v0, "Magnifier.Border"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSize :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 551
    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 553
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandlerSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    invoke-virtual {v0, p1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 554
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 555
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginRight:I

    iget v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginTop:I

    iget v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseSize:I

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginRight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginTop:I

    iget v6, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseSize:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 561
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 563
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 564
    iget-boolean v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mShowing:Z

    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {p0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->show()V

    .line 566
    :cond_0
    return-void

    .line 558
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseSize:I

    iget v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginRight:I

    add-int/2addr v2, v3

    sub-int v2, p1, v2

    iget v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginTop:I

    iget v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginRight:I

    sub-int v4, p1, v4

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginTop:I

    iget v6, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseSize:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 561
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    .line 563
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 570
    const-string v1, "Magnifier.Border"

    const-string/jumbo v2, "show"

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    monitor-enter v2

    .line 573
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mShowing:Z

    .line 574
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 575
    .local v0, "c":Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 576
    iget v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->fingerMagnifierState:I

    if-ne v1, v4, :cond_0

    .line 577
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 583
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 584
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 586
    :try_start_1
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 587
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 591
    monitor-exit v2

    .line 592
    return-void

    .line 589
    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v1

    .line 591
    .end local v0    # "c":Landroid/graphics/Canvas;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
