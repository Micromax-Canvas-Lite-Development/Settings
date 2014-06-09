.class Lcom/mediatek/gemini/SimManagement$2;
.super Landroid/os/Handler;
.source "SimManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/SimManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/SimManagement;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/gemini/SimManagement$2;->this$0:Lcom/mediatek/gemini/SimManagement;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/16 v0, 0x7d0

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    const-string v0, "SimManagementSettings"

    const-string v1, "reveive time out msg..."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement$2;->this$0:Lcom/mediatek/gemini/SimManagement;

    # invokes: Lcom/mediatek/gemini/SimManagement;->removeProgDlg()V
    invoke-static {v0}, Lcom/mediatek/gemini/SimManagement;->access$100(Lcom/mediatek/gemini/SimManagement;)V

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement$2;->this$0:Lcom/mediatek/gemini/SimManagement;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z
    invoke-static {v0, v1}, Lcom/mediatek/gemini/SimManagement;->access$202(Lcom/mediatek/gemini/SimManagement;Z)Z

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement$2;->this$0:Lcom/mediatek/gemini/SimManagement;

    # invokes: Lcom/mediatek/gemini/SimManagement;->updateDataConnPrefe()V
    invoke-static {v0}, Lcom/mediatek/gemini/SimManagement;->access$000(Lcom/mediatek/gemini/SimManagement;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x7d1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_2

    const-string v0, "SimManagementSettings"

    const-string v1, "handle abnormal progress dialog not showing"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement$2;->this$0:Lcom/mediatek/gemini/SimManagement;

    # invokes: Lcom/mediatek/gemini/SimManagement;->dealWithSwtichComplete()V
    invoke-static {v0}, Lcom/mediatek/gemini/SimManagement;->access$300(Lcom/mediatek/gemini/SimManagement;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x7d2

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    const-string v0, "SimManagementSettings"

    const-string v1, "3G switch time out remove the progress dialog"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement$2;->this$0:Lcom/mediatek/gemini/SimManagement;

    # invokes: Lcom/mediatek/gemini/SimManagement;->removeProgDlg()V
    invoke-static {v0}, Lcom/mediatek/gemini/SimManagement;->access$100(Lcom/mediatek/gemini/SimManagement;)V

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement$2;->this$0:Lcom/mediatek/gemini/SimManagement;

    const/4 v1, 0x1

    # invokes: Lcom/mediatek/gemini/SimManagement;->setStatusBarEnableStatus(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/gemini/SimManagement;->access$400(Lcom/mediatek/gemini/SimManagement;Z)V

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement$2;->this$0:Lcom/mediatek/gemini/SimManagement;

    # invokes: Lcom/mediatek/gemini/SimManagement;->updateVideoCallDefaultSIM()V
    invoke-static {v0}, Lcom/mediatek/gemini/SimManagement;->access$500(Lcom/mediatek/gemini/SimManagement;)V

    goto :goto_0
.end method
