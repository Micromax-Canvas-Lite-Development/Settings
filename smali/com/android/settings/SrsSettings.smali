.class public Lcom/android/settings/SrsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SrsSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final EVENT_HEADSET_PLUG_STATE_CHANGED:I = 0x1

.field private static final KEY_SRS_MUSICEQ:Ljava/lang/String; = "srs_musiceq_effect"

.field private static final KEY_SRS_VIDEOEQ:Ljava/lang/String; = "srs_videoeq_effect"

.field private static final KEY_USE_SRS:Ljava/lang/String; = "usesrssoundenh"

.field private static final TAG:Ljava/lang/String; = "SrsSettings"

.field public static final UPDATENOTIFICATIONG:Ljava/lang/String; = "com.android.settings.srs.updatenotification"


# instance fields
.field UseHeadphones:Z

.field UseSoundEnh:Z

.field mMusicEqSlideParam:Ljava/lang/String;

.field private mSrsMusicEQPref:Landroid/preference/ListPreference;

.field mSrsMusicEq:I

.field private mSrsSoundSet:Landroid/preference/CheckBoxPreference;

.field private mSrsVideoEQPref:Landroid/preference/ListPreference;

.field mSrsVideoEq:I

.field mVideoEqSlideParam:Ljava/lang/String;

.field private srsEqHeadsetCB:Landroid/content/BroadcastReceiver;

.field private srsEqHeadsetHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SrsSettings;->UseHeadphones:Z

    new-instance v0, Lcom/android/settings/SrsSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SrsSettings$1;-><init>(Lcom/android/settings/SrsSettings;)V

    iput-object v0, p0, Lcom/android/settings/SrsSettings;->srsEqHeadsetHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/SrsSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SrsSettings$2;-><init>(Lcom/android/settings/SrsSettings;)V

    iput-object v0, p0, Lcom/android/settings/SrsSettings;->srsEqHeadsetCB:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SrsSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SrsSettings;->eqSliderPull()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/SrsSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SrsSettings;->updateSrsMusicEqSet()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/SrsSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SrsSettings;->updateSrsMusicEqDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/SrsSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SrsSettings;->updateSrsVideoEqSet()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/SrsSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SrsSettings;->updateSrsVideoEqDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/SrsSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SrsSettings;->srsEqHeadsetHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private eqSliderPull()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-boolean v5, p0, Lcom/android/settings/SrsSettings;->UseHeadphones:Z

    if-nez v5, :cond_1

    const-string v5, "srs_mus_geq_int:geq_preset"

    iput-object v5, p0, Lcom/android/settings/SrsSettings;->mMusicEqSlideParam:Ljava/lang/String;

    const-string v5, "srs_mov_geq_int:geq_preset"

    iput-object v5, p0, Lcom/android/settings/SrsSettings;->mVideoEqSlideParam:Ljava/lang/String;

    :goto_0
    const-string v5, "srs"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "srseq SrsSettings UseHeadphones="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/SrsSettings;->UseHeadphones:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/android/settings/SrsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/SrsSettings;->mMusicEqSlideParam:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/SrsSettings;->mVideoEqSlideParam:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_4

    aget-object v5, v2, v1

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string v5, "srs_mus_geq_ext:geq_preset"

    iput-object v5, p0, Lcom/android/settings/SrsSettings;->mMusicEqSlideParam:Ljava/lang/String;

    const-string v5, "srs_mov_geq_ext:geq_preset"

    iput-object v5, p0, Lcom/android/settings/SrsSettings;->mVideoEqSlideParam:Ljava/lang/String;

    goto :goto_0

    :cond_2
    aget-object v5, v3, v8

    iget-object v6, p0, Lcom/android/settings/SrsSettings;->mMusicEqSlideParam:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    aget-object v5, v3, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/settings/SrsSettings;->mSrsMusicEq:I

    :cond_3
    aget-object v5, v3, v8

    iget-object v6, p0, Lcom/android/settings/SrsSettings;->mVideoEqSlideParam:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object v5, v3, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/settings/SrsSettings;->mSrsVideoEq:I

    goto :goto_2

    :cond_4
    return-void
.end method

