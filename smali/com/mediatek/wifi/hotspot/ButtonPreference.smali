.class public Lcom/mediatek/wifi/hotspot/ButtonPreference;
.super Landroid/preference/Preference;
.source "ButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wifi/hotspot/ButtonPreference$OnButtonClickCallback;
    }
.end annotation


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mCallBack:Lcom/mediatek/wifi/hotspot/ButtonPreference$OnButtonClickCallback;

.field private mHotspotClient:Landroid/net/wifi/HotspotClient;

.field private mIpAddress:Ljava/lang/String;

.field private mMacAddress:Ljava/lang/String;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/HotspotClient;Lcom/mediatek/wifi/hotspot/ButtonPreference$OnButtonClickCallback;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f040067

    invoke-virtual {p0, v0}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->setWidgetLayoutResource(I)V

    iput-object p2, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mHotspotClient:Landroid/net/wifi/HotspotClient;

    iput-object p3, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mCallBack:Lcom/mediatek/wifi/hotspot/ButtonPreference$OnButtonClickCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f040067

    invoke-virtual {p0, v0}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f040067

    invoke-virtual {p0, v0}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public getMacAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public isBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mHotspotClient:Landroid/net/wifi/HotspotClient;

    iget-boolean v0, v0, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a0105

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mCallBack:Lcom/mediatek/wifi/hotspot/ButtonPreference$OnButtonClickCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mCallBack:Lcom/mediatek/wifi/hotspot/ButtonPreference$OnButtonClickCallback;

    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mHotspotClient:Landroid/net/wifi/HotspotClient;

    invoke-interface {v0, p1, v1}, Lcom/mediatek/wifi/hotspot/ButtonPreference$OnButtonClickCallback;->onClick(Landroid/view/View;Landroid/net/wifi/HotspotClient;)V

    goto :goto_0
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->notifyChanged()V

    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mMacAddress:Ljava/lang/String;

    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/ButtonPreference;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
