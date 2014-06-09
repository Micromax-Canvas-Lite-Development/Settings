.class Lcom/mediatek/widget/ChartBandwidthUsageView$2;
.super Ljava/lang/Object;
.source "ChartBandwidthUsageView.java"

# interfaces
.implements Lcom/mediatek/widget/ChartSweepView$OnSweepListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/widget/ChartBandwidthUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;


# direct methods
.method constructor <init>(Lcom/mediatek/widget/ChartBandwidthUsageView;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$2;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/mediatek/widget/ChartSweepView;Z)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$2;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    # invokes: Lcom/mediatek/widget/ChartBandwidthUsageView;->clearUpdateAxisDelayed(Lcom/mediatek/widget/ChartSweepView;)V
    invoke-static {v0, p1}, Lcom/mediatek/widget/ChartBandwidthUsageView;->access$100(Lcom/mediatek/widget/ChartBandwidthUsageView;Lcom/mediatek/widget/ChartSweepView;)V

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$2;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    # getter for: Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;
    invoke-static {v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->access$200(Lcom/mediatek/widget/ChartBandwidthUsageView;)Lcom/mediatek/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$2;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    # getter for: Lcom/mediatek/widget/ChartBandwidthUsageView;->mListener:Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;
    invoke-static {v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->access$300(Lcom/mediatek/widget/ChartBandwidthUsageView;)Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$2;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    # getter for: Lcom/mediatek/widget/ChartBandwidthUsageView;->mListener:Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;
    invoke-static {v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->access$300(Lcom/mediatek/widget/ChartBandwidthUsageView;)Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;->onLimitChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$2;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    const/4 v1, 0x0

    # invokes: Lcom/mediatek/widget/ChartBandwidthUsageView;->sendUpdateAxisDelayed(Lcom/mediatek/widget/ChartSweepView;Z)V
    invoke-static {v0, p1, v1}, Lcom/mediatek/widget/ChartBandwidthUsageView;->access$000(Lcom/mediatek/widget/ChartBandwidthUsageView;Lcom/mediatek/widget/ChartSweepView;Z)V

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$2;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    # getter for: Lcom/mediatek/widget/ChartBandwidthUsageView;->mListener:Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;
    invoke-static {v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->access$300(Lcom/mediatek/widget/ChartBandwidthUsageView;)Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;->onLimitChanging()V

    goto :goto_0
.end method

.method public requestEdit(Lcom/mediatek/widget/ChartSweepView;)V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$2;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    # getter for: Lcom/mediatek/widget/ChartBandwidthUsageView;->mSweepLimit:Lcom/mediatek/widget/ChartSweepView;
    invoke-static {v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->access$200(Lcom/mediatek/widget/ChartBandwidthUsageView;)Lcom/mediatek/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$2;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    # getter for: Lcom/mediatek/widget/ChartBandwidthUsageView;->mListener:Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;
    invoke-static {v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->access$300(Lcom/mediatek/widget/ChartBandwidthUsageView;)Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/widget/ChartBandwidthUsageView$2;->this$0:Lcom/mediatek/widget/ChartBandwidthUsageView;

    # getter for: Lcom/mediatek/widget/ChartBandwidthUsageView;->mListener:Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;
    invoke-static {v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->access$300(Lcom/mediatek/widget/ChartBandwidthUsageView;)Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;->requestLimitEdit()V

    :cond_0
    return-void
.end method