.method private updateSrsMusicEqDialog()V
    .locals 5

    iget-object v3, p0, Lcom/android/settings/SrsSettings;->mSrsMusicEQPref:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SrsSettings;->mSrsMusicEQPref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/SrsSettings;->mSrsMusicEQPref:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method private updateSrsMusicEqSet()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/SrsSettings;->mSrsMusicEQPref:Landroid/preference/ListPreference;

    iget v1, p0, Lcom/android/settings/SrsSettings;->mSrsMusicEq:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/SrsSettings;->mSrsMusicEQPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/SrsSettings;->mSrsMusicEQPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSrsVideoEqDialog()V
    .locals 5

    iget-object v3, p0, Lcom/android/settings/SrsSettings;->mSrsVideoEQPref:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SrsSettings;->mSrsVideoEQPref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/SrsSettings;->mSrsVideoEQPref:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method private updateSrsVideoEqSet()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/SrsSettings;->mSrsVideoEQPref:Landroid/preference/ListPreference;

    iget v1, p0, Lcom/android/settings/SrsSettings;->mSrsVideoEq:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/SrsSettings;->mSrsVideoEQPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/SrsSettings;->mSrsVideoEQPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v5, 0x7f06003c

    invoke-virtual {p0, v5}, Lcom/android/settings/SrsSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/SrsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/SrsSettings;->srsEqHeadsetCB:Landroid/content/BroadcastReceiver;

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8, v9}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/SrsSettings;->eqSliderPull()V

    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/android/settings/SrsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v5, "srs_cfg:trumedia_enable"

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "srs_cfg:trumedia_preset=0"

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const-string v5, "srs"

    const-string v8, "srseq SrsSettings onCreate"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_3

    aget-object v5, v2, v1

    const-string v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    const/4 v8, 0x2

    if-ge v5, v8, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    aget-object v5, v3, v6

    const-string v8, "srs_cfg:trumedia_enable"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object v5, v3, v7

    const-string v8, "0"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lcom/android/settings/SrsSettings;->UseSoundEnh:Z

    goto :goto_1

    :cond_2
    move v5, v7

    goto :goto_2

    :cond_3
    const-string v5, "srs_musiceq_effect"

    invoke-virtual {p0, v5}, Lcom/android/settings/SrsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/SrsSettings;->mSrsMusicEQPref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/SrsSettings;->mSrsMusicEQPref:Landroid/preference/ListPreference;

    iget v7, p0, Lcom/android/settings/SrsSettings;->mSrsMusicEq:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/SrsSettings;->mSrsMusicEQPref:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "srs_videoeq_effect"

    invoke-virtual {p0, v5}, Lcom/android/settings/SrsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/SrsSettings;->mSrsVideoEQPref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/SrsSettings;->mSrsVideoEQPref:Landroid/preference/ListPreference;

    iget v7, p0, Lcom/android/settings/SrsSettings;->mSrsVideoEq:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/SrsSettings;->mSrsVideoEQPref:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "usesrssoundenh"

    invoke-virtual {p0, v5}, Lcom/android/settings/SrsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/SrsSettings;->mSrsSoundSet:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/SrsSettings;->mSrsSoundSet:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    iget-object v5, p0, Lcom/android/settings/SrsSettings;->mSrsSoundSet:Landroid/preference/CheckBoxPreference;

    iget-boolean v6, p0, Lcom/android/settings/SrsSettings;->UseSoundEnh:Z

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/SrsSettings;->mSrsSoundSet:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "srs"

    const-string v1, "srseq SrsSettings onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SrsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SrsSettings;->srsEqHeadsetCB:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "srs_musiceq_effect"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/SrsSettings;->mSrsMusicEq:I

    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/settings/SrsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "srs_mus_geq_int:geq_preset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/SrsSettings;->mSrsMusicEq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "srs_mus_geq_ext:geq_preset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/SrsSettings;->mSrsMusicEq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/SrsSettings;->updateSrsMusicEqSet()V

    const-string v2, "srs"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srseq onPreferenceChange KEY_SRS_MUSICEQ mSrsMusicEq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/SrsSettings;->mSrsMusicEq:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "srs"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srseq onPreferenceChange KEY_SRS_MUSICEQ mMusicEqSlideParam="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/SrsSettings;->mMusicEqSlideParam:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_1
    const-string v2, "srs_videoeq_effect"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/SrsSettings;->mSrsVideoEq:I

    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/settings/SrsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "srs_mov_geq_int:geq_preset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/SrsSettings;->mSrsVideoEq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "srs_mov_geq_ext:geq_preset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/SrsSettings;->mSrsVideoEq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/SrsSettings;->updateSrsVideoEqSet()V

    const-string v2, "srs"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srseq onPreferenceChange KEY_SRS_VIDEOEQ mSrsVideoEq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/SrsSettings;->mSrsVideoEq:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "srs"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srseq onPreferenceChange KEY_SRS_VIDEOEQ mVideoEqSlideParam="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/SrsSettings;->mVideoEqSlideParam:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    iget-object v2, p0, Lcom/android/settings/SrsSettings;->mSrsSoundSet:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/SrsSettings;->UseSoundEnh:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/SrsSettings;->UseSoundEnh:Z

    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/settings/SrsSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "srs_cfg:trumedia_enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, p0, Lcom/android/settings/SrsSettings;->UseSoundEnh:Z

    if-eqz v2, :cond_2

    const-string v2, "1"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/SrsSettings;->mSrsSoundSet:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/settings/SrsSettings;->UseSoundEnh:Z

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.srs.updatenotification"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/SrsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "0"

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method
