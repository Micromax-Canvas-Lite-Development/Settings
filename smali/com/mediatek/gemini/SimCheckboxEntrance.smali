.class public Lcom/mediatek/gemini/SimCheckboxEntrance;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SimCheckboxEntrance.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SimCheckboxEntrance"


# instance fields
.field private mDisableWhenRadioOff:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field protected mSimList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mDisableWhenRadioOff:Z

    new-instance v0, Lcom/mediatek/gemini/SimCheckboxEntrance$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/SimCheckboxEntrance$1;-><init>(Lcom/mediatek/gemini/SimCheckboxEntrance;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gemini/SimCheckboxEntrance;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimCheckboxEntrance;->updateSimState(II)V

    return-void
.end method

.method private getSimIndicator(I)I
    .locals 6

    const/4 v2, -0x1

    const-string v3, "SimCheckboxEntrance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimIndicator---slotId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v3, "SimCheckboxEntrance"

    const-string v4, "RemoteException"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v3, "SimCheckboxEntrance"

    const-string v4, "NullPointerException"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateSimState(II)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-wide v5, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimCheckboxEntrance;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gemini/SimInfoPreference;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p2}, Lcom/mediatek/gemini/SimInfoPreference;->setStatus(I)V

    iget-boolean v2, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mDisableWhenRadioOff:Z

    if-eqz v2, :cond_2

    if-ne p2, v4, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/mediatek/gemini/SimInfoPreference;->setEnabled(Z)V

    const-string v2, "SimCheckboxEntrance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simInfoPref.setEnabled(); "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ne p2, v4, :cond_4

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v2, "SimCheckboxEntrance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSimState of sim "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_2
.end method


# virtual methods
.method protected addSimInfoPreference()V
    .locals 19

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    if-nez v17, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceScreen;->removeAll()V

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimList:Ljava/util/List;

    new-instance v4, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;

    invoke-direct {v4}, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "SimCheckboxEntrance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hot swap_mSimList.size()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v16, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/settings/Settings;

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x4000000

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/SimCheckboxEntrance;->startActivity(Landroid/content/Intent;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimList:Ljava/util/List;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_3
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/provider/Telephony$SIMInfo;

    move-object/from16 v0, v18

    iget v3, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/gemini/SimCheckboxEntrance;->getSimIndicator(I)I

    move-result v7

    new-instance v2, Lcom/mediatek/gemini/SimInfoPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    move-object/from16 v0, v18

    iget v6, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    move-object/from16 v0, v18

    iget v8, v0, Landroid/provider/Telephony$SIMInfo;->mColor:I

    move-object/from16 v0, v18

    iget v9, v0, Landroid/provider/Telephony$SIMInfo;->mDispalyNumberFormat:I

    move-object/from16 v0, v18

    iget-wide v10, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct/range {v2 .. v14}, Lcom/mediatek/gemini/SimInfoPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIJZZZ)V

    const-string v3, "SimCheckboxEntrance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state of sim "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-wide v5, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/gemini/SimCheckboxEntrance;->updateCheckState(Lcom/mediatek/gemini/SimInfoPreference;Landroid/provider/Telephony$SIMInfo;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mDisableWhenRadioOff:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    if-ne v7, v3, :cond_5

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/SimInfoPreference;->setEnabled(Z)V

    const-string v4, "SimCheckboxEntrance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "simInfoPref.setEnabled(); "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v3, 0x1

    if-ne v7, v3, :cond_6

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f060034

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimCheckboxEntrance;->addPreferencesFromResource(I)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_NAME_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;->shouldDisableWhenRadioOff()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mDisableWhenRadioOff:Z

    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;->addSimInfoPreference()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v1, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->get3GCapabilitySIM()I

    move-result v1

    sput v1, Lcom/mediatek/gemini/GeminiUtils;->sG3SlotID:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SimCheckboxEntrance"

    const-string v2, "mTelephony exception"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void
.end method

.method protected shouldDisableWhenRadioOff()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updateCheckState(Lcom/mediatek/gemini/SimInfoPreference;Landroid/provider/Telephony$SIMInfo;)V
    .locals 0

    return-void
.end method
