.class Lcom/mediatek/hdmi/HDMILocalService$HDMIServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HDMILocalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/hdmi/HDMILocalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HDMIServiceReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/hdmi/HDMILocalService;


# direct methods
.method private constructor <init>(Lcom/mediatek/hdmi/HDMILocalService;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/hdmi/HDMILocalService$HDMIServiceReceiver;->this$0:Lcom/mediatek/hdmi/HDMILocalService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/hdmi/HDMILocalService;Lcom/mediatek/hdmi/HDMILocalService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/hdmi/HDMILocalService$HDMIServiceReceiver;-><init>(Lcom/mediatek/hdmi/HDMILocalService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.intent.action.HDMI_PLUG"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "state"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_0
    # setter for: Lcom/mediatek/hdmi/HDMILocalService;->sIsCablePluged:Z
    invoke-static {v2}, Lcom/mediatek/hdmi/HDMILocalService;->access$002(Z)Z

    iget-object v2, p0, Lcom/mediatek/hdmi/HDMILocalService$HDMIServiceReceiver;->this$0:Lcom/mediatek/hdmi/HDMILocalService;

    # invokes: Lcom/mediatek/hdmi/HDMILocalService;->dealWithCablePluged()V
    invoke-static {v2}, Lcom/mediatek/hdmi/HDMILocalService;->access$100(Lcom/mediatek/hdmi/HDMILocalService;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v2, "hdmi"

    const-string v3, "receive the headset plugin and do nothing"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v4, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v3, "hdmi"

    const-string v4, "HDMI local service receive IPO boot up broadcast"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/mediatek/hdmi/HDMILocalService$HDMIServiceReceiver;->this$0:Lcom/mediatek/hdmi/HDMILocalService;

    # invokes: Lcom/mediatek/hdmi/HDMILocalService;->dealWithIPO(Z)V
    invoke-static {v3, v2}, Lcom/mediatek/hdmi/HDMILocalService;->access$200(Lcom/mediatek/hdmi/HDMILocalService;Z)V

    goto :goto_1

    :cond_4
    const-string v2, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/hdmi/HDMILocalService$HDMIServiceReceiver;->this$0:Lcom/mediatek/hdmi/HDMILocalService;

    # invokes: Lcom/mediatek/hdmi/HDMILocalService;->dealWithIPO(Z)V
    invoke-static {v2, v3}, Lcom/mediatek/hdmi/HDMILocalService;->access$200(Lcom/mediatek/hdmi/HDMILocalService;Z)V

    goto :goto_1
.end method
