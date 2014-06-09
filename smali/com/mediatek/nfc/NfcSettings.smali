.class public Lcom/mediatek/nfc/NfcSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NfcSettings.java"


# static fields
.field private static final KEY_ANDROID_BEAM:Ljava/lang/String; = "nfc_android_beam"

.field private static final KEY_NFC_P2P_MODE:Ljava/lang/String; = "nfc_p2p_mode"

.field private static final KEY_NFC_TAG_RW:Ljava/lang/String; = "nfc_rw_tag"

.field private static final TAG:Ljava/lang/String; = "NfcSettings"


# instance fields
.field private mAndroidBeam:Landroid/preference/Preference;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/mediatek/nfc/MtkNfcEnabler;

.field private mNfcP2pModePref:Landroid/preference/CheckBoxPreference;

.field private mNfcRwTagPref:Landroid/preference/CheckBoxPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/mediatek/nfc/NfcSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/nfc/NfcSettings$1;-><init>(Lcom/mediatek/nfc/NfcSettings;)V

    iput-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/nfc/NfcSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/nfc/NfcSettings;->updatePreferenceEnabledStatus()V

    return-void
.end method

.method private initPreferences()V
    .locals 1

    const-string v0, "nfc_p2p_mode"

    invoke-virtual {p0, v0}, Lcom/mediatek/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcP2pModePref:Landroid/preference/CheckBoxPreference;

    const-string v0, "nfc_android_beam"

    invoke-virtual {p0, v0}, Lcom/mediatek/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mAndroidBeam:Landroid/preference/Preference;

    const-string v0, "nfc_rw_tag"

    invoke-virtual {p0, v0}, Lcom/mediatek/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcRwTagPref:Landroid/preference/CheckBoxPreference;

    return-void
.end method

.method private updatePreferenceEnabledStatus()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcP2pModePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcRwTagPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcP2pModePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcRwTagPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updatePreferences()V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mAndroidBeam:Landroid/preference/Preference;

    const v3, 0x7f080438

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    :goto_0
    invoke-direct {p0}, Lcom/mediatek/nfc/NfcSettings;->updatePreferenceEnabledStatus()V

    iget-object v3, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcP2pModePref:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/nfc/NfcAdapter;->getModeFlag(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcRwTagPref:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3, v1}, Landroid/nfc/NfcAdapter;->getModeFlag(I)I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mAndroidBeam:Landroid/preference/Preference;

    const v3, 0x7f080439

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/16 v8, 0x10

    const/4 v7, -0x2

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x7f060022

    invoke-virtual {p0, v4}, Lcom/mediatek/nfc/NfcSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    instance-of v4, v0, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_1

    move-object v3, v0

    check-cast v3, Landroid/preference/PreferenceActivity;

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v6, v6, v2, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v1, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const v5, 0x7f080435

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_1
    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    new-instance v4, Lcom/mediatek/nfc/MtkNfcEnabler;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-direct {v4, v0, v5, v1, v6}, Lcom/mediatek/nfc/MtkNfcEnabler;-><init>(Landroid/content/Context;Lcom/mediatek/nfc/NfcPreference;Landroid/widget/Switch;Landroid/nfc/NfcAdapter;)V

    iput-object v4, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcEnabler:Lcom/mediatek/nfc/MtkNfcEnabler;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/mediatek/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-direct {p0}, Lcom/mediatek/nfc/NfcSettings;->initPreferences()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcEnabler:Lcom/mediatek/nfc/MtkNfcEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcEnabler:Lcom/mediatek/nfc/MtkNfcEnabler;

    invoke-virtual {v0}, Lcom/mediatek/nfc/MtkNfcEnabler;->pause()V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/mediatek/nfc/NfcSettings;->mAndroidBeam:Landroid/preference/Preference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "com.android.settings.nfc.AndroidBeam"

    const/4 v2, 0x0

    invoke-virtual {p0, p0, v1, v0, v2}, Lcom/mediatek/nfc/NfcSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcP2pModePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "NfcSettings"

    const-string v3, "p2p mode"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcP2pModePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/nfc/NfcAdapter;->setModeFlag(II)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcRwTagPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "NfcSettings"

    const-string v3, "tag rw mode"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcRwTagPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    :cond_4
    iget-object v2, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2, v1, v0}, Landroid/nfc/NfcAdapter;->setModeFlag(II)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcEnabler:Lcom/mediatek/nfc/MtkNfcEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcEnabler:Lcom/mediatek/nfc/MtkNfcEnabler;

    invoke-virtual {v0}, Lcom/mediatek/nfc/MtkNfcEnabler;->resume()V

    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/mediatek/nfc/NfcSettings;->updatePreferences()V

    return-void
.end method
