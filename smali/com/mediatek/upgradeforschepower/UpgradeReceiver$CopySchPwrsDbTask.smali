.class Lcom/mediatek/upgradeforschepower/UpgradeReceiver$CopySchPwrsDbTask;
.super Landroid/os/AsyncTask;
.source "UpgradeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/upgradeforschepower/UpgradeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CopySchPwrsDbTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/upgradeforschepower/UpgradeReceiver;


# direct methods
.method private constructor <init>(Lcom/mediatek/upgradeforschepower/UpgradeReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/upgradeforschepower/UpgradeReceiver$CopySchPwrsDbTask;->this$0:Lcom/mediatek/upgradeforschepower/UpgradeReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/upgradeforschepower/UpgradeReceiver;Lcom/mediatek/upgradeforschepower/UpgradeReceiver$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/upgradeforschepower/UpgradeReceiver$CopySchPwrsDbTask;-><init>(Lcom/mediatek/upgradeforschepower/UpgradeReceiver;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/upgradeforschepower/UpgradeReceiver$CopySchPwrsDbTask;->this$0:Lcom/mediatek/upgradeforschepower/UpgradeReceiver;

    # invokes: Lcom/mediatek/upgradeforschepower/UpgradeReceiver;->copyDbFileToPhoneStorage()Z
    invoke-static {v0}, Lcom/mediatek/upgradeforschepower/UpgradeReceiver;->access$100(Lcom/mediatek/upgradeforschepower/UpgradeReceiver;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mediatek/upgradeforschepower/UpgradeReceiver$CopySchPwrsDbTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    const-string v0, "UpgradeReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copy db file to data/ result  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mediatek/upgradeforschepower/UpgradeReceiver$CopySchPwrsDbTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
