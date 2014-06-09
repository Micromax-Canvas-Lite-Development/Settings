.class public Lcom/mediatek/audioprofile/Editprofile;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Editprofile.java"


# static fields
.field public static final KEY_CATEGORY_NOTIFICATION:Ljava/lang/String; = "notifications"

.field public static final KEY_CATEGORY_RINGTONE:Ljava/lang/String; = "ringtone"

.field public static final KEY_DTMF_TONE:Ljava/lang/String; = "audible_touch_tones"

.field public static final KEY_HAPTIC_FEEDBACK:Ljava/lang/String; = "haptic_feedback"

.field public static final KEY_LOCK_SOUNDS:Ljava/lang/String; = "screen_lock_sounds"

.field public static final KEY_NOTIFY:Ljava/lang/String; = "notifications_ringtone"

.field public static final KEY_RINGTONE:Ljava/lang/String; = "phone_ringtone"

.field public static final KEY_SOUND_EFFECTS:Ljava/lang/String; = "audible_selection"

.field public static final KEY_VIBRATE:Ljava/lang/String; = "phone_vibrate"

.field public static final KEY_VIDEO_RINGTONE:Ljava/lang/String; = "video_call_ringtone"

.field public static final KEY_VOLUME:Ljava/lang/String; = "ring_volume"

.field private static final TAG:Ljava/lang/String; = "Settings/EditProfile"


# instance fields
.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mCurOrientation:I

.field private mDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mIsSilentMode:Z

.field private mKey:Ljava/lang/String;

.field private mLockSounds:Landroid/preference/CheckBoxPreference;

.field private mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private mSettingsCursor:Landroid/database/Cursor;

.field private mSettingsObserver:Ljava/util/Observer;

.field private mSoundEffects:Landroid/preference/CheckBoxPreference;

.field private mTeleManager:Landroid/telephony/TelephonyManager;

.field private mVibrat:Landroid/preference/CheckBoxPreference;

.field private mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/audioprofile/Editprofile;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/audioprofile/Editprofile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/audioprofile/Editprofile;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/Editprofile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private initPreference()V
    .locals 8

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/Editprofile;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v6, "phone_vibrate"

    invoke-virtual {p0, v6}, Lcom/mediatek/audioprofile/Editprofile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;

    const-string v6, "audible_touch_tones"

    invoke-virtual {p0, v6}, Lcom/mediatek/audioprofile/Editprofile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const-string v6, "audible_selection"

    invoke-virtual {p0, v6}, Lcom/mediatek/audioprofile/Editprofile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const-string v6, "screen_lock_sounds"

    invoke-virtual {p0, v6}, Lcom/mediatek/audioprofile/Editprofile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    const-string v6, "haptic_feedback"

    invoke-virtual {p0, v6}, Lcom/mediatek/audioprofile/Editprofile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    const-string v6, "ring_volume"

    invoke-virtual {p0, v6}, Lcom/mediatek/audioprofile/Editprofile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/mediatek/audioprofile/RingerVolumePreference;

    iput-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;

    const-string v6, "ringtone"

    invoke-virtual {p0, v6}, Lcom/mediatek/audioprofile/Editprofile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    const-string v6, "notifications"

    invoke-virtual {p0, v6}, Lcom/mediatek/audioprofile/Editprofile;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    const-string v6, "notifications_ringtone"

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    iget-boolean v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mIsSilentMode:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;

    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/mediatek/audioprofile/RingerVolumePreference;->setProfile(Ljava/lang/String;)V

    :cond_2
    if-eqz v0, :cond_3

    const-string v6, "NOTIFICATION"

    invoke-virtual {v0, v6}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setStreamType(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setProfile(Ljava/lang/String;)V

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setRingtoneType(I)V

    :cond_3
    invoke-direct {p0}, Lcom/mediatek/audioprofile/Editprofile;->isVoiceCapable()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "phone_ringtone"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    const-string v6, "video_call_ringtone"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    if-eqz v5, :cond_4

    const-string v6, "RING"

    invoke-virtual {v5, v6}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setStreamType(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setProfile(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setRingtoneType(I)V

    :cond_4
    if-eqz v4, :cond_0

    const-string v6, "RING"

    invoke-virtual {v4, v6}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setStreamType(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setProfile(Ljava/lang/String;)V

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setRingtoneType(I)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/mediatek/audioprofile/Editprofile;->isSmsCapable()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    iget-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private isSmsCapable()Z
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoiceCapable()Z
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePreference()V
    .locals 3

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDtmfToneEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getSoundEffectEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getLockScreenEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getHapticFeedbackEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "Settings/EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mCurOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mCurOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mCurOrientation:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mCurOrientation:I

    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/Editprofile;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearScrapViewsIfNeeded()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x7f06001a

    invoke-virtual {p0, v4}, Lcom/mediatek/audioprofile/Editprofile;->addPreferencesFromResource(I)V

    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/mediatek/audioprofile/Editprofile;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/Editprofile;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    const-string v0, "mtk_audioprofile_general"

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    const-string v4, "audioprofile"

    invoke-virtual {p0, v4}, Lcom/mediatek/audioprofile/Editprofile;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v2

    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v4}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mIsSilentMode:Z

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/Editprofile;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mCurOrientation:I

    invoke-direct {p0}, Lcom/mediatek/audioprofile/Editprofile;->initPreference()V

    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string v0, "Settings/EditProfile"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;

    if-eqz v0, :cond_0

    const-string v0, "Settings/EditProfile"

    const-string v1, "pref is not null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/RingerVolumePreference;->stopPlaying()V

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/RingerVolumePreference;->revertVolume()V

    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    :cond_1
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    :cond_2
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "phone_vibrate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const-string v1, "Settings/EditProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set vibrate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/audioprofile/AudioProfileManager;->setVibrationEnabled(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "audible_touch_tones"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setDtmfToneEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "audible_selection"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setSoundEffectEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "screen_lock_sounds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setLockScreenEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "haptic_feedback"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setHapticFeedbackEnabled(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/mediatek/audioprofile/Editprofile;->updatePreference()V

    iget-boolean v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mIsSilentMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mediatek/audioprofile/Editprofile$1;

    invoke-direct {v0, p0}, Lcom/mediatek/audioprofile/Editprofile$1;-><init>(Lcom/mediatek/audioprofile/Editprofile;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/Editprofile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    new-instance v0, Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    const-string v3, "name"

    invoke-direct {v0, v1, v3, v7, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mContentQueryMap:Landroid/content/ContentQueryMap;

    return-void
.end method
