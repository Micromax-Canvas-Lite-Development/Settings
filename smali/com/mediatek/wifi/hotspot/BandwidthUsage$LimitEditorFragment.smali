.class public Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;
.super Landroid/app/DialogFragment;
.source "BandwidthUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wifi/hotspot/BandwidthUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LimitEditorFragment"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;


# direct methods
.method public constructor <init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v8, 0x7f04002c

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a005b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    iget-object v8, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    # getter for: Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;
    invoke-static {v8}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->access$400(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Lcom/mediatek/widget/ChartBandwidthUsageView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/widget/ChartBandwidthUsageView;->getLimitBytes()J

    move-result-wide v4

    const/16 v8, 0xa

    invoke-virtual {v1, v8}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    invoke-virtual {v1, v10}, Landroid/widget/NumberPicker;->setMinValue(I)V

    const-wide/32 v8, 0x100000

    div-long v8, v4, v8

    long-to-int v8, v8

    invoke-virtual {v1, v8}, Landroid/widget/NumberPicker;->setValue(I)V

    invoke-virtual {v1, v10}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    const v8, 0x7f0808cf

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v8, 0x7f0808cd

    new-instance v9, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment$1;

    invoke-direct {v9, p0, v1}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment$1;-><init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;Landroid/widget/NumberPicker;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    return-object v8
.end method
