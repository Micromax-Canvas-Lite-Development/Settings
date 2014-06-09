.class Lcom/android/settings/SrsSettings$1;
.super Landroid/os/Handler;
.source "SrsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SrsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SrsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SrsSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SrsSettings$1;->this$0:Lcom/android/settings/SrsSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    const-string v0, "srs"

    const-string v1, "srseq SrsSettings srsEqHeadsetHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/settings/SrsSettings$1;->this$0:Lcom/android/settings/SrsSettings;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings/SrsSettings;->UseHeadphones:Z

    :goto_1
    const-string v0, "srs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "srseq SrsSettings UseHeadphones = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SrsSettings$1;->this$0:Lcom/android/settings/SrsSettings;

    iget-boolean v2, v2, Lcom/android/settings/SrsSettings;->UseHeadphones:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/SrsSettings$1;->this$0:Lcom/android/settings/SrsSettings;

    # invokes: Lcom/android/settings/SrsSettings;->eqSliderPull()V
    invoke-static {v0}, Lcom/android/settings/SrsSettings;->access$000(Lcom/android/settings/SrsSettings;)V

    iget-object v0, p0, Lcom/android/settings/SrsSettings$1;->this$0:Lcom/android/settings/SrsSettings;

    # invokes: Lcom/android/settings/SrsSettings;->updateSrsMusicEqSet()V
    invoke-static {v0}, Lcom/android/settings/SrsSettings;->access$100(Lcom/android/settings/SrsSettings;)V

    iget-object v0, p0, Lcom/android/settings/SrsSettings$1;->this$0:Lcom/android/settings/SrsSettings;

    # invokes: Lcom/android/settings/SrsSettings;->updateSrsMusicEqDialog()V
    invoke-static {v0}, Lcom/android/settings/SrsSettings;->access$200(Lcom/android/settings/SrsSettings;)V

    iget-object v0, p0, Lcom/android/settings/SrsSettings$1;->this$0:Lcom/android/settings/SrsSettings;

    # invokes: Lcom/android/settings/SrsSettings;->updateSrsVideoEqSet()V
    invoke-static {v0}, Lcom/android/settings/SrsSettings;->access$300(Lcom/android/settings/SrsSettings;)V

    iget-object v0, p0, Lcom/android/settings/SrsSettings$1;->this$0:Lcom/android/settings/SrsSettings;

    # invokes: Lcom/android/settings/SrsSettings;->updateSrsVideoEqDialog()V
    invoke-static {v0}, Lcom/android/settings/SrsSettings;->access$400(Lcom/android/settings/SrsSettings;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SrsSettings$1;->this$0:Lcom/android/settings/SrsSettings;

    iput-boolean v2, v0, Lcom/android/settings/SrsSettings;->UseHeadphones:Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
