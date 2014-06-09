.class Lcom/mediatek/gemini/WapPushSettings$2;
.super Ljava/lang/Object;
.source "WapPushSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gemini/WapPushSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/WapPushSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/WapPushSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/gemini/WapPushSettings$2;->this$0:Lcom/mediatek/gemini/WapPushSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/mediatek/gemini/WapPushSettings$2;->this$0:Lcom/mediatek/gemini/WapPushSettings;

    iget-object v4, v4, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimList:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/mediatek/gemini/WapPushSettings$2;->this$0:Lcom/mediatek/gemini/WapPushSettings;

    iget-object v4, v4, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    if-eqz v3, :cond_0

    iget v4, v3, Landroid/provider/Telephony$SIMInfo;->mWapPush:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/mediatek/gemini/WapPushSettings$2;->this$0:Lcom/mediatek/gemini/WapPushSettings;

    invoke-virtual {v4}, Lcom/mediatek/gemini/WapPushSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-wide v5, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v4, v7, v5, v6}, Landroid/provider/Telephony$SIMInfo;->setWAPPush(Landroid/content/Context;IJ)I

    iget-object v4, p0, Lcom/mediatek/gemini/WapPushSettings$2;->this$0:Lcom/mediatek/gemini/WapPushSettings;

    iget-wide v5, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/gemini/WapPushSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v4, v1, Lcom/mediatek/gemini/SimInfoPreference;

    if-eqz v4, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/mediatek/gemini/SimInfoPreference;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v7}, Lcom/mediatek/gemini/SimInfoPreference;->setCheck(Z)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/mediatek/gemini/WapPushSettings$2;->this$0:Lcom/mediatek/gemini/WapPushSettings;

    # invokes: Lcom/mediatek/gemini/WapPushSettings;->cancelPermissionNotification()V
    invoke-static {v4}, Lcom/mediatek/gemini/WapPushSettings;->access$000(Lcom/mediatek/gemini/WapPushSettings;)V

    :cond_2
    iget-object v4, p0, Lcom/mediatek/gemini/WapPushSettings$2;->this$0:Lcom/mediatek/gemini/WapPushSettings;

    # setter for: Lcom/mediatek/gemini/WapPushSettings;->mIsShowDlg:Z
    invoke-static {v4, v7}, Lcom/mediatek/gemini/WapPushSettings;->access$102(Lcom/mediatek/gemini/WapPushSettings;Z)Z

    return-void
.end method
