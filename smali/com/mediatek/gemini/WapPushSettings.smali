.class public Lcom/mediatek/gemini/WapPushSettings;
.super Lcom/mediatek/gemini/SimCheckboxEntrance;
.source "WapPushSettings.java"


# static fields
.field private static final DIALOG_WAP_PERMISSION:I = 0x3e9

.field private static final INTENT_CANCEL_NOTIFICATION:Ljava/lang/String; = "com.mediatek.cu_wap_push_permission_cancel"

.field private static final TAG:Ljava/lang/String; = "WapPushSettings"


# instance fields
.field private mFlater:Landroid/view/LayoutInflater;

.field private mIsShowDlg:Z

.field private mNewSimColor:I

.field private mNewSimName:Ljava/lang/String;

.field private mNewSimNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/gemini/WapPushSettings;->mNewSimColor:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gemini/WapPushSettings;->mIsShowDlg:Z

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gemini/WapPushSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/gemini/WapPushSettings;->cancelPermissionNotification()V

    return-void
.end method

.method static synthetic access$102(Lcom/mediatek/gemini/WapPushSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/gemini/WapPushSettings;->mIsShowDlg:Z

    return p1
.end method

.method private cancelPermissionNotification()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.cu_wap_push_permission_cancel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mediatek/gemini/WapPushSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "WapPushSettings"

    const-string v2, "send broadcast of com.mediatek.cu_wap_push_permission_cancel"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private createPermissionDlgView()Landroid/view/View;
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/mediatek/gemini/WapPushSettings;->mFlater:Landroid/view/LayoutInflater;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v3, p0, Lcom/mediatek/gemini/WapPushSettings;->mFlater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400a8

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const v3, 0x7f0a01db

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object v2, v3

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/mediatek/gemini/WapPushSettings;->mNewSimNum:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/mediatek/gemini/WapPushSettings;->mNewSimName:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/gemini/WapPushSettings;->mNewSimName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget v3, p0, Lcom/mediatek/gemini/WapPushSettings;->mNewSimColor:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/gemini/WapPushSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/gemini/WapPushSettings;->mNewSimColor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateNewSimInfo()V
    .locals 4

    iget-object v2, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimList:Ljava/util/List;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput v2, p0, Lcom/mediatek/gemini/WapPushSettings;->mNewSimNum:I

    iget-object v2, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/provider/Telephony$SIMInfo;->mWapPush:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/mediatek/gemini/WapPushSettings;->mNewSimNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/gemini/WapPushSettings;->mNewSimNum:I

    iget-object v2, v1, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    iput-object v2, p0, Lcom/mediatek/gemini/WapPushSettings;->mNewSimName:Ljava/lang/String;

    iget v2, v1, Landroid/provider/Telephony$SIMInfo;->mSimBackgroundDarkRes:I

    iput v2, p0, Lcom/mediatek/gemini/WapPushSettings;->mNewSimColor:I

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected addSimInfoPreference()V
    .locals 2

    const/16 v1, 0x3e9

    invoke-super {p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;->addSimInfoPreference()V

    invoke-direct {p0}, Lcom/mediatek/gemini/WapPushSettings;->updateNewSimInfo()V

    iget v0, p0, Lcom/mediatek/gemini/WapPushSettings;->mNewSimNum:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gemini/WapPushSettings;->mIsShowDlg:Z

    invoke-virtual {p0}, Lcom/mediatek/gemini/WapPushSettings;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/mediatek/gemini/WapPushSettings;->removeDialog(I)V

    invoke-virtual {p0, v1}, Lcom/mediatek/gemini/WapPushSettings;->showDialog(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/WapPushSettings;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/mediatek/gemini/SimCheckboxEntrance;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/mediatek/gemini/WapPushSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/WapPushSettings;->mFlater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    move-object v1, v3

    :goto_0
    return-object v1

    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/gemini/WapPushSettings;->createPermissionDlgView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/gemini/WapPushSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/mediatek/gemini/WapPushSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080107

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v4, 0x1080027

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x1040013

    new-instance v5, Lcom/mediatek/gemini/WapPushSettings$1;

    invoke-direct {v5, p0}, Lcom/mediatek/gemini/WapPushSettings$1;-><init>(Lcom/mediatek/gemini/WapPushSettings;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v4, 0x1040009

    new-instance v5, Lcom/mediatek/gemini/WapPushSettings$2;

    invoke-direct {v5, p0}, Lcom/mediatek/gemini/WapPushSettings$2;-><init>(Lcom/mediatek/gemini/WapPushSettings;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;->onPause()V

    iget-boolean v0, p0, Lcom/mediatek/gemini/WapPushSettings;->mIsShowDlg:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/WapPushSettings;->removeDialog(I)V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/mediatek/gemini/WapPushSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v6, v2, Landroid/provider/Telephony$SIMInfo;->mWapPush:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    const-string v4, "WapPushSettings"

    const-string v6, "user click on a SIM with default value"

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/gemini/WapPushSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget v7, v2, Landroid/provider/Telephony$SIMInfo;->mWapPush:I

    rsub-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7, v0, v1}, Landroid/provider/Telephony$SIMInfo;->setWAPPush(Landroid/content/Context;IJ)I

    instance-of v6, p2, Lcom/mediatek/gemini/SimInfoPreference;

    if-eqz v6, :cond_0

    move-object v3, p2

    check-cast v3, Lcom/mediatek/gemini/SimInfoPreference;

    if-eqz v3, :cond_0

    iget v6, v2, Landroid/provider/Telephony$SIMInfo;->mWapPush:I

    if-ne v6, v5, :cond_2

    :goto_1
    invoke-virtual {v3, v4}, Lcom/mediatek/gemini/SimInfoPreference;->setCheck(Z)V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    :cond_3
    move v5, v4

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;->onResume()V

    iget-boolean v0, p0, Lcom/mediatek/gemini/WapPushSettings;->mIsShowDlg:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/WapPushSettings;->showDialog(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/WapPushSettings;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method protected shouldDisableWhenRadioOff()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updateCheckState(Lcom/mediatek/gemini/SimInfoPreference;Landroid/provider/Telephony$SIMInfo;)V
    .locals 2

    const/4 v0, 0x1

    iget v1, p2, Landroid/provider/Telephony$SIMInfo;->mWapPush:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/mediatek/gemini/SimInfoPreference;->setCheck(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
