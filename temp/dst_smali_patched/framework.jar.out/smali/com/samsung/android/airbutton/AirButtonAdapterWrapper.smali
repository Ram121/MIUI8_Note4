.class public Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;
.super Ljava/lang/Object;
.source "AirButtonAdapterWrapper.java"


# static fields
.field private static final mIsAmericano:Z

.field private static final mIsMocha:Z


# instance fields
.field private mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

.field private mAttrs:Lcom/samsung/android/airbutton/Attributes;

.field private mBgColor:I

.field private mContext:Landroid/content/Context;

.field private mDefaultImagePaint:Landroid/graphics/Paint;

.field private mImageViewCircleBgColor:I

.field private mImageViewDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private final mImageViewStrokePaint:Landroid/graphics/Paint;

.field private mImageViewStrokeWidth:I

.field private mImageViewTileFontColor:I

.field private mImageViewTileFontSize:I

.field private mImageViewWidth:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsParentThemeDeviceDefault:Z

.field private mSavedImagePaint:Landroid/graphics/Paint;

.field private mTextImagePaint:Landroid/graphics/Paint;

.field private mTextImageTextPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "americano"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mIsAmericano:Z

    const-string v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mocha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mIsMocha:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;Lcom/samsung/android/airbutton/Attributes;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .param p3, "attrs"    # Lcom/samsung/android/airbutton/Attributes;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mIsParentThemeDeviceDefault:Z

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewStrokePaint:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mDefaultImagePaint:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mTextImagePaint:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mTextImageTextPaint:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mSavedImagePaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iput-object p3, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    if-eqz p1, :cond_1

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x11600bd

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mIsParentThemeDeviceDefault:Z

    :cond_0
    const/16 v1, 0x28

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewWidth:I

    const v1, -0x532a24

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewCircleBgColor:I

    iput v3, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewStrokeWidth:I

    iput v4, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewTileFontColor:I

    const/16 v1, 0x19

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewTileFontSize:I

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewStrokePaint:Landroid/graphics/Paint;

    const v2, -0x6f050506

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewStrokePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput v4, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mBgColor:I

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_1
    return-void
.end method

