.class public Lcom/mediatek/gemini/SimListEntrance;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SimListEntrance.java"


# static fields
.field public static final APN_SETTING_INDEX:I = 0x2

.field public static final PIN_SETTING_INDEX:I = 0x0

.field public static final SIM_CONTACTS_SETTING_INDEX:I = 0x3

.field public static final SIM_STATUS_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SimListEntrance"

.field private static final TARGETCLASSLIST:[Ljava/lang/String;

.field private static final TWO_SIMCARD:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mTargetClassIndex:I

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.settings.IccLockSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.settings.deviceinfo.SimStatusGemini"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.settings.ApnSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.mediatek.gemini.GeminiSIMTetherInfo"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/gemini/SimListEntrance;->TARGETCLASSLIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/gemini/SimListEntrance;->mTargetClassIndex:I

    new-instance v0, Lcom/mediatek/gemini/SimListEntrance$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/SimListEntrance$1;-><init>(Lcom/mediatek/gemini/SimListEntrance;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimListEntrance;->mSimReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gemini/SimListEntrance;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/gemini/SimListEntrance;->addSimInfoPreference()V

    return-void
.end method

.method private addSimInfoPreference()V
    .locals 19

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/gemini/SimListEntrance;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    if-eqz v15, :cond_3

    invoke-virtual {v15}, Landroid/preference/PreferenceScreen;->removeAll()V

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/gemini/SimListEntrance;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    const-string v2, "SimListEntrance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "there are simNum "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sim card inserted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v17, :cond_1

    const-string v2, "SimListEntrance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hot swap_simList.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/gemini/SimListEntrance;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/Settings;

    invoke-direct {v14, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v14, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/mediatek/gemini/SimListEntrance;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    new-instance v2, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;

    invoke-direct {v2}, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;-><init>()V

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/provider/Telephony$SIMInfo;

    const/4 v6, 0x6

    new-instance v1, Lcom/mediatek/gemini/SimInfoPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/gemini/SimListEntrance;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    move-object/from16 v0, v18

    iget v5, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    move-object/from16 v0, v18

    iget v7, v0, Landroid/provider/Telephony$SIMInfo;->mColor:I

    move-object/from16 v0, v18

    iget v8, v0, Landroid/provider/Telephony$SIMInfo;->mDispalyNumberFormat:I

    move-object/from16 v0, v18

    iget-wide v9, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/mediatek/gemini/SimInfoPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIJZZ)V

    invoke-virtual {v15, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/gemini/SimListEntrance;->mTargetClassIndex:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f060035

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimListEntrance;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimListEntrance;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "type"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/gemini/SimListEntrance;->mTargetClassIndex:I

    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimListEntrance;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget v2, p0, Lcom/mediatek/gemini/SimListEntrance;->mTargetClassIndex:I

    if-gez v2, :cond_1

    const-string v2, "SimListEntrance"

    const-string v3, "target class index is wrong"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/SimListEntrance;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    return-void

    :cond_1
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mediatek/gemini/SimListEntrance;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/mediatek/gemini/SimListEntrance;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_NAME_UPDATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimListEntrance;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/gemini/SimListEntrance;->mSimReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/mediatek/gemini/SimListEntrance;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/mediatek/gemini/SimListEntrance;->addSimInfoPreference()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    iget v0, p0, Lcom/mediatek/gemini/SimListEntrance;->mTargetClassIndex:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimListEntrance;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/SimListEntrance;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    sget-object v4, Lcom/mediatek/gemini/SimListEntrance;->TARGETCLASSLIST:[Ljava/lang/String;

    iget v5, p0, Lcom/mediatek/gemini/SimListEntrance;->mTargetClassIndex:I

    aget-object v4, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v3, p0, Lcom/mediatek/gemini/SimListEntrance;->mTargetClassIndex:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    const-string v3, "simid"

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimListEntrance;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return v6

    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimListEntrance;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v2

    if-ltz v2, :cond_0

    const-string v3, "slotid"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v1, p0, Lcom/mediatek/gemini/SimListEntrance;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/gemini/SimListEntrance;->mTelephony:Lcom/android/internal/telephony/ITelephony;

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

    const-string v1, "SimListEntrance"

    const-string v2, "mTelephony exception"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
