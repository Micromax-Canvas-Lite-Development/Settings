.class public Lcom/mediatek/gemini/SimRoamingSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SimRoamingSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_ROAING_REMINDER_SETTING:Ljava/lang/String; = "roaming_reminder_settings"

.field private static final KEY_ROAMING_ENTRANCE:Ljava/lang/String; = "data_roaming_settings"

.field private static final KEY_ROAMING_SELECTION_SETTING:Ljava/lang/String; = "roaming_selection_settings"

.field private static final TAG:Ljava/lang/String; = "SimRoamingSettings"


# instance fields
.field private mExt:Lcom/android/settings/ext/ISimRoamingExt;

.field private mRoamReminder:Landroid/preference/ListPreference;

.field private mRoamingReminderSummary:[Ljava/lang/CharSequence;

.field private mRoamingSelection:Landroid/preference/ListPreference;

.field private mRoamingSelectionSummary:[Ljava/lang/CharSequence;

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/mediatek/gemini/SimRoamingSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/SimRoamingSettings$1;-><init>(Lcom/mediatek/gemini/SimRoamingSettings;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mSimReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gemini/SimRoamingSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/gemini/SimRoamingSettings;->goBackSettings()V

    return-void
.end method

.method private goBackSettings()V
    .locals 3

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimRoamingSettings;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/Settings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimRoamingSettings;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimRoamingSettings;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimRoamingSettings;->addPreferencesFromResource(I)V

    const-string v0, "roaming_reminder_settings"

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mRoamReminder:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mRoamReminder:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimRoamingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mRoamingReminderSummary:[Ljava/lang/CharSequence;

    const-string v0, "roaming_selection_settings"

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimRoamingSettings;->removePreference(Ljava/lang/String;)V

    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->getSimRoamingExtPlugin(Landroid/content/Context;)Lcom/android/settings/ext/ISimRoamingExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mExt:Lcom/android/settings/ext/ISimRoamingExt;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mSimReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v4, "roaming_reminder_settings"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "SimRoamingSettings"

    const-string v5, "KEY_ROAING_REMINDER_SETTING.equals(key)"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mRoamReminder:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v4, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mRoamReminder:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mRoamReminder:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "roaming_reminder_mode_setting"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.ROAMING_REMINDER_SETTING"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "mode"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/ITelephony;->setRoamingIndicatorNeddedProperty(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v4, 0x0

    return v4

    :catch_0
    move-exception v0

    const-string v4, "SimRoamingSettings"

    const-string v5, "mTelephony exception"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v4, "roaming_selection_settings"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SimRoamingSettings"

    const-string v5, "KEY_ROAMING_SELECTION_SETTING.equals(key)"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mRoamingSelection:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v4, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mRoamingSelection:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mRoamingSelection:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "roaming_selection_mode_setting"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_roaming"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "roaming_reminder_mode_setting"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "SimRoamingSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prevalue is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mRoamReminder:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v2, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mRoamReminder:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mRoamingReminderSummary:[Ljava/lang/CharSequence;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v2, "data_roaming_settings"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mExt:Lcom/android/settings/ext/ISimRoamingExt;

    invoke-interface {v2, v0}, Lcom/android/settings/ext/ISimRoamingExt;->setSummary(Landroid/preference/Preference;)V

    :cond_0
    return-void
.end method
