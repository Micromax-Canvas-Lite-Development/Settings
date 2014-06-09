.class public Lcom/mediatek/lbs/AgpsEpoSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AgpsEpoSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final CONFIRM_AGPS_DIALOG_ID:I = 0x1

.field private static final CONFIRM_EPO_DIALOG_ID:I = 0x0

.field private static final KEY_AGPS_ENABLER:Ljava/lang/String; = "agps_enabler"

.field private static final KEY_AGPS_SETTINGS:Ljava/lang/String; = "agps_settings"

.field private static final KEY_EPO_ENABLER:Ljava/lang/String; = "epo_enabler"

.field private static final KEY_EPO_SETTINGS:Ljava/lang/String; = "epo_settings"

.field private static final TAG:Ljava/lang/String; = "AgpsEpoSettings"


# instance fields
.field private mAgpsCB:Landroid/preference/CheckBoxPreference;

.field private mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

.field private mAgpsPref:Landroid/preference/Preference;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEnabledSwitch:Landroid/widget/Switch;

.field private mEpoEnalberPref:Landroid/preference/CheckBoxPreference;

.field private mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

.field private mEpoSettingPref:Landroid/preference/Preference;

.field private mSettingsObserver:Ljava/util/Observer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/lbs/AgpsEpoSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/lbs/AgpsEpoSettings;->updateLocationToggles()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/lbs/AgpsEpoSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEpoEnalberPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/lbs/AgpsEpoSettings;)Lcom/mediatek/common/epo/MtkEpoClientManager;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/lbs/AgpsEpoSettings;)Lcom/mediatek/common/agps/MtkAgpsManager;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/lbs/AgpsEpoSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mAgpsCB:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private createPreferenceHierarchy()V
    .locals 1

    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/AgpsEpoSettings;->addPreferencesFromResource(I)V

    const-string v0, "epo_enabler"

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/AgpsEpoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEpoEnalberPref:Landroid/preference/CheckBoxPreference;

    const-string v0, "epo_settings"

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/AgpsEpoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEpoSettingPref:Landroid/preference/Preference;

    const-string v0, "mtk-epo-client"

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/AgpsEpoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/epo/MtkEpoClientManager;

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    const-string v0, "mtk-agps"

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/AgpsEpoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/agps/MtkAgpsManager;

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    const-string v0, "agps_settings"

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/AgpsEpoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mAgpsPref:Landroid/preference/Preference;

    const-string v0, "agps_enabler"

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/AgpsEpoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mAgpsCB:Landroid/preference/CheckBoxPreference;

    return-void
.end method

.method private updateLocationToggles()V
    .locals 3

    iget-object v1, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mAgpsCB:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mAgpsCB:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v2}, Lcom/mediatek/common/agps/MtkAgpsManager;->getStatus()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mAgpsCB:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEpoEnalberPref:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    invoke-interface {v2}, Lcom/mediatek/common/epo/MtkEpoClientManager;->getStatus()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEpoEnalberPref:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/mediatek/lbs/AgpsEpoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEnabledSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "gps"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "gps"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "gps"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    iget-object v3, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v6, v6, v2, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    iget-object v3, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const-string v0, "AgpsEpoSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[f] onCheckedChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEnabledSwitch:Landroid/widget/Switch;

    if-ne p1, v0, :cond_0

    const-string v0, "AgpsEpoSettings"

    const-string v1, "[f] onCheckedChanged buttonview is mEnableSwitch"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "gps"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/mediatek/lbs/AgpsEpoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/lbs/AgpsEpoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/mediatek/lbs/AgpsEpoSettings;->createPreferenceHierarchy()V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0805f5

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    const v3, 0x1080027

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/lbs/AgpsEpoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08004a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08004b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08004c

    new-instance v3, Lcom/mediatek/lbs/AgpsEpoSettings$3;

    invoke-direct {v3, p0}, Lcom/mediatek/lbs/AgpsEpoSettings$3;-><init>(Lcom/mediatek/lbs/AgpsEpoSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08004d

    new-instance v3, Lcom/mediatek/lbs/AgpsEpoSettings$2;

    invoke-direct {v3, p0}, Lcom/mediatek/lbs/AgpsEpoSettings$2;-><init>(Lcom/mediatek/lbs/AgpsEpoSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/lbs/AgpsEpoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08004e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08004f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080050

    new-instance v3, Lcom/mediatek/lbs/AgpsEpoSettings$5;

    invoke-direct {v3, p0}, Lcom/mediatek/lbs/AgpsEpoSettings$5;-><init>(Lcom/mediatek/lbs/AgpsEpoSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080051

    new-instance v3, Lcom/mediatek/lbs/AgpsEpoSettings$4;

    invoke-direct {v3, p0}, Lcom/mediatek/lbs/AgpsEpoSettings$4;-><init>(Lcom/mediatek/lbs/AgpsEpoSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEpoEnalberPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEpoEnalberPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEpoEnalberPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0, v6}, Lcom/mediatek/lbs/AgpsEpoSettings;->showDialog(I)V

    :goto_0
    move v0, v8

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEpoMgr:Lcom/mediatek/common/epo/MtkEpoClientManager;

    invoke-interface {v0}, Lcom/mediatek/common/epo/MtkEpoClientManager;->disable()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEpoSettingPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    invoke-virtual {p0}, Lcom/mediatek/lbs/AgpsEpoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/mediatek/lbs/EPOSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080047

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mAgpsCB:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mAgpsCB:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mAgpsCB:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/AgpsEpoSettings;->showDialog(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v0}, Lcom/mediatek/common/agps/MtkAgpsManager;->disable()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mAgpsPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_5

    invoke-virtual {p0}, Lcom/mediatek/lbs/AgpsEpoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/mediatek/lbs/AgpsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080049

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/mediatek/lbs/AgpsEpoSettings;->updateLocationToggles()V

    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mSettingsObserver:Ljava/util/Observer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mediatek/lbs/AgpsEpoSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/lbs/AgpsEpoSettings$1;-><init>(Lcom/mediatek/lbs/AgpsEpoSettings;)V

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mSettingsObserver:Ljava/util/Observer;

    :cond_0
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public onStart()V
    .locals 10

    const/16 v1, 0x10

    const/4 v9, 0x1

    const/4 v5, -0x2

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    invoke-virtual {p0}, Lcom/mediatek/lbs/AgpsEpoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mEnabledSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v9, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "location_providers_allowed"

    aput-object v8, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v7, v1, v9, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mSettingsObserver:Ljava/util/Observer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/mediatek/lbs/AgpsEpoSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    :cond_0
    return-void
.end method
