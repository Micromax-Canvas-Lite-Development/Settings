.class public Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;
.super Landroid/view/View;
.source "ChartBandwidthNetworkSeriesView.java"


# static fields
.field private static final MB_IN_BYTES:J = 0x100000L

.field private static final TAG:Ljava/lang/String; = "ChartBandwidthNetworkSeriesView"

.field private static final TOTAL_LEN:I = 0x5a


# instance fields
.field private mCurrentBytes:[J

.field private mCurrentLen:I

.field private mEnd:J

.field private mEndTime:J

.field private mHoriz:Lcom/android/settings/widget/ChartAxis;

.field private mLeftBound:J

.field private mMax:J

.field private mPaintStroke:Landroid/graphics/Paint;

.field private mPathStroke:Landroid/graphics/Path;

.field private mPathValid:Z

.field private mStart:J

.field private mStats:Landroid/net/NetworkStats;

.field private mTotalUsed:J

.field private mVert:Lcom/android/settings/widget/ChartAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mEndTime:J

    iput-boolean v4, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPathValid:Z

    sget-object v2, Lcom/android/settings/R$styleable;->ChartNetworkSeriesView:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/high16 v2, -0x10000

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->setSeriesColor(I)V

    invoke-virtual {p0, v4}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->setWillNotDraw(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    const/16 v2, 0x5a

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentBytes:[J

    iput v4, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentLen:I

    return-void
.end method


# virtual methods
.method public generatePath()V
    .locals 15

    invoke-virtual {p0}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->getMaxBytes()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mMax:J

    iget-object v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    iget-object v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mStats:Landroid/net/NetworkStats;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mStats:Landroid/net/NetworkStats;

    invoke-virtual {v8}, Landroid/net/NetworkStats;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPathValid:Z

    const-wide/16 v6, 0x0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mStats:Landroid/net/NetworkStats;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v10, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long v6, v8, v10

    iget-wide v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mTotalUsed:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    const-wide/16 v0, 0x0

    :goto_1
    iput-wide v6, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mTotalUsed:J

    const-string v8, "ChartBandwidthNetworkSeriesView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentData = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentLen:I

    const/16 v9, 0x5a

    if-ge v8, v9, :cond_3

    iget-object v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentBytes:[J

    iget v9, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentLen:I

    aput-wide v0, v8, v9

    iget v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentLen:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentLen:I

    :goto_2
    iget-object v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    iget v10, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentLen:I

    rsub-int/lit8 v10, v10, 0x64

    add-int/lit8 v10, v10, 0x1

    int-to-long v10, v10

    invoke-interface {v9, v10, v11}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v9

    iget-object v10, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mVert:Lcom/android/settings/widget/ChartAxis;

    iget-object v11, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentBytes:[J

    const/4 v12, 0x0

    aget-wide v11, v11, v12

    div-long/2addr v11, v4

    const-wide/16 v13, 0x64

    mul-long/2addr v11, v13

    invoke-interface {v10, v11, v12}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v3, 0x0

    :goto_3
    iget v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentLen:I

    if-ge v3, v8, :cond_5

    iget-object v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    iget v10, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentLen:I

    rsub-int/lit8 v10, v10, 0x64

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v10, v3

    int-to-long v10, v10

    invoke-interface {v9, v10, v11}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v9

    iget-object v10, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mVert:Lcom/android/settings/widget/ChartAxis;

    iget-object v11, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentBytes:[J

    aget-wide v11, v11, v3

    invoke-interface {v10, v11, v12}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    iget-wide v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mMax:J

    iget-object v10, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentBytes:[J

    aget-wide v10, v10, v3

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    iget-object v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentBytes:[J

    aget-wide v8, v8, v3

    :goto_4
    iput-wide v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mMax:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    iget-wide v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mTotalUsed:J

    sub-long v0, v6, v8

    goto/16 :goto_1

    :cond_3
    iget-object v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentBytes:[J

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentBytes:[J

    const/4 v11, 0x0

    const/16 v12, 0x59

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mCurrentBytes:[J

    const/16 v9, 0x59

    aput-wide v0, v8, v9

    goto :goto_2

    :cond_4
    iget-wide v8, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mMax:J

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->invalidate()V

    goto/16 :goto_0
.end method

.method public getMaxBytes()J
    .locals 4

    const-wide/32 v0, 0x100000

    iget-wide v2, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mMax:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mMax:J

    :cond_0
    return-wide v0
.end method

.method public getTotalUsedData()J
    .locals 2

    iget-wide v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mTotalUsed:J

    return-wide v0
.end method

.method init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V
    .locals 1

    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    const-string v0, "missing vert"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mVert:Lcom/android/settings/widget/ChartAxis;

    return-void
.end method

.method public invalidatePath()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPathValid:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mMax:J

    invoke-virtual {p0}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-boolean v3, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPathValid:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->generatePath()V

    :cond_0
    iget-object v3, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    const-wide/16 v4, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v0

    iget-object v3, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    const-wide/16 v4, 0x64

    invoke-interface {v3, v4, v5}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v0, v3, v1, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v3, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public setNetworkStates(Landroid/net/NetworkStats;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mStats:Landroid/net/NetworkStats;

    invoke-virtual {p0}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->generatePath()V

    return-void
.end method

.method public setSeriesColor(I)V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method
