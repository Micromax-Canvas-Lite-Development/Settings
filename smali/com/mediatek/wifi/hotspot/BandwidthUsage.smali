.class public Lcom/mediatek/wifi/hotspot/BandwidthUsage;
.super Landroid/app/Fragment;
.source "BandwidthUsage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;
    }
.end annotation


# static fields
.field private static final EVENT_TICK:I = 0x1

.field private static final GB_IN_BYTES:J = 0x40000000L

.field private static final IFACE:Ljava/lang/String; = "ap0"

.field private static final KB_IN_BYTES:J = 0x400L

.field private static final LIMIT_MAX_SIZE:I = 0xa

.field private static final MB_IN_BYTES:J = 0x100000L

.field private static final NETWORK_INFO:Ljava/lang/String; = "network_info"

.field private static final NETWORK_LIMIT:Ljava/lang/String; = "network_limit"

.field private static final TAG:Ljava/lang/String; = "BandwidthUsage"

.field private static final TAG_LIMIT_EDITOR:Ljava/lang/String; = "limitEditor"


# instance fields
.field private mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

.field private mChartListener:Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private mEnableThrottling:Landroid/widget/CheckBox;

.field private mEnableThrottlingView:Landroid/view/View;

.field private mFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mOnEnableCheckBoxClick:Landroid/view/View$OnClickListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStartTime:J

.field private mTotalDataView:Landroid/view/View;

