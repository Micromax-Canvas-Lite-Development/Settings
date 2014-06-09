.class public Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VoiceUiAvailableLanguageFragment.java"


# static fields
.field private static final SUCCESS_RESULT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VoiceUiAvailableLanguageFragment"

.field private static final VOICE_CONTROL_DEFAULT_LANGUAGE:Ljava/lang/String; = "voice_control_default_language"

.field private static final VOICE_UI_SUPPORT_LANGUAGES:Ljava/lang/String; = "voice_ui_support_languages"


# instance fields
.field private mAvailableLangs:[Ljava/lang/String;

.field private mDefaultLanguage:I

.field private mLanguagePreList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/voicesettings/RadioButtonPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSelectedPref:Lcom/mediatek/voicesettings/RadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;->mLanguagePreList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;->mDefaultLanguage:I

    return-void
.end method

.method private getLanguage()Ljava/lang/String;
    .locals 2

    const-string v0, "VoiceUiAvailableLanguageFragment"

    const-string v1, "Get Language"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private selectLanguage(Lcom/mediatek/voicesettings/RadioButtonPreference;)V
    .locals 2

    iget-object v0, p0, Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;->mLastSelectedPref:Lcom/mediatek/voicesettings/RadioButtonPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;->mLastSelectedPref:Lcom/mediatek/voicesettings/RadioButtonPreference;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;->mLastSelectedPref:Lcom/mediatek/voicesettings/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/voicesettings/RadioButtonPreference;->setChecked(Z)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mediatek/voicesettings/RadioButtonPreference;->setChecked(Z)V

    invoke-virtual {p1}, Lcom/mediatek/voicesettings/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;->mDefaultLanguage:I

    iput-object p1, p0, Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;->mLastSelectedPref:Lcom/mediatek/voicesettings/RadioButtonPreference;

    goto :goto_0
.end method

.method private setLanguage(Ljava/lang/String;)V
    .locals 3

    const-string v0, "VoiceUiAvailableLanguageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Language: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v5, 0x1

    const-string v6, "VoiceUiAvailableLanguageFragment"

    const-string v7, "OnCreate VoiceUiAvailableLanguageFragment"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v6, 0x7f060048

    invoke-virtual {p0, v6}, Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_0
    move v4, v5

    :goto_0
    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, ":android:show_fragment_args"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    const-string v6, "voice_ui_support_languages"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;->mAvailableLangs:[Ljava/lang/String;

    const-string v6, "voice_control_default_language"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;->mDefaultLanguage:I

    :cond_1
    const-string v6, "VoiceUiAvailableLanguageFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "voice ui deafult language: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;->mAvailableLangs:[Ljava/lang/String;

    iget v9, p0, Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;->mDefaultLanguage:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "VoiceUiAvailableLanguageFragment"

    iget-object v7, p0, Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;->mAvailableLangs:[Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_2
    iget-object v6, p0, Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;->mAvailableLangs:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_5

    new-instance v3, Lcom/mediatek/voicesettings/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;->mAvailableLangs:[Ljava/lang/String;

    aget-object v7, v7, v1

    const-string v8, ""

    invoke-direct {v3, v6, v7, v8}, Lcom/mediatek/voicesettings/RadioButtonPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/mediatek/voicesettings/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    const-string v6, "VoiceUiAvailableLanguageFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "available["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;->mAvailableLangs:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;->mDefaultLanguage:I

    if-ne v6, v1, :cond_2

    invoke-virtual {v3, v5}, Lcom/mediatek/voicesettings/RadioButtonPreference;->setChecked(Z)V

    iput-object v3, p0, Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;->mLastSelectedPref:Lcom/mediatek/voicesettings/RadioButtonPreference;

    :cond_2
    iget-object v6, p0, Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;->mLanguagePreList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v5, 0x1

    instance-of v1, p2, Lcom/mediatek/voicesettings/RadioButtonPreference;

    if-eqz v1, :cond_0

    check-cast p2, Lcom/mediatek/voicesettings/RadioButtonPreference;

    invoke-direct {p0, p2}, Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;->selectLanguage(Lcom/mediatek/voicesettings/RadioButtonPreference;)V

    const-string v1, "VoiceUiAvailableLanguageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default language changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;->mAvailableLangs:[Ljava/lang/String;

    iget v4, p0, Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;->mDefaultLanguage:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "voice_control_default_language"

    iget v2, p0, Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;->mDefaultLanguage:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/mediatek/voicesettings/VoiceUiAvailableLanguageFragment;->finishFragment()V

    :cond_0
    return v5
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method
