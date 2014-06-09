.class public Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;
.super Landroid/app/AlertDialog;
.source "WifiApWpsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final PIN_FROM_CLIENT:I = 0x1

.field private static final PUSH_BUTTON:I = 0x0

.field public static final TAG:Ljava/lang/String; = "WifiApWpsDialog"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsMode:I

.field private mWpsModeSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mWpsMode:I

    iput-object p1, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    new-instance v0, Landroid/net/wifi/WpsInfo;

    invoke-direct {v0}, Landroid/net/wifi/WpsInfo;-><init>()V

    iget v1, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mWpsMode:I

    if-nez v1, :cond_2

    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    const-string v1, "any"

    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->startApWps(Landroid/net/wifi/WpsInfo;)Z

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mWpsMode:I

    if-ne v1, v2, :cond_0

    iput v2, v0, Landroid/net/wifi/WpsInfo;->setup:I

    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a0201

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "WifiApWpsDialog"

    const-string v1, "onCreate, return dialog"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400b0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->setView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->setInverseBackgroundForced(Z)V

    const v0, 0x7f08016c

    invoke-virtual {p0, v0}, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a01ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mWpsModeSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mWpsModeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f080499

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, -0x2

    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f08049f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const v2, 0x7f0a0200

    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mWpsModeSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p3, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mWpsMode:I

    iget v0, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mWpsMode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mWpsMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
