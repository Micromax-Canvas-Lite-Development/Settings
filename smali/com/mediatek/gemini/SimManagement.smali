.class public Lcom/mediatek/gemini/SimManagement;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SimManagement.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/mediatek/gemini/SimInfoEnablePreference$OnPreferenceClickCallback;


# static fields
.field private static final ALL_RADIO_OFF:I = 0x0

.field private static final ALL_RADIO_ON:I = 0x3

.field private static final ATTACH_DATA_CONN_TIME_OUT:I = 0x7530

.field private static final DATA_3G_SWITCH_TIME_OUT_MSG:I = 0x7d2

.field private static final DATA_SWITCH_TIME_OUT_MSG:I = 0x7d0

.field private static final DETACH_DATA_CONN_TIME_OUT:I = 0x2710

.field private static final DIALOG_3G_MODEM_SWITCH_CONFIRM:I = 0x3e9

.field private static final DIALOG_GPRS_SWITCH_CONFIRM:I = 0x3ea

.field private static final DIALOG_NOT_REMOVE_TIME_OUT:I = 0x3e8

.field private static final DIALOG_NOT_SHOW_SUCCESS_MSG:I = 0x7d1

.field private static final EVENT_DUAL_SIM_MODE_CHANGED_COMPLETE:I = 0x1

.field private static final KEY_3G_SERVICE_SETTING:Ljava/lang/String; = "3g_service_settings"

.field private static final KEY_DEFAULT_SIM_SETTINGS_CATEGORY:Ljava/lang/String; = "default_sim"

.field private static final KEY_GENERAL_SETTINGS_CATEGORY:Ljava/lang/String; = "general_settings"

.field private static final KEY_GPRS_SIM_SETTING:Ljava/lang/String; = "gprs_sim_setting"

.field private static final KEY_SIM_CONTACTS_SETTINGS:Ljava/lang/String; = "contacts_sim"

.field private static final KEY_SIM_INFO_CATEGORY:Ljava/lang/String; = "sim_info"

.field private static final KEY_SMS_SIM_SETTING:Ljava/lang/String; = "sms_sim_setting"

.field private static final KEY_VIDEO_CALL_SIM_SETTING:Ljava/lang/String; = "video_call_sim_setting"

.field private static final KEY_VOICE_CALL_SIM_SETTING:Ljava/lang/String; = "voice_call_sim_setting"

.field private static final PROGRESS_DIALOG:I = 0x3e8

.field private static final SIM_SLOT_1_RADIO_ON:I = 0x1

.field private static final SIM_SLOT_2_RADIO_ON:I = 0x2

.field private static final SWITCH_3G_TIME_OUT:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "SimManagementSettings"

.field private static final TRANSACTION_START:Ljava/lang/String; = "com.android.mms.transaction.START"

.field private static final TRANSACTION_STOP:Ljava/lang/String; = "com.android.mms.transaction.STOP"

.field private static final VIDEO_CALL_OFF:I = -0x1

.field private static sIsVoipAvailable:Z

.field private static sVTCallSupport:Z


# instance fields
.field private mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mConnService:Landroid/net/ConnectivityManager;

.field private mDataSwitchMsgIndex:I

.field private mExt:Lcom/android/settings/ext/ISimManagementExt;

.field private mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

.field private mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIs3gOff:Z

.field private mIsDataConnectActing:Z

.field private mIsSIMRadioSwitching:Z

.field private mIsSlot1Insert:Z

.field private mIsSlot2Insert:Z

.field private mIsSmsCapable:Z

.field private mIsVoiceCapable:Z

.field private mProDlgMsgId:I

.field private mRemoveProgDlg:Z

.field private mSelectedGprsSimId:J

.field private mSelectedVideoSimId:J

.field private mSimAndContacts:Landroid/preference/PreferenceScreen;

.field private mSimItemListGprs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/gemini/SimItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSimItemListSms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/gemini/SimItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSimItemListVideo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/gemini/SimItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSimItemListVoice:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/gemini/SimItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSimNum:I

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mSiminfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

.field private mSwitchRadioStateMsg:Landroid/os/Messenger;

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTimerHandler:Landroid/os/Handler;

.field private mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

.field private mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    sput-boolean v0, Lcom/mediatek/gemini/SimManagement;->sIsVoipAvailable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z

    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsSlot1Insert:Z

    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsSlot2Insert:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVideo:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListSms:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListGprs:Ljava/util/List;

    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    iput v2, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsSmsCapable:Z

    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z

    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mRemoveProgDlg:Z

    iput v2, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    new-instance v0, Lcom/mediatek/gemini/SimManagement$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/gemini/SimManagement$1;-><init>(Lcom/mediatek/gemini/SimManagement;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/mediatek/gemini/SimManagement$2;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/SimManagement$2;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mTimerHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/mediatek/gemini/SimManagement$3;

    invoke-direct {v1, p0}, Lcom/mediatek/gemini/SimManagement$3;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSwitchRadioStateMsg:Landroid/os/Messenger;

    new-instance v0, Lcom/mediatek/gemini/SimManagement$4;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/SimManagement$4;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updateDataConnPrefe()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->removeProgDlg()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/gemini/SimManagement;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    sget-boolean v0, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/gemini/SimManagement;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/gemini/SimManagement;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    return v0
.end method

.method static synthetic access$1400(Lcom/mediatek/gemini/SimManagement;)Lcom/mediatek/gemini/DefaultSimPreference;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/gemini/SimManagement;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mTimerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    invoke-static {p0}, Lcom/mediatek/gemini/SimManagement;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/gemini/SimManagement;)Lcom/android/settings/ext/ISimManagementExt;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/android/settings/ext/ISimManagementExt;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/gemini/SimManagement;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/mediatek/gemini/SimManagement;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/mediatek/gemini/SimManagement;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->switchSimRadioState(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/gemini/SimManagement;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/mediatek/gemini/SimManagement;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/gemini/SimManagement;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/mediatek/gemini/SimManagement;)J
    .locals 2

    iget-wide v0, p0, Lcom/mediatek/gemini/SimManagement;->mSelectedGprsSimId:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/mediatek/gemini/SimManagement;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->enableDataRoaming(J)V

    return-void