.field private mTotalTimeView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mStartTime:J

    new-instance v0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$1;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$1;-><init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$2;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$2;-><init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$3;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$3;-><init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$4;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$4;-><init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChartListener:Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

    new-instance v0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$5;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$5;-><init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mOnEnableCheckBoxClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->updateBandwidthUsage()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/animation/LayoutTransition;
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Lcom/mediatek/widget/ChartBandwidthUsageView;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/wifi/hotspot/BandwidthUsage;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->setLimitData(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottling:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/os/INetworkManagementService;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mNetworkService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method private buildLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 2

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    return-object v0
.end method

.method private checkIfacePairs([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    array-length v2, p1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    aget-object v2, p1, v0

    if-eqz v2, :cond_1

    aget-object v2, p1, v0

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_0
.end method

.method private inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 5

    const/4 v4, -0x2

    const v2, 0x7f040063

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x1020018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private refreshTimeAndData()V
    .locals 14

    const-wide/32 v12, 0x40000000

    const-wide/32 v10, 0x100000

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mStartTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mStartTime:J

    sub-long v4, v6, v8

    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v6

    long-to-double v7, v4

    invoke-static {v6, v7, v8}, Lcom/android/settings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalTimeView:Landroid/view/View;

    const v7, 0x7f080185

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->setPreferenceTitle(Landroid/view/View;ILjava/lang/String;)V

    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-virtual {v6}, Lcom/mediatek/widget/ChartBandwidthUsageView;->getTotalUsedData()J

    move-result-wide v1

    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    cmp-long v6, v1, v10

    if-gez v6, :cond_1

    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    const-wide/16 v6, 0x400

    div-long/2addr v1, v6

    const-string v3, " KB"

    :goto_0
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalDataView:Landroid/view/View;

    const v7, 0x7f080186

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->setPreferenceTitle(Landroid/view/View;ILjava/lang/String;)V

    return-void

    :cond_1
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    cmp-long v6, v1, v12

    if-gez v6, :cond_2

    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    div-long/2addr v1, v10

    const-string v3, " M"

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    div-long/2addr v1, v12

    const-string v3, " G"

    goto :goto_0
.end method

.method private setLimitData(Z)V
    .locals 14

    const-wide/16 v12, 0x8

    const/4 v5, 0x1

    const-wide/16 v10, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-virtual {v6}, Lcom/mediatek/widget/ChartBandwidthUsageView;->getLimitBytes()J

    move-result-wide v2

    cmp-long v6, v2, v10

    if-nez v6, :cond_1

    move v4, v5

    :goto_0
    cmp-long v6, v2, v10

    if-nez v6, :cond_2

    :goto_1
    const-string v6, "BandwidthUsage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setLimitData,setInterfaceThrottle,rxBytes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",txBytes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mNetworkService:Landroid/os/INetworkManagementService;

    const-string v7, "ap0"

    invoke-interface {v6, v7, v4, v5}, Landroid/os/INetworkManagementService;->setInterfaceThrottle(Ljava/lang/String;II)V

    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "network_info"

    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v6, "network_limit"

    cmp-long v7, v2, v10

    if-nez v7, :cond_0

    const-wide/16 v2, 0x1

    :cond_0
    invoke-interface {v1, v6, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_2
    return-void

    :cond_1
    mul-long v6, v2, v12

    const-wide/16 v8, 0x2

    mul-long/2addr v6, v8

    long-to-int v6, v6

    div-int/lit16 v4, v6, 0xc00

    goto :goto_0

    :cond_2
    mul-long v6, v2, v12

    long-to-int v6, v6

    div-int/lit16 v5, v6, 0xc00

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mNetworkService:Landroid/os/INetworkManagementService;

    const-string v7, "ap0"

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-interface {v6, v7, v8, v9}, Landroid/os/INetworkManagementService;->setInterfaceThrottle(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v6, "BandwidthUsage"

    const-string v7, " RemoteException happens when setInterfaceRxThrottle"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setPreferenceTitle(Landroid/view/View;I)V
    .locals 2

    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private setPreferenceTitle(Landroid/view/View;ILjava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v2, p2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateBandwidthUsage()V
    .locals 6

    :try_start_0
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v4}, Landroid/net/IConnectivityManager;->getTetheredIfacePairs()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->checkIfacePairs([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v4, v0}, Landroid/os/INetworkManagementService;->getNetworkStatsTethering([Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v2

    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-virtual {v4, v2}, Lcom/mediatek/widget/ChartBandwidthUsageView;->setNetworkStates(Landroid/net/NetworkStats;)V

    :cond_0
    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->refreshTimeAndData()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v4, "BandwidthUsage"

    const-string v5, "RemoteException happens"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mNetworkService:Landroid/os/INetworkManagementService;

    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mConnManager:Landroid/net/IConnectivityManager;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const v9, 0x7f040063

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v5, "BandwidthUsage"

    const-string v6, "onCreateView"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f0400ac

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a01ed

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottling:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottling:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottling:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setFocusable(Z)V

    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottling:Landroid/widget/CheckBox;

    invoke-direct {p0, p1, v2, v5}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setClickable(Z)V

    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setFocusable(Z)V

    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mOnEnableCheckBoxClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    const v6, 0x7f080180

    invoke-direct {p0, v5, v6}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->setPreferenceTitle(Landroid/view/View;I)V

    const v5, 0x7f0a005d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/mediatek/widget/ChartBandwidthUsageView;

    iput-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChartListener:Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

    invoke-virtual {v5, v6}, Lcom/mediatek/widget/ChartBandwidthUsageView;->setListener(Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;)V

    const v5, 0x7f0a01ee

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {p1, v9, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalTimeView:Landroid/view/View;

    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalTimeView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setClickable(Z)V

    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalTimeView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setFocusable(Z)V

    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalTimeView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v5, 0x7f0a00c8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {p1, v9, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalDataView:Landroid/view/View;

    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalDataView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setClickable(Z)V

    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalDataView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setFocusable(Z)V

    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalDataView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v4
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "BandwidthUsage"

    const-string v1, "onDestory"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "BandwidthUsage"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onResume()V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    const-string v7, "BandwidthUsage"

    const-string v8, "onResume"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    invoke-static {v7, v8, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_0

    move v2, v6

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->onBackPressed()V

    :cond_1
    iget-object v7, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :try_start_0
    iget-object v7, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v7}, Landroid/os/INetworkManagementService;->getInterfaceThrottleEnabled()Z

    move-result v1

    const-string v7, "BandwidthUsage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onResume,getInterfaceRxThrottle="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottling:Landroid/widget/CheckBox;

    invoke-virtual {v7, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v7, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-virtual {v7, v1}, Lcom/mediatek/widget/ChartBandwidthUsageView;->setLimitState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "network_info"

    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    invoke-virtual {v7, v8, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "network_limit"

    invoke-interface {v3, v6, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v6, "BandwidthUsage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init limit value="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-virtual {v6, v4, v5}, Lcom/mediatek/widget/ChartBandwidthUsageView;->setLimitBytes(J)V

    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/mediatek/widget/ChartBandwidthUsageView;->updateVertAxisBounds(Lcom/mediatek/widget/ChartSweepView;)V

    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_hotspot_start_time"

    invoke-static {v6, v7, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mStartTime:J

    const-string v6, "BandwidthUsage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mStartTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mStartTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->refreshTimeAndData()V

    return-void

    :catch_0
    move-exception v0

    const-string v7, "BandwidthUsage"

    const-string v8, " RemoteException happens when getInterfaceThrottle"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
