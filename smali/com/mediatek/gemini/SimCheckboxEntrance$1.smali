.class Lcom/mediatek/gemini/SimCheckboxEntrance$1;
.super Landroid/content/BroadcastReceiver;
.source "SimCheckboxEntrance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/SimCheckboxEntrance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/SimCheckboxEntrance;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/SimCheckboxEntrance;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/gemini/SimCheckboxEntrance$1;->this$0:Lcom/mediatek/gemini/SimCheckboxEntrance;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "slotId"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "state"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v6, "SimCheckboxEntrance"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "receive notification: state of sim slot "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v4, :cond_0

    if-ltz v2, :cond_0

    iget-object v6, p0, Lcom/mediatek/gemini/SimCheckboxEntrance$1;->this$0:Lcom/mediatek/gemini/SimCheckboxEntrance;

    # invokes: Lcom/mediatek/gemini/SimCheckboxEntrance;->updateSimState(II)V
    invoke-static {v6, v4, v2}, Lcom/mediatek/gemini/SimCheckboxEntrance;->access$000(Lcom/mediatek/gemini/SimCheckboxEntrance;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "SimCheckboxEntrance"

    const-string v7, "receiver: TelephonyIntents.ACTION_SIM_INFO_UPDATE"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/mediatek/gemini/SimCheckboxEntrance$1;->this$0:Lcom/mediatek/gemini/SimCheckboxEntrance;

    invoke-virtual {v6}, Lcom/mediatek/gemini/SimCheckboxEntrance;->addSimInfoPreference()V

    goto :goto_0

    :cond_2
    const-string v6, "android.intent.action.SIM_NAME_UPDATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "SimCheckboxEntrance"

    const-string v7, "receiver: TelephonyIntents.ACTION_SIM_NAME_UPDATE"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "simId"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ltz v5, :cond_0

    invoke-static {p1, v5}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/mediatek/gemini/SimCheckboxEntrance$1;->this$0:Lcom/mediatek/gemini/SimCheckboxEntrance;

    iget-wide v7, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/gemini/SimCheckboxEntrance;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gemini/SimInfoPreference;

    if-eqz v1, :cond_0

    iget-object v6, v3, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/mediatek/gemini/SimInfoPreference;->setName(Ljava/lang/String;)V

    goto :goto_0
.end method
