.class public abstract Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;
.super Landroid/widget/BaseAdapter;
.source "ReflectionDecorAdapter.java"


# static fields
.field private static final DBG:Z = true

.field private static final DEFAULT_REFLECTION:F = 0.1f

.field private static final DEFAULT_REFLECTION_GAP:I = 0x4

.field private static final END_GRADIENT_COLOR:I = 0xffffff

.field private static final START_GRADIENT_COLOR:I = -0x7f000001

.field private static final TAG:Ljava/lang/String; = "ReflectionDecorAdapter"


# instance fields
.field private final mBitmapCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentChosen:I

.field private mDispHeight:I

.field private mDispWidth:I

.field private mEndGradientColor:I

.field private mGradientPaint:Landroid/graphics/Paint;

.field private mIndicatorBitmap:Landroid/graphics/Bitmap;

.field private mIndicatorResId:I

.field private final mLock:Ljava/lang/Object;

.field private mNormalPaint:Landroid/graphics/Paint;

.field private mReflection:F

.field private mStartGradientColor:I

.field private mTotalDispHeight:I

.field private mTransMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const v0, 0x3dcccccd

    iput v0, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mReflection:F

    const v0, -0x7f000001

    iput v0, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mStartGradientColor:I

    const v0, 0xffffff

    iput v0, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mEndGradientColor:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mTransMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mNormalPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mIndicatorResId:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    iput-object p1, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private decorAndSetContent(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    move/from16 v0, p3

    int-to-long v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->getCachedBitmap(Landroid/util/LongSparseArray;J)Landroid/graphics/Bitmap;

    move-result-object v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string v1, "ReflectionDecorAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decorAndSetContent return cached bitmap: position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",cacheBitmap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const-string v1, "ReflectionDecorAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decorAndSetContent: position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mReflection = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mReflection:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mDispWidth= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mDispWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mDispHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mDispHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v6, p2

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mDispWidth:I

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mDispHeight:I

    if-nez v1, :cond_6

    :cond_2
    move-object/from16 v0, p0

    iput v4, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mDispWidth:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mDispHeight:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mDispHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mReflection:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mTotalDispHeight:I

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mReflection:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mReflection:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_8

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mTransMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mTransMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f800000

    const/high16 v3, -0x40800000

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mDispHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mReflection:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v8, v1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mDispWidth:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mDispHeight:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mReflection:F

    mul-float/2addr v1, v2

    float-to-int v10, v1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mTransMatrix:Landroid/graphics/Matrix;

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mDispWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mTotalDispHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v7, v6, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mCurrentChosen:I

    move/from16 v0, p3

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mIndicatorBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mIndicatorBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_5
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mDispHeight:I

    int-to-float v9, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mDispWidth:I

    int-to-float v10, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mDispHeight:I

    add-int/lit8 v1, v1, 0x4

    int-to-float v11, v1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mDispHeight:I

    add-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v7, v15, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-direct/range {p0 .. p0}, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->initPaintWithShader()V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mDispHeight:I

    int-to-float v9, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mDispWidth:I

    int-to-float v10, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mTotalDispHeight:I

    add-int/lit8 v1, v1, 0x4

    int-to-float v11, v1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const-string v1, "ReflectionDecorAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decorAndSetContent end: width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v1, "ReflectionDecorAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "decorAndSetContent cache reflection bitmap: position = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ",bitmapWithReflection = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    move/from16 v0, p3

    int-to-long v8, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v13}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    :goto_2
    if-eqz v16, :cond_0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mDispWidth:I

    if-ne v1, v4, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mDispHeight:I

    if-eq v1, v5, :cond_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mTransMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mTransMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mDispWidth:I

    int-to-float v2, v2

    int-to-float v3, v4

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mDispHeight:I

    int-to-float v3, v3

    int-to-float v8, v5

    div-float/2addr v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mTransMatrix:Landroid/graphics/Matrix;

    const/4 v7, 0x1

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    const/16 v16, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_8
    invoke-virtual/range {p1 .. p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    const-string v1, "ReflectionDecorAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "decorAndSetContent cache scaled bitmap: position = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ",scaledBitmap = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    move/from16 v0, p3

    int-to-long v8, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v8, v9, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    monitor-exit v2

    goto/16 :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private getCachedBitmap(Landroid/util/LongSparseArray;J)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;J)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    iget-object v3, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    monitor-exit v3

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->delete(J)V

    :cond_1
    monitor-exit v3

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private initPaintWithShader()V
    .locals 8

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mGradientPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mGradientPaint:Landroid/graphics/Paint;

    :cond_0
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mDispHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mTotalDispHeight:I

    add-int/lit8 v3, v3, 0x4

    int-to-float v4, v3

    iget v5, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mStartGradientColor:I

    iget v6, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mEndGradientColor:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iget-object v1, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mGradientPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method


# virtual methods
.method public clearBitmapCache()V
    .locals 7

    iget-object v4, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    const-string v3, "ReflectionDecorAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearBitmapCache: size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const-string v5, "ReflectionDecorAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearBitmapCache: i = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",bmp = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",recycled = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->clear()V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mIndicatorBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mIndicatorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mIndicatorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mIndicatorBitmap:Landroid/graphics/Bitmap;

    :cond_3
    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getChosenItem()I
    .locals 1

    iget v0, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mCurrentChosen:I

    return v0
.end method

.method public abstract getContainerId()I
.end method

.method public abstract getContentAt(I)Landroid/graphics/Bitmap;
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->getViewInner(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->getContainerId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->getContentAt(I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {p0, v1, v3, p1}, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->decorAndSetContent(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V

    return-object v2
.end method

.method public abstract getViewInner(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public setChosenItem(I)V
    .locals 3

    iput p1, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mCurrentChosen:I

    iget-object v0, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mBitmapCache:Landroid/util/LongSparseArray;

    iget v1, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mCurrentChosen:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    return-void
.end method

.method public setGrandientColor(II)V
    .locals 0

    iput p1, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mStartGradientColor:I

    iput p2, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mEndGradientColor:I

    return-void
.end method

.method public setImageDispSize(II)V
    .locals 3

    iput p1, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mDispWidth:I

    iput p2, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mDispHeight:I

    iget v0, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mDispHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000

    iget v2, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mReflection:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mTotalDispHeight:I

    invoke-direct {p0}, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->initPaintWithShader()V

    return-void
.end method

.method public setImageReflection(F)V
    .locals 3

    iput p1, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mReflection:F

    iget v0, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mDispHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000

    iget v2, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mReflection:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mTotalDispHeight:I

    return-void
.end method

.method public setIndicatorBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mIndicatorBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setIndicatorBitmapResource(I)V
    .locals 1

    iput p1, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mIndicatorResId:I

    iget-object v0, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/lockscreensettings/ReflectionDecorAdapter;->mIndicatorBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
