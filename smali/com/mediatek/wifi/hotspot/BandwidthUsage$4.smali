.class Lcom/mediatek/wifi/hotspot/BandwidthUsage$4;
.super Ljava/lang/Object;
.source "BandwidthUsage.java"

# interfaces
.implements Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wifi/hotspot/BandwidthUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;


# direct methods
.method constructor <init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$4;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLimitChanged()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$4;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    # invokes: Lcom/mediatek/wifi/hotspot/BandwidthUsage;->setLimitData(Z)V
    invoke-static {v0, v3}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->access$500(Lcom/mediatek/wifi/hotspot/BandwidthUsage;Z)V

    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$4;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    # getter for: Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->access$100(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onLimitChanging()V
    .locals 2

    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$4;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    # getter for: Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->access$100(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public requestLimitEdit()V
    .locals 3

    new-instance v0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;

    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$4;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    invoke-direct {v0, v1}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;-><init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V

    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$4;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$4;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    invoke-virtual {v1}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "limitEditor"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
