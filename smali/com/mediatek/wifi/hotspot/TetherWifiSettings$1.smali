.class Lcom/mediatek/wifi/hotspot/TetherWifiSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "TetherWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wifi/hotspot/TetherWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wifi/hotspot/TetherWifiSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/wifi/hotspot/TetherWifiSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings$1;->this$0:Lcom/mediatek/wifi/hotspot/TetherWifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TetherWifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.net.wifi.WIFI_HOTSPOT_CLIENTS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings$1;->this$0:Lcom/mediatek/wifi/hotspot/TetherWifiSettings;

    # invokes: Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->handleWifiApClientsChanged()V
    invoke-static {v1}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->access$000(Lcom/mediatek/wifi/hotspot/TetherWifiSettings;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.net.wifi.WIFI_WPS_CHECK_PIN_FAIL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f08016a

    invoke-static {p1, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    const-string v1, "android.net.wifi.WIFI_HOTSPOT_OVERLAP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f080470

    invoke-static {p1, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
