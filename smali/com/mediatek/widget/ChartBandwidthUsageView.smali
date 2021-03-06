.class public Lcom/mediatek/widget/ChartBandwidthUsageView;
.super Lcom/mediatek/widget/ChartView;
.source "ChartBandwidthUsageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;,
        Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;,
        Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;
    }
.end annotation


# static fields
.field private static final DELAY_MILLIS:I = 0xfa

.field public static final GB_IN_BYTES:J = 0x40000000L

.field public static final KB_IN_BYTES:J = 0x400L

.field private static final MAX_SIZE:J = 0xa00000L

.field public static final MB_IN_BYTES:J = 0x100000L

.field private static final MSG_UPDATE_AXIS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ChartBandwidthUsageView"


# instance fields
.field private mGrid:Lcom/mediatek/widget/ChartBandwidthGridView;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

.field private mSeries:Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;

.field private mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

.field private mVertListener:Lcom/mediatek/widget/ChartSweepView$OnSweepListener;

.field private mVertMax:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/widget/ChartBandwidthUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/widget/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/mediatek/widget/ChartBandwidthUsageView$2;

    invoke-direct {v0, p0}, Lcom/mediatek/widget/ChartBandwidthUsageView$2;-><init>(Lcom/mediatek/widget/ChartBandwidthUsageView;)V

    iput-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mVertListener:Lcom/mediatek/widget/ChartSweepView$OnSweepListener;

    new-instance v0, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;

    invoke-direct {v0, p0}, Lcom/mediatek/widget/ChartBandwidthUsageView$TimeAxis;-><init>(Lcom/mediatek/widget/ChartBandwidthUsageView;)V

    new-instance v1, Lcom/android/settings/widget/InvertedChartAxis;

    new-instance v2, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;

    invoke-direct {v2}, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthAxis;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/settings/widget/InvertedChartAxis;-><init>(Lcom/android/settings/widget/ChartAxis;)V

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/widget/ChartBandwidthUsageView;->init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V

    new-instance v0, Lcom/mediatek/widget/ChartBandwidthUsageView$1;

    invoke-direct {v0, p0}, Lcom/mediatek/widget/ChartBandwidthUsageView$1;-><init>(Lcom/mediatek/widget/ChartBandwidthUsageView;)V

    iput-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/widget/ChartBandwidthUsageView;Lcom/mediatek/widget/ChartSweepView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/widget/ChartBandwidthUsageView;->sendUpdateAxisDelayed(Lcom/mediatek/widget/ChartSweepView;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/widget/ChartBandwidthUsageView;Lcom/mediatek/widget/ChartSweepView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/widget/ChartBandwidthUsageView;->clearUpdateAxisDelayed(Lcom/mediatek/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/widget/ChartBandwidthUsageView;)Lcom/mediatek/widget/ChartSweepView;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/widget/ChartBandwidthUsageView;)Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mListener:Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

    return-object v0
.end method