.end method

.method static synthetic access$2300(Lcom/mediatek/gemini/SimManagement;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->switchGprsDefautlSIM(J)V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/gemini/SimManagement;)J
    .locals 2

    iget-wide v0, p0, Lcom/mediatek/gemini/SimManagement;->mSelectedVideoSimId:J

    return-wide v0
.end method

.method static synthetic access$2500(Lcom/mediatek/gemini/SimManagement;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->switchVideoCallDefaultSIM(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->dealWithSwtichComplete()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/gemini/SimManagement;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/gemini/SimManagement;->setStatusBarEnableStatus(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updateVideoCallDefaultSIM()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->getSimInfo()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updatePreferenceUI()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/gemini/SimManagement;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/gemini/SimManagement;->dealDlgOnAirplaneMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/gemini/SimManagement;)Lcom/mediatek/gemini/DefaultSimPreference;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    return-object v0
.end method

.method private addSimInfoPreference()V
    .locals 18

    const-string v3, "SimManagementSettings"

    const-string v4, "addSimInfoPreference()"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "sim_info"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceGroup;

    invoke-virtual/range {v16 .. v16}, Landroid/preference/PreferenceGroup;->removeAll()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/provider/Telephony$SIMInfo;

    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "siminfo.mDisplayName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "siminfo.mNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "siminfo.mSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget v5, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "siminfo.mColor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget v5, v0, Landroid/provider/Telephony$SIMInfo;->mColor:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "siminfo.mDispalyNumberFormat = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget v5, v0, Landroid/provider/Telephony$SIMInfo;->mDispalyNumberFormat:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "siminfo.mSimId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-wide v5, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/gemini/SimManagement;->getSimIndicator(I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v12, 0x1

    :goto_1
    new-instance v2, Lcom/mediatek/gemini/SimInfoEnablePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    move-object/from16 v0, v17

    iget v6, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    move-object/from16 v0, v17

    iget v8, v0, Landroid/provider/Telephony$SIMInfo;->mColor:I

    move-object/from16 v0, v17

    iget v9, v0, Landroid/provider/Telephony$SIMInfo;->mDispalyNumberFormat:I

    move-object/from16 v0, v17

    iget-wide v10, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-direct/range {v2 .. v12}, Lcom/mediatek/gemini/SimInfoEnablePreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIJZ)V

    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "simid status is  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/mediatek/gemini/SimInfoEnablePreference;->setClickCallback(Lcom/mediatek/gemini/SimInfoEnablePreference$OnPreferenceClickCallback;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v3, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    move-object/from16 v0, v17

    iget v4, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/ITelephony;->isRadioOnGemini(I)Z

    move-result v15

    invoke-virtual {v2, v15}, Lcom/mediatek/gemini/SimInfoEnablePreference;->setCheck(Z)V

    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim card "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget v5, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " radio state is isRadioOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    new-instance v3, Lcom/mediatek/gemini/SimManagement$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1, v2}, Lcom/mediatek/gemini/SimManagement$5;-><init>(Lcom/mediatek/gemini/SimManagement;Landroid/provider/Telephony$SIMInfo;Lcom/mediatek/gemini/SimInfoEnablePreference;)V

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/SimInfoEnablePreference;->setCheckBoxClickListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v13

    const-string v3, "SimManagementSettings"

    const-string v4, "mTelephony exception"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    return-void
.end method

.method private current3GSlotId()I
    .locals 4

    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->get3GCapabilitySIM()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "SimManagementSettings"

    const-string v3, "mTelephony exception"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dataSwitchConfirmDlgMsg(J)I
    .locals 8

    const v4, 0x7f08010a

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->findSIMInfoBySimId(J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    iget v5, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v3, v5}, Lcom/mediatek/telephony/TelephonyManagerEx;->isNetworkRoaming(I)Z

    move-result v0

    iget v5, v2, Landroid/provider/Telephony$SIMInfo;->mDataRoaming:I

    if-ne v5, v1, :cond_1

    :goto_0
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isInRoaming="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isRoamingDataAllowed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5

    if-nez v1, :cond_3

    iget v4, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->current3GSlotId()I

    move-result v5

    if-eq v4, v5, :cond_2

    const v4, 0x7f08010c

    :cond_0
    :goto_1
    return v4

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const v4, 0x7f080109

    goto :goto_1

    :cond_3
    iget v5, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->current3GSlotId()I

    move-result v6

    if-ne v5, v6, :cond_0

    :cond_4
    const/4 v4, -0x1

    goto :goto_1

    :cond_5
    iget v5, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->current3GSlotId()I

    move-result v6

    if-eq v5, v6, :cond_4

    goto :goto_1
.end method

.method private dealDialogOnResume()V
    .locals 5

    const/16 v4, 0x3ea

    const/16 v3, 0x3e9

    const-string v0, "SimManagementSettings"

    const-string v1, "dealDialogOnResume"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mRemoveProgDlg:Z

    if-eqz v0, :cond_0

    const-string v0, "SimManagementSettings"

    const-string v1, "on resume to remove dialog"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimManagement;->removeDialog(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mRemoveProgDlg:Z

    :cond_0
    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRemoveProgDlg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mRemoveProgDlg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/mediatek/gemini/SimManagement;->isDialogShowing(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/mediatek/gemini/SimManagement;->removeDialog(I)V

    :cond_1
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v4}, Lcom/mediatek/gemini/SimManagement;->isDialogShowing(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v4}, Lcom/mediatek/gemini/SimManagement;->removeDialog(I)V

    :cond_2
    return-void
.end method

.method private dealDlgOnAirplaneMode(Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x3ea

    const/16 v2, 0x3e9

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SimManagementSettings"

    const-string v1, "dealDlgOnAirplaneMode"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->isDialogShowing(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->removeDialog(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v3}, Lcom/mediatek/gemini/SimManagement;->isDialogShowing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/mediatek/gemini/SimManagement;->removeDialog(I)V

    goto :goto_0
.end method

.method private dealWithSwtichComplete()V
    .locals 4

    const-string v0, "SimManagementSettings"

    const-string v1, "dealWithSwtichComplete()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsSIMModeSwitching is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    if-nez v0, :cond_1

    const-string v0, "SimManagementSettings"

    const-string v1, "dual mode change by other not sim management"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/android/settings/ext/ISimManagementExt;

    invoke-interface {v0, p0}, Lcom/android/settings/ext/ISimManagementExt;->showChangeDataConnDialog(Landroid/preference/PreferenceFragment;)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimManagement;->isDialogShowing(I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SimManagementSettings"

    const-string v1, "Dialog is not show yet but dual sim modechange has sent msg"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mTimerHandler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->removeProgDlg()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    goto :goto_0
.end method

.method private enableDataRoaming(J)V
    .locals 5

    const/4 v4, 0x1

    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableDataRoaming with SimId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, p1, p2}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->setDataRoamingEnabledGemini(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v4, p1, p2}, Landroid/provider/Telephony$SIMInfo;->setDataRoaming(Landroid/content/Context;IJ)I

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SimManagementSettings"

    const-string v2, "mTelephony exception"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private findListPosBySimId(J)I
    .locals 6

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v4, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-le v1, v4, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->findSIMInfoBySimId(J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v3, "SimManagementSettings"

    const-string v4, "Error can not find the sim id with related siminfo"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sim card inserted and the sim is in pos with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    iget v0, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    goto :goto_0
.end method

.method private findSIMInfoBySimId(J)Landroid/provider/Telephony$SIMInfo;
    .locals 4

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    iget-wide v2, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_1
    const-string v2, "SimManagementSettings"

    const-string v3, "Error happend on findSIMInfoBySimId no siminfo find"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private findSIMInofBySlotId(I)Landroid/provider/Telephony$SIMInfo;
    .locals 4

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    iget v2, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-ne v2, p1, :cond_0

    :goto_0
    return-object v1

    :cond_1
    const-string v2, "SimManagementSettings"

    const-string v3, "Error happend on findSIMInofBySlotId no siminfo find"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDataValue(Ljava/lang/String;)J
    .locals 3

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v1, -0x5

    invoke-static {v0, p1, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2

    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private getSIMInfoById(Ljava/lang/Long;)Landroid/provider/Telephony$SIMInfo;
    .locals 6

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    iget-wide v2, v1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_1
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error there is no correct siminfo found by simid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSimIndicator(I)I
    .locals 6

    const/4 v2, -0x1

    const-string v3, "SimManagementSettings"

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
    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

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

    const-string v3, "SimManagementSettings"

    const-string v4, "RemoteException"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v3, "SimManagementSettings"

    const-string v4, "NullPointerException"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSimInfo()V
    .locals 8

    const/4 v7, 0x1

    const-string v2, "SimManagementSettings"

    const-string v3, "getSimInfo()"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "total inserted sim card ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    new-instance v3, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;

    invoke-direct {v3}, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    const-string v3, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mDisplayName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget-object v2, v2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mNumber = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget-object v2, v2, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget v1, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    iput-boolean v7, p0, Lcom/mediatek/gemini/SimManagement;->mIsSlot1Insert:Z

    :cond_0
    :goto_1
    const-string v3, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mColor = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget v2, v2, Landroid/provider/Telephony$SIMInfo;->mColor:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mDispalyNumberFormat = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget v2, v2, Landroid/provider/Telephony$SIMInfo;->mDispalyNumberFormat:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mSimId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    iget-wide v5, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    if-ne v1, v7, :cond_0

    iput-boolean v7, p0, Lcom/mediatek/gemini/SimManagement;->mIsSlot2Insert:Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private initIntentFilter()V
    .locals 2

    const-string v0, "SimManagementSettings"

    const-string v1, "initIntentFilter"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.transaction.START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.transaction.STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_NAME_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_LOCK_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_DONE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method private isGPRSEnable()Z
    .locals 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/mediatek/gemini/SimManagement;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    const-string v7, "SimManagementSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mms state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v4, v7, :cond_0

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v7, :cond_2

    :cond_0
    move v1, v6

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v2

    const-string v7, "SimManagementSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isMMSProcess="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isRadioOff="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    :goto_1
    return v6

    :cond_2
    move v1, v5

    goto :goto_0

    :cond_3
    move v6, v5

    goto :goto_1
.end method

.method private isRadioOff()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dual_sim_mode_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllRadioOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoipAvailable()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_internet_call_value"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private removeDefaultSimPref()V
    .locals 4

    const-string v2, "default_sim"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    const-string v2, "SimManagementSettings"

    const-string v3, "group != null"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    const-string v2, "general_settings"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_1

    const-string v2, "contacts_sim"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private removeProgDlg()V
    .locals 2

    const-string v0, "SimManagementSettings"

    const-string v1, "removeProgDlg()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SimManagementSettings"

    const-string v1, "Progress Dialog removed"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimManagement;->removeDialog(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "SimManagementSettings"

    const-string v1, "under onpause not enable to remove set flag as true"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mRemoveProgDlg:Z

    goto :goto_0
.end method

.method private removeUnusedPref()V
    .locals 4

    const-string v1, "SimManagementSettings"

    const-string v2, "removeUnusedPref()"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    :cond_0
    const-string v1, "default_sim"

    invoke-virtual {p0, v1}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iget-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iget-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsSmsCapable:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    sget-boolean v1, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    if-nez v1, :cond_2

    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video call is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " remove the pref"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    return-void
.end method

.method private setIconForDefaultSimPref()V
    .locals 2

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/DefaultSimPreference;->setIcon(I)V

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/DefaultSimPreference;->setIcon(I)V

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/DefaultSimPreference;->setIcon(I)V

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/DefaultSimPreference;->setIcon(I)V

    return-void
.end method

.method private setNoSimInfoUi()V
    .locals 5

    const-string v2, "sim_info"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_0

    const v2, 0x7f0800fe

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(I)V

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isVoipAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/DefaultSimPreference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish() sim management for sim hot swap as mSimNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "tablet"

    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "SimManagementSettings"

    const-string v3, "[Tablet] It is single pane, so finish it!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->finish()V

    goto :goto_0

    :cond_2
    const-string v2, "SimManagementSettings"

    const-string v3, "[Tablet] It is multi pane, so do not finish it!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->finish()V

    goto :goto_0
.end method

.method private setPreferenceProperty()V
    .locals 15

    const-string v12, "voice_call_sim_setting"

    invoke-direct {p0, v12}, Lcom/mediatek/gemini/SimManagement;->getDataValue(Ljava/lang/String;)J

    move-result-wide v10

    const-string v12, "sms_sim_setting"

    invoke-direct {p0, v12}, Lcom/mediatek/gemini/SimManagement;->getDataValue(Ljava/lang/String;)J

    move-result-wide v7

    const-string v12, "gprs_connection_sim_setting"

    invoke-direct {p0, v12}, Lcom/mediatek/gemini/SimManagement;->getDataValue(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->current3GSlotId()I

    move-result v9

    const-string v12, "SimManagementSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "voicecallID ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " smsID ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " dataconnectionID ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " videocallSlotID ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/provider/Telephony$SIMInfo;

    if-eqz v6, :cond_3

    iget-wide v12, v6, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    cmp-long v12, v12, v10

    if-nez v12, :cond_0

    iget-boolean v12, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v12, v5}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v13, v6, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    iget-wide v12, v6, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    cmp-long v12, v12, v7

    if-nez v12, :cond_1

    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v12, v5}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v13, v6, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    iget-wide v12, v6, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    cmp-long v12, v12, v0

    if-nez v12, :cond_2

    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v12, v5}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v13, v6, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    sget-boolean v12, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    if-eqz v12, :cond_3

    iget v12, v6, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-ne v12, v9, :cond_3

    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v12, v5}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v13, v6, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    iget-boolean v12, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    if-eqz v12, :cond_5

    const-wide/16 v12, -0x2

    cmp-long v12, v10, v12

    if-nez v12, :cond_9

    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v12, v4}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v13, 0x7f0800eb

    invoke-virtual {v12, v13}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(I)V

    :cond_5
    :goto_1
    const-wide/16 v12, -0x1

    cmp-long v12, v7, v12

    if-nez v12, :cond_c

    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v12, v4}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v13, 0x7f0800ea

    invoke-virtual {v12, v13}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(I)V

    :cond_6
    :goto_2
    const-wide/16 v12, 0x0

    cmp-long v12, v0, v12

    if-nez v12, :cond_d

    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v12, v4}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v13, 0x7f0800ec

    invoke-virtual {v12, v13}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(I)V

    :cond_7
    :goto_3
    sget-boolean v12, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    if-eqz v12, :cond_8

    const/4 v12, -0x1

    if-ne v9, v12, :cond_e

    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z

    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v13, 0x7f0800ed

    invoke-virtual {v12, v13}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(I)V

    :goto_4
    :try_start_0
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v12, :cond_8

    iget-object v13, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-boolean v12, p0, Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z

    if-nez v12, :cond_f

    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v12}, Lcom/android/internal/telephony/ITelephony;->is3GSwitchLocked()Z

    move-result v12

    if-nez v12, :cond_f

    iget v12, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    const/4 v14, 0x1

    if-eq v12, v14, :cond_f

    const/4 v12, 0x1

    :goto_5
    invoke-virtual {v13, v12}, Lcom/mediatek/gemini/DefaultSimPreference;->setEnabled(Z)V

    const-string v12, "SimManagementSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mIs3gOff="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, p0, Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "SimManagementSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mTelephony.is3GSwitchLocked() is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v14}, Lcom/android/internal/telephony/ITelephony;->is3GSwitchLocked()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isGPRSEnable()Z

    move-result v13

    invoke-virtual {v12, v13}, Lcom/mediatek/gemini/DefaultSimPreference;->setEnabled(Z)V

    :goto_6
    return-void

    :cond_9
    const-wide/16 v12, -0x1

    cmp-long v12, v10, v12

    if-nez v12, :cond_b

    iget-object v13, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    sget-boolean v12, Lcom/mediatek/gemini/SimManagement;->sIsVoipAvailable:Z

    if-eqz v12, :cond_a

    add-int/lit8 v12, v4, 0x1

    :goto_7
    invoke-virtual {v13, v12}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v13, 0x7f0800ea

    invoke-virtual {v12, v13}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(I)V

    goto/16 :goto_1

    :cond_a
    move v12, v4

    goto :goto_7

    :cond_b
    const-wide/16 v12, -0x5

    cmp-long v12, v10, v12

    if-nez v12, :cond_5

    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const/4 v13, -0x5

    invoke-virtual {v12, v13}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v13, 0x7f08059d

    invoke-virtual {v12, v13}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(I)V

    goto/16 :goto_1

    :cond_c
    const-wide/16 v12, -0x5

    cmp-long v12, v7, v12

    if-nez v12, :cond_6

    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v13, 0x7f08059d

    invoke-virtual {v12, v13}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(I)V

    goto/16 :goto_2

    :cond_d
    const-wide/16 v12, -0x5

    cmp-long v12, v0, v12

    if-nez v12, :cond_7

    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v13, 0x7f08059d

    invoke-virtual {v12, v13}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(I)V

    goto/16 :goto_3

    :cond_e
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z

    goto/16 :goto_4

    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_5

    :catch_0
    move-exception v2

    const-string v12, "SimManagementSettings"

    const-string v13, "mTelephony exception"

    invoke-static {v12, v13}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private setStatusBarEnableStatus(Z)V
    .locals 4

    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStatusBarEnableStatus("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/mediatek/gemini/SimManagement;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_0
    return-void

    :cond_0
    const/high16 v1, 0x1210000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    :cond_1
    const-string v1, "SimManagementSettings"

    const-string v2, "Fail to get status bar instance"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDataConnDialog(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x7530

    :goto_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTimerHandler:Landroid/os/Handler;

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const v2, 0x7f080100

    invoke-direct {p0, v2}, Lcom/mediatek/gemini/SimManagement;->showProgressDlg(I)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z

    return-void

    :cond_0
    const-wide/16 v0, 0x2710

    goto :goto_0
.end method

.method private showProgressDlg(I)V
    .locals 3

    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showProgressDlg() with dialogMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimManagement;->showDialog(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimManagement;->setCancelable(Z)V

    return-void
.end method

.method private switchGprsDefautlSIM(J)V
    .locals 9

    const-wide/16 v7, 0x0

    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switchGprsDefautlSIM() with simid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v4, p1, v7

    if-gez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    cmp-long v4, p1, v7

    if-lez v4, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gprs_connection_sim_setting"

    const-wide/16 v6, -0x5

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "curConSimId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v4, p1, v0

    if-eqz v4, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.DATA_DEFAULT_SIM"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "simid"

    invoke-virtual {v2, v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0, v3}, Lcom/mediatek/gemini/SimManagement;->showDataConnDialog(Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private switchSimRadioState(IZ)V
    .locals 10

    const/4 v9, -0x1

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dual_sim_mode_setting"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The current dual sim mode is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/android/settings/ext/ISimManagementExt;

    invoke-interface {v5, v9}, Lcom/android/settings/ext/ISimManagementExt;->setToClosedSimSlot(I)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v5, "SimManagementSettings"

    const-string v6, "Error not correct values"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_0
    :goto_1
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Turning on only sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :cond_1
    :goto_2
    const/4 v4, 0x0

    if-eqz v3, :cond_c

    const v4, 0x7f0800f2

    :goto_3
    invoke-direct {p0, v4}, Lcom/mediatek/gemini/SimManagement;->showProgressDlg(I)V

    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dualState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isRadioOn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dual_sim_mode_setting"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "mode"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    if-ne p1, v8, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :pswitch_1
    if-nez p1, :cond_4

    if-eqz p2, :cond_3

    const-string v5, "SimManagementSettings"

    const-string v6, "try to turn on slot 1 again since it is already on"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    const/4 v3, 0x1

    :goto_4
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Turning off sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and all sim radio is off"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    if-ne p1, v8, :cond_1

    iget-boolean v5, p0, Lcom/mediatek/gemini/SimManagement;->mIsSlot1Insert:Z

    if-eqz v5, :cond_5

    const/4 v1, 0x3

    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sim 0 was radio on and now turning on sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_5
    const/4 v1, 0x2

    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Turning on only sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :pswitch_2
    if-ne p1, v8, :cond_7

    if-eqz p2, :cond_6

    const-string v5, "SimManagementSettings"

    const-string v6, "try to turn on slot 2 again since it is already on"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    const/4 v3, 0x1

    :goto_6
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Turning off sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and all sim radio is off"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_6
    const/4 v1, 0x0

    const/4 v3, 0x0

    goto :goto_6

    :cond_7
    if-nez p1, :cond_1

    iget-boolean v5, p0, Lcom/mediatek/gemini/SimManagement;->mIsSlot2Insert:Z

    if-eqz v5, :cond_8

    const/4 v1, 0x3

    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sim 1 was radio on and now turning on sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_8
    const/4 v1, 0x1

    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Turning on only sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :pswitch_3
    if-nez p2, :cond_b

    if-nez p1, :cond_a

    const/4 v1, 0x2

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/android/settings/ext/ISimManagementExt;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/settings/ext/ISimManagementExt;->setToClosedSimSlot(I)V

    :cond_9
    :goto_8
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Turning off only sim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_a
    if-ne p1, v8, :cond_9

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/android/settings/ext/ISimManagementExt;

    invoke-interface {v5, v8}, Lcom/android/settings/ext/ISimManagementExt;->setToClosedSimSlot(I)V

    goto :goto_8

    :cond_b
    const-string v5, "SimManagementSettings"

    const-string v6, "try to turn on but actually they are all on"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_c
    const v4, 0x7f0800f3

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private switchVideoCallDefaultSIM(J)V
    .locals 6

    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchVideoCallDefaultSIM to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->findSIMInfoBySimId(J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    const-string v2, "SimManagementSettings"

    const-string v3, "Error no corrent siminfo found"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set sim slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with 3G capability"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    iget v3, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->set3GCapabilitySIM(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f080101

    invoke-direct {p0, v2}, Lcom/mediatek/gemini/SimManagement;->showProgressDlg(I)V

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTimerHandler:Landroid/os/Handler;

    const/16 v3, 0x7d2

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SimManagementSettings"

    const-string v3, "mTelephony exception"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updateVideoCallDefaultSIM()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private updateDataConnPrefe()V
    .locals 10

    const-wide/16 v8, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gprs_connection_sim_setting"

    const-wide/16 v6, -0x5

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Gprs connection SIM changed with simid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v4, v1, v8

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const v5, 0x7f0800ec

    invoke-virtual {v4, v5}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    cmp-long v4, v1, v8

    if-lez v4, :cond_2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/gemini/SimManagement;->findListPosBySimId(J)I

    move-result v0

    invoke-direct {p0, v1, v2}, Lcom/mediatek/gemini/SimManagement;->findSIMInfoBySimId(J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v4, "SimManagementSettings"

    const-string v5, "Error no correct siminfo get..."

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v4, v0}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v5, v3, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string v4, "SimManagementSettings"

    const-string v5, "Error wrong simid need to check..."

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateDefaultSIMSummary(Lcom/mediatek/gemini/DefaultSimPreference;Ljava/lang/Long;)V
    .locals 7

    const-wide/16 v5, 0x0

    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDefaultSIMSummary() with simid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-lez v1, :cond_1

    invoke-direct {p0, p2}, Lcom/mediatek/gemini/SimManagement;->getSIMInfoById(Ljava/lang/Long;)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    const v1, 0x7f0800eb

    invoke-virtual {p1, v1}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    const v1, 0x7f0800ea

    invoke-virtual {p1, v1}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-nez v1, :cond_0

    const v1, 0x7f0800ec

    invoke-virtual {p1, v1}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private updatePreferenceUI()V
    .locals 2

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SimManagementSettings"

    const-string v1, "updatePreferenceUI() and update UI"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->initDefaultSimPreference()V

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->setPreferenceProperty()V

    iget v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->addSimInfoPreference()V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->setNoSimInfoUi()V

    goto :goto_1

    :cond_2
    const-string v0, "SimManagementSettings"

    const-string v1, "on backgroud no need update preference"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateVideoCallDefaultSIM()V
    .locals 7

    const-string v4, "SimManagementSettings"

    const-string v5, "updateVideoCallDefaultSIM()"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->get3GCapabilitySIM()I

    move-result v3

    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateVideoCallDefaultSIM()---slotId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v3}, Lcom/mediatek/gemini/SimManagement;->findSIMInofBySlotId(I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-wide v4, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-direct {p0, v4, v5}, Lcom/mediatek/gemini/SimManagement;->findListPosBySimId(J)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v4, v1}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V

    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v5, v2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mediatek/gemini/DefaultSimPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "SimManagementSettings"

    const-string v5, "mTelephony exception"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v4, "SimManagementSettings"

    const-string v5, "mVideoCallSimSetting.setInitValue(-1)"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitValue(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected initDefaultSimPreference()V
    .locals 12

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v5, "SimManagementSettings"

    const-string v6, "initDefaultSimPreference()"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVideo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListSms:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListGprs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    if-eqz v3, :cond_0

    new-instance v4, Lcom/mediatek/gemini/SimItem;

    invoke-direct {v4, v3}, Lcom/mediatek/gemini/SimItem;-><init>(Landroid/provider/Telephony$SIMInfo;)V

    iget v5, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-direct {p0, v5}, Lcom/mediatek/gemini/SimManagement;->getSimIndicator(I)I

    move-result v2

    iput v2, v4, Lcom/mediatek/gemini/SimItem;->mState:I

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "SimManagementSettings"

    const-string v6, "Force the state to be radio off as airplane mode or dual sim mode"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v9, v4, Lcom/mediatek/gemini/SimItem;->mState:I

    :cond_1
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListSms:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListGprs:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVideo:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-boolean v5, Lcom/mediatek/gemini/SimManagement;->sIsVoipAvailable:Z

    if-eqz v5, :cond_3

    const-string v5, "SimManagementSettings"

    const-string v6, "set internet call item"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/mediatek/gemini/SimItem;

    const v5, 0x7f0800eb

    invoke-virtual {p0, v5}, Lcom/mediatek/gemini/SimManagement;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    const-wide/16 v7, -0x2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/mediatek/gemini/SimItem;-><init>(Ljava/lang/String;IJ)V

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v4, Lcom/mediatek/gemini/SimItem;

    const v5, 0x7f0800ea

    invoke-virtual {p0, v5}, Lcom/mediatek/gemini/SimManagement;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    invoke-direct {v4, v5, v11, v6, v7}, Lcom/mediatek/gemini/SimItem;-><init>(Ljava/lang/String;IJ)V

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v9, :cond_a

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListSms:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v9, :cond_5

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListSms:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v4, Lcom/mediatek/gemini/SimItem;

    const v5, 0x7f0800ec

    invoke-virtual {p0, v5}, Lcom/mediatek/gemini/SimManagement;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v11, v6, v7}, Lcom/mediatek/gemini/SimItem;-><init>(Ljava/lang/String;IJ)V

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v5

    if-eqz v5, :cond_6

    iput v9, v4, Lcom/mediatek/gemini/SimItem;->mState:I

    :cond_6
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListGprs:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSimItemListVoice.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mSimItemListVideo.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVideo:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mSimItemListSms.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListSms:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mSimItemListSms.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListGprs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVideo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v9, :cond_b

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v5, v10}, Lcom/mediatek/gemini/DefaultSimPreference;->setEnabled(Z)V

    :cond_7
    :goto_2
    iget-boolean v5, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v9, :cond_c

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v5, v10}, Lcom/mediatek/gemini/DefaultSimPreference;->setEnabled(Z)V

    :cond_8
    :goto_3
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListSms:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v9, :cond_d

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v5, v10}, Lcom/mediatek/gemini/DefaultSimPreference;->setEnabled(Z)V

    :goto_4
    iget v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-ne v5, v9, :cond_e

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimAndContacts:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v10}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_9
    :goto_5
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListGprs:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitData(Ljava/util/List;)V

    return-void

    :cond_a
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v9, :cond_4

    sget-boolean v5, Lcom/mediatek/gemini/SimManagement;->sIsVoipAvailable:Z

    if-eqz v5, :cond_4

    const-string v5, "SimManagementSettings"

    const-string v6, "no sim card inserted but internet call is on"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVideo:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitData(Ljava/util/List;)V

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v5, v9}, Lcom/mediatek/gemini/DefaultSimPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_c
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListVoice:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitData(Ljava/util/List;)V

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v5, v9}, Lcom/mediatek/gemini/DefaultSimPreference;->setEnabled(Z)V

    goto :goto_3

    :cond_d
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v6, p0, Lcom/mediatek/gemini/SimManagement;->mSimItemListSms:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/mediatek/gemini/DefaultSimPreference;->setInitData(Ljava/util/List;)V

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v5, v9}, Lcom/mediatek/gemini/DefaultSimPreference;->setEnabled(Z)V

    goto :goto_4

    :cond_e
    iget v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-le v5, v9, :cond_9

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimAndContacts:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_5
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f060038

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->addPreferencesFromResource(I)V

    const-string v2, "SimManagementSettings"

    const-string v3, "onCreate Sim Management"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SimManagementSettings"

    const-string v3, "MTK_VT3G324M_SUPPORT=falseMTK_GEMINI_3G_SWITCH=true"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    sput-boolean v2, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mConnService:Landroid/net/ConnectivityManager;

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    const-string v2, "SimManagementSettings"

    const-string v3, "FeatureOption.MTK_GEMINI_3G_SWITCH=true"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "general_settings"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->getSimManagmentExtPlugin(Landroid/content/Context;)Lcom/android/settings/ext/ISimManagementExt;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/android/settings/ext/ISimManagementExt;

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/android/settings/ext/ISimManagementExt;

    invoke-interface {v2, v1}, Lcom/android/settings/ext/ISimManagementExt;->updateSimManagementPref(Landroid/preference/PreferenceGroup;)V

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->initIntentFilter()V

    const-string v2, "voice_call_sim_setting"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gemini/DefaultSimPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const-string v2, "video_call_sim_setting"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gemini/DefaultSimPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const-string v2, "sms_sim_setting"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gemini/DefaultSimPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const-string v2, "gprs_sim_setting"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gemini/DefaultSimPreference;

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->setIconForDefaultSimPref()V

    const-string v2, "contacts_sim"

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/SimManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimAndContacts:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v2, v4}, Lcom/mediatek/gemini/DefaultSimPreference;->setType(I)V

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v2, p0}, Lcom/mediatek/gemini/DefaultSimPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/DefaultSimPreference;->setType(I)V

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v2, p0}, Lcom/mediatek/gemini/DefaultSimPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/DefaultSimPreference;->setType(I)V

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v2, p0}, Lcom/mediatek/gemini/DefaultSimPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/DefaultSimPreference;->setType(I)V

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    invoke-virtual {v2, p0}, Lcom/mediatek/gemini/DefaultSimPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v2, Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-direct {v2}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>()V

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/DefaultSimPreference;->setCellConnMgr(Lcom/mediatek/CellConnService/CellConnMgr;)V

    :try_start_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mSwitchRadioStateMsg:Landroid/os/Messenger;

    invoke-virtual {v3}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->registerForSimModeChange(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mSimReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "SimManagementSettings"

    const-string v3, "mTelephony exception"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 12

    const v11, 0x1080027

    const v10, 0x1040014

    const v9, 0x1040013

    const v8, 0x1040009

    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreateDialog() with id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget v5, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    const v6, 0x7f080101

    if-ne v5, v6, :cond_0

    const-string v5, "SimManagementSettings"

    const-string v6, "3G switch to dispatch home key"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, -0x80000000

    or-int/2addr v5, v6

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/mediatek/gemini/SimManagement;->setStatusBarEnableStatus(Z)V

    :cond_0
    const/4 v5, -0x1

    iput v5, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    move-object v0, v2

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/mediatek/gemini/SimManagement$8;

    invoke-direct {v5, p0}, Lcom/mediatek/gemini/SimManagement$8;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-virtual {v1, v9, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/mediatek/gemini/SimManagement$9;

    invoke-direct {v5, p0}, Lcom/mediatek/gemini/SimManagement$9;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-virtual {v1, v8, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080102

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/mediatek/gemini/SimManagement$10;

    invoke-direct {v5, p0}, Lcom/mediatek/gemini/SimManagement$10;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-virtual {v1, v9, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/mediatek/gemini/SimManagement$11;

    invoke-direct {v5, p0}, Lcom/mediatek/gemini/SimManagement$11;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-virtual {v1, v8, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    const-string v1, "SimManagementSettings"

    const-string v2, "onDestroy()"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSwitchRadioStateMsg:Landroid/os/Messenger;

    invoke-virtual {v2}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->unregisterForSimModeChange(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v1}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mTimerHandler:Landroid/os/Handler;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mTimerHandler:Landroid/os/Handler;

    const/16 v2, 0x7d1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mTimerHandler:Landroid/os/Handler;

    const/16 v2, 0x7d2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SimManagementSettings"

    const-string v2, "mTelephony exception"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string v0, "SimManagementSettings"

    const-string v1, "OnPause()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    const/4 v7, -0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enter onPreferenceChange function with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "voice_call_sim_setting"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voice_call_sim_setting"

    move-object v4, p2

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VOICE_CALL_DEFAULT_SIM"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "simid"

    move-object v4, p2

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const-string v5, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send broadcast voice call change with simid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v4, p2

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    check-cast p2, Ljava/lang/Long;

    invoke-direct {p0, v4, p2}, Lcom/mediatek/gemini/SimManagement;->updateDefaultSIMSummary(Lcom/mediatek/gemini/DefaultSimPreference;Ljava/lang/Long;)V

    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    :cond_1
    const-string v4, "video_call_sim_setting"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mediatek/gemini/SimManagement;->mSelectedVideoSimId:J

    const/16 v4, 0x3e9

    invoke-virtual {p0, v4}, Lcom/mediatek/gemini/SimManagement;->showDialog(I)V

    new-instance v4, Lcom/mediatek/gemini/SimManagement$6;

    invoke-direct {v4, p0}, Lcom/mediatek/gemini/SimManagement$6;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-virtual {p0, v4}, Lcom/mediatek/gemini/SimManagement;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    :cond_2
    const-string v4, "sms_sim_setting"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sms_sim_setting"

    move-object v4, p2

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.SMS_DEFAULT_SIM"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "simid"

    move-object v4, p2

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const-string v5, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send broadcast sms change with simid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v4, p2

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/DefaultSimPreference;

    check-cast p2, Ljava/lang/Long;

    invoke-direct {p0, v4, p2}, Lcom/mediatek/gemini/SimManagement;->updateDefaultSIMSummary(Lcom/mediatek/gemini/DefaultSimPreference;Ljava/lang/Long;)V

    goto :goto_0

    :cond_3
    const-string v4, "gprs_sim_setting"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_4

    iput v7, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    :goto_1
    iget v4, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    if-eq v4, v7, :cond_5

    iput-wide v2, p0, Lcom/mediatek/gemini/SimManagement;->mSelectedGprsSimId:J

    const/16 v4, 0x3ea

    invoke-virtual {p0, v4}, Lcom/mediatek/gemini/SimManagement;->showDialog(I)V

    new-instance v4, Lcom/mediatek/gemini/SimManagement$7;

    invoke-direct {v4, p0}, Lcom/mediatek/gemini/SimManagement$7;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-virtual {p0, v4}, Lcom/mediatek/gemini/SimManagement;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, v2, v3}, Lcom/mediatek/gemini/SimManagement;->dataSwitchConfirmDlgMsg(J)I

    move-result v4

    iput v4, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    goto :goto_1

    :cond_5
    invoke-direct {p0, v2, v3}, Lcom/mediatek/gemini/SimManagement;->switchGprsDefautlSIM(J)V

    goto/16 :goto_0
.end method

.method public onPreferenceClick(J)V
    .locals 6

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "simid"

    invoke-virtual {v4, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-class v0, Lcom/mediatek/gemini/SimInfoEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const v5, 0x7f0800dc

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/gemini/SimManagement;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/mediatek/gemini/SimInfoEditor;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9

    const-string v0, "contacts_sim"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSiminfoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/provider/Telephony$SIMInfo;

    if-eqz v7, :cond_0

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.mediatek.gemini.GeminiSIMTetherInfo"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v8, v7, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter sim contanct of sim "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v8, :cond_0

    const-string v0, "simid"

    iget-wide v1, v7, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v6, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimAndContacts:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "type"

    const/4 v1, 0x3

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-class v0, Lcom/mediatek/gemini/SimListEntrance;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const v5, 0x7f0800e4

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/gemini/SimManagement;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    const-string v0, "SimManagementSettings"

    const-string v1, "startFragment(this, SimListEntrance.class.getCanonicalName(), -1, extras);"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "SimManagementSettings"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsSmsCapable:Z

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isVoipAvailable()Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/gemini/SimManagement;->sIsVoipAvailable:Z

    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsVoiceCapable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsSmsCapable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsSmsCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sVTCallSupport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/gemini/SimManagement;->sVTCallSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sIsVoipAvailable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/gemini/SimManagement;->sIsVoipAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->getSimInfo()V

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->removeUnusedPref()V

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updatePreferenceUI()V

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gprs_connection_sim_setting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->dealDialogOnResume()V

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/android/settings/ext/ISimManagementExt;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimManagement;->isResumed()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/settings/ext/ISimManagementExt;->dealWithDataConnChanged(Landroid/content/Intent;Z)V

    return-void
.end method