.method private drawDefaultImage(Landroid/graphics/drawable/Drawable;IIILandroid/graphics/Paint;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "bgColor"    # I
    .param p3, "width"    # I
    .param p4, "strokeWidth"    # I
    .param p5, "strokePaint"    # Landroid/graphics/Paint;

    .prologue
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v3, "canvas":Landroid/graphics/Canvas;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v4, v8, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .local v4, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .local v2, "bounds":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/RectF;

    iget v8, v2, Landroid/graphics/Rect;->left:I

    add-int v8, v8, p4

    int-to-float v8, v8

    iget v9, v2, Landroid/graphics/Rect;->top:I

    add-int v9, v9, p4

    int-to-float v9, v9

    iget v10, v2, Landroid/graphics/Rect;->right:I

    sub-int v10, v10, p4

    int-to-float v10, v10

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v11, p4

    int-to-float v11, v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .local v7, "strokeRect":Landroid/graphics/RectF;
    iget-object v8, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mDefaultImagePaint:Landroid/graphics/Paint;

    if-nez v8, :cond_0

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mDefaultImagePaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10800dd

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .local v5, "defaultBit":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/BitmapShader;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v6, v5, v8, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .local v6, "shader":Landroid/graphics/BitmapShader;
    iget-object v8, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mDefaultImagePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v8, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mDefaultImagePaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v8, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mDefaultImagePaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .end local v5    # "defaultBit":Landroid/graphics/Bitmap;
    .end local v6    # "shader":Landroid/graphics/BitmapShader;
    :cond_0
    invoke-virtual {v3, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v8, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mDefaultImagePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move-object/from16 v0, p5

    invoke-virtual {v3, v7, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-object v4
.end method

.method private drawSavedImage(Landroid/graphics/drawable/Drawable;IIILandroid/graphics/Paint;)Landroid/graphics/drawable/Drawable;
    .locals 18
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "bgColor"    # I
    .param p3, "width"    # I
    .param p4, "strokeWidth"    # I
    .param p5, "strokePaint"    # Landroid/graphics/Paint;

    .prologue
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p3

    invoke-static {v0, v1, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v5, "canvas":Landroid/graphics/Canvas;
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p3

    invoke-virtual {v0, v14, v15, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-direct {v6, v14, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .local v6, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .local v4, "bounds":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/RectF;

    iget v14, v4, Landroid/graphics/Rect;->left:I

    add-int v14, v14, p4

    int-to-float v14, v14

    iget v15, v4, Landroid/graphics/Rect;->top:I

    add-int v15, v15, p4

    int-to-float v15, v15

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    sub-int v16, v16, p4

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    sub-int v17, v17, p4

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v8, v14, v15, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .local v8, "imageRect":Landroid/graphics/RectF;
    new-instance v12, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v0, p3

    move/from16 v1, p3

    invoke-direct {v12, v14, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v12, "strokeBounds":Landroid/graphics/Rect;
    new-instance v13, Landroid/graphics/RectF;

    iget v14, v12, Landroid/graphics/Rect;->left:I

    add-int v14, v14, p4

    int-to-float v14, v14

    iget v15, v12, Landroid/graphics/Rect;->top:I

    add-int v15, v15, p4

    int-to-float v15, v15

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    sub-int v16, v16, p4

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    sub-int v17, v17, p4

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-direct/range {v13 .. v17}, Landroid/graphics/RectF;-><init>(FFFF)V

    .local v13, "strokeRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mSavedImagePaint:Landroid/graphics/Paint;

    if-nez v14, :cond_0

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mSavedImagePaint:Landroid/graphics/Paint;

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v7

    .local v7, "defaultBit":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-float v15, v15

    div-float v9, v14, v15

    .local v9, "ratio":F
    move/from16 v0, p3

    int-to-float v14, v0

    mul-float/2addr v14, v9

    float-to-int v14, v14

    const/4 v15, 0x1

    move/from16 v0, p3

    invoke-static {v7, v0, v14, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .local v10, "resized":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/BitmapShader;

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v11, v10, v14, v15}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .local v11, "shader":Landroid/graphics/BitmapShader;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mSavedImagePaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mSavedImagePaint:Landroid/graphics/Paint;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .end local v7    # "defaultBit":Landroid/graphics/Bitmap;
    .end local v9    # "ratio":F
    .end local v10    # "resized":Landroid/graphics/Bitmap;
    .end local v11    # "shader":Landroid/graphics/BitmapShader;
    :cond_0
    move/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mSavedImagePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v8, v14}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move-object/from16 v0, p5

    invoke-virtual {v5, v13, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-object v6
.end method

.method private drawTextImage(Landroid/graphics/drawable/Drawable;IIILandroid/graphics/Paint;Ljava/lang/String;III)Landroid/graphics/drawable/Drawable;
    .locals 16
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "bgColor"    # I
    .param p3, "width"    # I
    .param p4, "strokeWidth"    # I
    .param p5, "strokePaint"    # Landroid/graphics/Paint;
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "circleBgColor"    # I
    .param p8, "tileFontColor"    # I
    .param p9, "tileFontSize"    # I

    .prologue
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p3

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .local v10, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v3, "canvas":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p3

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v12, v5, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .local v12, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .local v11, "bounds":Landroid/graphics/Rect;
    new-instance v13, Landroid/graphics/RectF;

    iget v5, v11, Landroid/graphics/Rect;->left:I

    add-int v5, v5, p4

    int-to-float v5, v5

    iget v6, v11, Landroid/graphics/Rect;->top:I

    add-int v6, v6, p4

    int-to-float v6, v6

    iget v7, v11, Landroid/graphics/Rect;->right:I

    sub-int v7, v7, p4

    int-to-float v7, v7

    iget v8, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v8, p4

    int-to-float v8, v8

    invoke-direct {v13, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .local v13, "strokeRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mTextImagePaint:Landroid/graphics/Paint;

    if-nez v5, :cond_0

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mTextImagePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mTextImagePaint:Landroid/graphics/Paint;

    move/from16 v0, p7

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mTextImagePaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_0
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mTextImagePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v13, v5}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move-object/from16 v0, p5

    invoke-virtual {v3, v13, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/4 v5, 0x1

    new-array v4, v5, [C

    .local v4, "firstChar":[C
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    aput-char v6, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mTextImageTextPaint:Landroid/graphics/Paint;

    if-nez v5, :cond_1

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mTextImageTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mTextImageTextPaint:Landroid/graphics/Paint;

    move/from16 v0, p9

    int-to-float v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mTextImageTextPaint:Landroid/graphics/Paint;

    const-string v6, "sec-roboto-light"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mTextImageTextPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mTextImageTextPaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mTextImageTextPaint:Landroid/graphics/Paint;

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mTextImageTextPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v4, v6, v7, v11}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    div-int/lit8 v14, p3, 0x2

    .local v14, "x":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mTextImageTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mTextImageTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v6

    add-float/2addr v5, v6

    float-to-int v15, v5

    .local v15, "y":I
    const/4 v5, 0x0

    const/4 v6, 0x1

    int-to-float v7, v14

    int-to-float v8, v15

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mTextImageTextPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    return-object v12
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private getDummyView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, -0x2

    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v0, "dummyTextView":Landroid/widget/TextView;
    const-string v2, "You set wrong data for this UI type"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private getListView(I)Landroid/view/View;
    .locals 20
    .param p1, "idx"    # I

    .prologue
    const/4 v14, 0x0

    .local v14, "rootView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    if-nez v1, :cond_0

    move-object v15, v14

    .end local v14    # "rootView":Landroid/view/View;
    .local v15, "rootView":Landroid/view/View;
    :goto_0
    return-object v15

    .end local v15    # "rootView":Landroid/view/View;
    .restart local v14    # "rootView":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->isLegacyModel()Z

    move-result v1

    if-eqz v1, :cond_3

    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090027

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    :goto_1
    const v1, 0x102036f

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .local v11, "imageView":Landroid/widget/ImageView;
    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v13, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v13, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v14, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .end local v11    # "imageView":Landroid/widget/ImageView;
    :goto_2
    move-object v15, v14

    .end local v14    # "rootView":Landroid/view/View;
    .restart local v15    # "rootView":Landroid/view/View;
    goto :goto_0

    .end local v13    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v15    # "rootView":Landroid/view/View;
    .restart local v14    # "rootView":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090028

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090026

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->isLegacyModel()Z

    move-result v1

    if-eqz v1, :cond_7

    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090032

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    :goto_3
    const v1, 0x1020377

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .local v17, "textView":Landroid/widget/TextView;
    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v13, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .restart local v13    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v14, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .end local v13    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v17    # "textView":Landroid/widget/TextView;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090031

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090030

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->isLegacyModel()Z

    move-result v1

    if-eqz v1, :cond_e

    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x109002e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    move-result-object v12

    .local v12, "item":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    const v1, 0x1020373

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .restart local v11    # "imageView":Landroid/widget/ImageView;
    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->isLegacyModel()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v12}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->makeCircularImage(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    :goto_5
    const v1, 0x1020374

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .restart local v17    # "textView":Landroid/widget/TextView;
    const v1, 0x1020375

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .local v18, "textViewMain":Landroid/widget/TextView;
    const v1, 0x1020376

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .local v19, "textViewSub":Landroid/widget/TextView;
    invoke-virtual {v12}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getSubDescription()Ljava/lang/String;

    move-result-object v16

    .local v16, "subDescription":Ljava/lang/String;
    if-eqz v16, :cond_13

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    if-eqz v18, :cond_a

    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v12}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_a
    if-eqz v19, :cond_b

    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v12}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getSubDescription()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_b
    if-eqz v17, :cond_c

    const/16 v1, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_c
    :goto_6
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v13, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .restart local v13    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v14, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .end local v11    # "imageView":Landroid/widget/ImageView;
    .end local v12    # "item":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    .end local v13    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v16    # "subDescription":Ljava/lang/String;
    .end local v17    # "textView":Landroid/widget/TextView;
    .end local v18    # "textViewMain":Landroid/widget/TextView;
    .end local v19    # "textViewSub":Landroid/widget/TextView;
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x109002f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    goto/16 :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x109002d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    goto/16 :goto_4

    .restart local v11    # "imageView":Landroid/widget/ImageView;
    .restart local v12    # "item":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    :cond_f
    invoke-virtual {v12}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewDefaultDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v12}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mBgColor:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewStrokeWidth:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->drawSavedImage(Landroid/graphics/drawable/Drawable;IIILandroid/graphics/Paint;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :cond_10
    invoke-virtual {v12}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewDefaultDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mBgColor:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewStrokeWidth:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewCircleBgColor:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewTileFontColor:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewTileFontSize:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->drawTextImage(Landroid/graphics/drawable/Drawable;IIILandroid/graphics/Paint;Ljava/lang/String;III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :cond_11
    invoke-virtual {v12}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getSubDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewDefaultDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mBgColor:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewStrokeWidth:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getSubDescription()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewCircleBgColor:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewTileFontColor:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewTileFontSize:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->drawTextImage(Landroid/graphics/drawable/Drawable;IIILandroid/graphics/Paint;Ljava/lang/String;III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewCircleBgColor:I

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewDefaultDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mBgColor:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewStrokeWidth:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mImageViewStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->drawDefaultImage(Landroid/graphics/drawable/Drawable;IIILandroid/graphics/Paint;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .restart local v16    # "subDescription":Ljava/lang/String;
    .restart local v17    # "textView":Landroid/widget/TextView;
    .restart local v18    # "textViewMain":Landroid/widget/TextView;
    .restart local v19    # "textViewSub":Landroid/widget/TextView;
    :cond_13
    if-eqz v17, :cond_14

    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v12}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_14
    if-eqz v18, :cond_15

    const/16 v1, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_15
    if-eqz v19, :cond_c

    const/16 v1, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .end local v11    # "imageView":Landroid/widget/ImageView;
    .end local v12    # "item":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    .end local v16    # "subDescription":Ljava/lang/String;
    .end local v17    # "textView":Landroid/widget/TextView;
    .end local v18    # "textViewMain":Landroid/widget/TextView;
    .end local v19    # "textViewSub":Landroid/widget/TextView;
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "You set wrong data type. You should set correct data set for this UI type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getMenuView(I)Landroid/view/View;
    .locals 13
    .param p1, "idx"    # I

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x8

    const/4 v10, 0x0

    const/4 v9, -0x2

    const/4 v4, 0x0

    .local v4, "rootView":Landroid/view/View;
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    if-nez v7, :cond_0

    move-object v5, v4

    .end local v4    # "rootView":Landroid/view/View;
    .local v5, "rootView":Landroid/view/View;
    :goto_0
    return-object v5

    .end local v5    # "rootView":Landroid/view/View;
    .restart local v4    # "rootView":Landroid/view/View;
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x109002b

    invoke-virtual {v7, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    :goto_1
    const v7, 0x1020372

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .local v1, "imageViewOnly":Landroid/widget/ImageView;
    const v7, 0x1020370

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .local v0, "imageView":Landroid/widget/ImageView;
    const v7, 0x1020371

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .local v6, "textView":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v7, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    move-result-object v2

    .local v2, "item":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getSubDescription()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "You set wrong data type. You can\'t use SubDescription for UI_MENU_TYPE"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v1    # "imageViewOnly":Landroid/widget/ImageView;
    .end local v2    # "item":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    .end local v6    # "textView":Landroid/widget/TextView;
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x109002c

    invoke-virtual {v7, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .restart local v0    # "imageView":Landroid/widget/ImageView;
    .restart local v1    # "imageViewOnly":Landroid/widget/ImageView;
    .restart local v2    # "item":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    .restart local v6    # "textView":Landroid/widget/TextView;
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    if-eqz v0, :cond_3

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    move-object v5, v4

    .end local v4    # "rootView":Landroid/view/View;
    .restart local v5    # "rootView":Landroid/view/View;
    goto :goto_0

    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "rootView":Landroid/view/View;
    .restart local v4    # "rootView":Landroid/view/View;
    :cond_6
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_a

    if-eqz v1, :cond_7

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    if-eqz v6, :cond_9

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_9
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .restart local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_a
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "You set wrong data type. You can\'t use only text data for UI_MENU_TYPE"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private isLegacyModel()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mIsAmericano:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mIsMocha:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeCircularImage(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 14
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v12, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10800dd

    invoke-static {v12, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .local v6, "mask":Landroid/graphics/Bitmap;
    if-nez p1, :cond_0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v12, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-direct {v4, v12, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .local v11, "width":I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .local v5, "height":I
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v5, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p1, v12, v13, v11, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .local v8, "roundPaint":Landroid/graphics/Paint;
    new-instance v12, Landroid/graphics/PorterDuffXfermode;

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v12, v13}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v1, v6, v12, v13, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .local v9, "strokePaint":Landroid/graphics/Paint;
    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v12, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10e0106

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .local v10, "strokeWidth":I
    int-to-float v12, v10

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v2, -0x7b7b7d

    .local v2, "color":I
    int-to-float v12, v11

    const/high16 v13, 0x40000000    # 2.0f

    div-float v3, v12, v13

    .local v3, "cx":F
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v12, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10e0107

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .local v7, "radius":I
    int-to-float v12, v7

    sub-float v12, v3, v12

    invoke-virtual {v1, v3, v3, v12, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v12, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-direct {v4, v12, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getListView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getMenuView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