.method private clearUpdateAxisDelayed(Lcom/mediatek/widget/ChartSweepView;)V
    .locals 2

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method private sendUpdateAxisDelayed(Lcom/mediatek/widget/ChartSweepView;Z)V
    .locals 4

    const/16 v2, 0x64

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public getLimitBytes()J
    .locals 2

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/mediatek/widget/ChartSweepView;->getLabelValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalUsedData()J
    .locals 2

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSeries:Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;

    invoke-virtual {v0}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->getTotalUsedData()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onFinishInflate()V
    .locals 3

    const-string v0, "ChartBandwidthUsageView"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/mediatek/widget/ChartView;->onFinishInflate()V

    const v0, 0x7f0a005e

    invoke-virtual {p0, v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mediatek/widget/ChartBandwidthGridView;

    iput-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mGrid:Lcom/mediatek/widget/ChartBandwidthGridView;

    const v0, 0x7f0a005f

    invoke-virtual {p0, v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;

    iput-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSeries:Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;

    const v0, 0x7f0a0064

    invoke-virtual {p0, v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mediatek/widget/ChartSweepView;

    iput-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    const-wide/32 v1, 0xa00000

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/widget/ChartSweepView;->setMaxValue(J)V

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    iget-object v1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mVertListener:Lcom/mediatek/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/mediatek/widget/ChartSweepView;->addOnSweepListener(Lcom/mediatek/widget/ChartSweepView$OnSweepListener;)V

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    const-wide/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/widget/ChartSweepView;->setDragInterval(J)V

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mGrid:Lcom/mediatek/widget/ChartBandwidthGridView;

    iget-object v1, p0, Lcom/mediatek/widget/ChartView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    iget-object v2, p0, Lcom/mediatek/widget/ChartView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/widget/ChartBandwidthGridView;->init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSeries:Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;

    iget-object v1, p0, Lcom/mediatek/widget/ChartView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    iget-object v2, p0, Lcom/mediatek/widget/ChartView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    iget-object v1, p0, Lcom/mediatek/widget/ChartView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/mediatek/widget/ChartSweepView;->init(Lcom/android/settings/widget/ChartAxis;)V

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/widget/ChartSweepView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    invoke-virtual {p0, v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->updateVertAxisBounds(Lcom/mediatek/widget/ChartSweepView;)V

    return-void
.end method

.method public setLimitBytes(J)V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/widget/ChartSweepView;->setValue(J)V

    return-void
.end method

.method public setLimitState(Z)V
    .locals 2

    iget-object v1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/mediatek/widget/ChartSweepView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setListener(Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mListener:Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

    return-void
.end method

.method public setNetworkStates(Landroid/net/NetworkStats;)V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSeries:Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->setNetworkStates(Landroid/net/NetworkStats;)V

    return-void
.end method

.method public updateVertAxisBounds(Lcom/mediatek/widget/ChartSweepView;)V
    .locals 17

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mVertMax:J

    const-wide/16 v11, 0x0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/widget/ChartSweepView;->shouldAdjustAxis()I

    move-result v1

    if-lez v1, :cond_5

    const-wide/16 v13, 0xb

    mul-long/2addr v13, v3

    const-wide/16 v15, 0xa

    div-long v11, v13, v15

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSeries:Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;

    invoke-virtual {v13}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->getMaxBytes()J

    move-result-wide v13

    const-wide/16 v15, 0xc

    mul-long/2addr v13, v15

    const-wide/16 v15, 0xa

    div-long v9, v13, v15

    const-wide/32 v13, 0x80000

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    invoke-virtual {v13}, Lcom/mediatek/widget/ChartSweepView;->getValue()J

    move-result-wide v13

    const-wide/16 v15, 0xb

    mul-long/2addr v13, v15

    const-wide/16 v15, 0xa

    div-long/2addr v13, v15

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    const-wide/32 v13, 0xa00000

    cmp-long v13, v11, v13

    if-lez v13, :cond_1

    const-wide/32 v11, 0xa00000

    :cond_1
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mVertMax:J

    cmp-long v13, v11, v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mVertMax:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/widget/ChartView;->mVert:Lcom/android/settings/widget/ChartAxis;

    const-wide/16 v14, 0x0

    invoke-interface {v13, v14, v15, v11, v12}, Lcom/android/settings/widget/ChartAxis;->setBounds(JJ)Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    const-wide/16 v14, 0x0

    invoke-virtual {v13, v14, v15, v11, v12}, Lcom/mediatek/widget/ChartSweepView;->setValidRange(JJ)V

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSeries:Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;

    invoke-virtual {v13}, Lcom/mediatek/widget/ChartBandwidthNetworkSeriesView;->invalidatePath()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mGrid:Lcom/mediatek/widget/ChartBandwidthGridView;

    invoke-virtual {v13}, Lcom/mediatek/widget/ChartBandwidthGridView;->invalidate()V

    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/widget/ChartSweepView;->updateValueFromPosition()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    move-object/from16 v0, p1

    if-eq v13, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/mediatek/widget/ChartBandwidthUsageView;->layoutSweep(Lcom/mediatek/widget/ChartSweepView;)V

    :cond_4
    return-void

    :cond_5
    if-gez v1, :cond_6

    const-wide/16 v13, 0x9

    mul-long/2addr v13, v3

    const-wide/16 v15, 0xa

    div-long v11, v13, v15

    goto/16 :goto_0

    :cond_6
    move-wide v11, v3

    goto/16 :goto_0
.end method
