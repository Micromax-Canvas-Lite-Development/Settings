.class Lcom/mediatek/wifi/hotspot/BandwidthUsage$5;
.super Ljava/lang/Object;
.source "BandwidthUsage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$5;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    :try_start_0
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$5;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    # getter for: Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottling:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->access$600(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$5;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    # getter for: Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottling:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->access$600(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/widget/CheckBox;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$5;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    # getter for: Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mNetworkService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->access$700(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/os/INetworkManagementService;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->setInterfaceThrottleEnabled(Z)V

    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$5;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    # getter for: Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;
    invoke-static {v4}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->access$400(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Lcom/mediatek/widget/ChartBandwidthUsageView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/mediatek/widget/ChartBandwidthUsageView;->setLimitState(Z)V

    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$5;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    const/4 v5, 0x0

    # invokes: Lcom/mediatek/wifi/hotspot/BandwidthUsage;->setLimitData(Z)V
    invoke-static {v4, v5}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->access$500(Lcom/mediatek/wifi/hotspot/BandwidthUsage;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$5;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    # getter for: Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottling:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->access$600(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/widget/CheckBox;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$5;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    # getter for: Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mNetworkService:Landroid/os/INetworkManagementService;
    invoke-static {v4}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->access$700(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/os/INetworkManagementService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->setInterfaceThrottleEnabled(Z)V

    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$5;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    # getter for: Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;
    invoke-static {v4}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->access$400(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Lcom/mediatek/widget/ChartBandwidthUsageView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/mediatek/widget/ChartBandwidthUsageView;->setLimitState(Z)V

    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$5;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    invoke-virtual {v4}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "network_info"

    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$5;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    invoke-virtual {v6}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "network_limit"

    const-wide/16 v5, 0x1

    invoke-interface {v1, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "BandwidthUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init limit value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$5;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    # getter for: Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;
    invoke-static {v4}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->access$400(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Lcom/mediatek/widget/ChartBandwidthUsageView;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/mediatek/widget/ChartBandwidthUsageView;->setLimitBytes(J)V

    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$5;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    const/4 v5, 0x1

    # invokes: Lcom/mediatek/wifi/hotspot/BandwidthUsage;->setLimitData(Z)V
    invoke-static {v4, v5}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->access$500(Lcom/mediatek/wifi/hotspot/BandwidthUsage;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "BandwidthUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " RemoteException happens when setInterfaceThrottle:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
