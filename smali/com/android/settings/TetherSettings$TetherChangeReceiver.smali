.class Lcom/android/settings/TetherSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/TetherSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v7, "TetherSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TetherChangeReceiver - onReceive, action is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "availableArray"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v7, "activeArray"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v7, "erroredArray"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const-string v8, "UnTetherDone"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    # setter for: Lcom/android/settings/TetherSettings;->mUsbUnTetherDone:Z
    invoke-static {v7, v8}, Lcom/android/settings/TetherSettings;->access$102(Lcom/android/settings/TetherSettings;Z)Z

    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const-string v8, "TetherDone"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    # setter for: Lcom/android/settings/TetherSettings;->mUsbTetherDone:Z
    invoke-static {v7, v8}, Lcom/android/settings/TetherSettings;->access$202(Lcom/android/settings/TetherSettings;Z)Z

    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const-string v8, "TetherFail"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    # setter for: Lcom/android/settings/TetherSettings;->mUsbTetherFail:Z
    invoke-static {v7, v8}, Lcom/android/settings/TetherSettings;->access$302(Lcom/android/settings/TetherSettings;Z)Z

    const-string v7, "TetherSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mUsbUnTetherDone? :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mUsbUnTetherDone:Z
    invoke-static {v9}, Lcom/android/settings/TetherSettings;->access$100(Lcom/android/settings/TetherSettings;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , mUsbTetherDonel? :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mUsbTetherDone:Z
    invoke-static {v9}, Lcom/android/settings/TetherSettings;->access$200(Lcom/android/settings/TetherSettings;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , tether fail? :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mUsbTetherFail:Z
    invoke-static {v9}, Lcom/android/settings/TetherSettings;->access$300(Lcom/android/settings/TetherSettings;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    # invokes: Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v10, v7, v8, v9}, Lcom/android/settings/TetherSettings;->access$400(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v7, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    # setter for: Lcom/android/settings/TetherSettings;->mMassStorageActive:Z
    invoke-static {v7, v11}, Lcom/android/settings/TetherSettings;->access$502(Lcom/android/settings/TetherSettings;Z)Z

    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    # invokes: Lcom/android/settings/TetherSettings;->updateState()V
    invoke-static {v7}, Lcom/android/settings/TetherSettings;->access$600(Lcom/android/settings/TetherSettings;)V

    goto :goto_0

    :cond_2
    const-string v7, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    # setter for: Lcom/android/settings/TetherSettings;->mMassStorageActive:Z
    invoke-static {v7, v10}, Lcom/android/settings/TetherSettings;->access$502(Lcom/android/settings/TetherSettings;Z)Z

    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    # invokes: Lcom/android/settings/TetherSettings;->updateState()V
    invoke-static {v7}, Lcom/android/settings/TetherSettings;->access$600(Lcom/android/settings/TetherSettings;)V

    goto :goto_0

    :cond_3
    const-string v7, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const-string v8, "connected"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    # setter for: Lcom/android/settings/TetherSettings;->mUsbConnected:Z
    invoke-static {v7, v8}, Lcom/android/settings/TetherSettings;->access$702(Lcom/android/settings/TetherSettings;Z)Z

    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const-string v8, "configured"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    # setter for: Lcom/android/settings/TetherSettings;->mUsbConfigured:Z
    invoke-static {v7, v8}, Lcom/android/settings/TetherSettings;->access$802(Lcom/android/settings/TetherSettings;Z)Z

    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const-string v8, "USB_HW_DISCONNECTED"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    # setter for: Lcom/android/settings/TetherSettings;->mUsbHwDisconnected:Z
    invoke-static {v7, v8}, Lcom/android/settings/TetherSettings;->access$902(Lcom/android/settings/TetherSettings;Z)Z

    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const-string v8, "USB_IS_PC_KNOW_ME"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    # setter for: Lcom/android/settings/TetherSettings;->mIsPcKnowMe:Z
    invoke-static {v7, v8}, Lcom/android/settings/TetherSettings;->access$1002(Lcom/android/settings/TetherSettings;Z)Z

    const-string v7, "TetherSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TetherChangeReceiver - ACTION_USB_STATE mUsbConnected: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mUsbConnected:Z
    invoke-static {v9}, Lcom/android/settings/TetherSettings;->access$700(Lcom/android/settings/TetherSettings;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mUsbConfigured:  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mUsbConfigured:Z
    invoke-static {v9}, Lcom/android/settings/TetherSettings;->access$800(Lcom/android/settings/TetherSettings;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mUsbHwDisconnected: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mUsbHwDisconnected:Z
    invoke-static {v9}, Lcom/android/settings/TetherSettings;->access$900(Lcom/android/settings/TetherSettings;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    # invokes: Lcom/android/settings/TetherSettings;->updateState()V
    invoke-static {v7}, Lcom/android/settings/TetherSettings;->access$600(Lcom/android/settings/TetherSettings;)V

    goto/16 :goto_0

    :cond_4
    const-string v7, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v7}, Lcom/android/settings/TetherSettings;->access$1100(Lcom/android/settings/TetherSettings;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "android.bluetooth.adapter.extra.STATE"

    const/high16 v8, -0x80000000

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_5
    :goto_1
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    # invokes: Lcom/android/settings/TetherSettings;->updateState()V
    invoke-static {v7}, Lcom/android/settings/TetherSettings;->access$600(Lcom/android/settings/TetherSettings;)V

    goto/16 :goto_0

    :sswitch_0
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v7}, Lcom/android/settings/TetherSettings;->access$000(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothPan;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v11}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    # setter for: Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v7, v10}, Lcom/android/settings/TetherSettings;->access$1102(Lcom/android/settings/TetherSettings;Z)Z

    :cond_6
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mBluetoothDun:Landroid/bluetooth/BluetoothDun;
    invoke-static {v7}, Lcom/android/settings/TetherSettings;->access$1200(Lcom/android/settings/TetherSettings;)Landroid/bluetooth/BluetoothDun;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    # getter for: Lcom/android/settings/TetherSettings;->mBluetoothDun:Landroid/bluetooth/BluetoothDun;
    invoke-static {v7}, Lcom/android/settings/TetherSettings;->access$1200(Lcom/android/settings/TetherSettings;)Landroid/bluetooth/BluetoothDun;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/bluetooth/BluetoothDun;->setBluetoothTethering(Z)V

    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    # setter for: Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v7, v10}, Lcom/android/settings/TetherSettings;->access$1102(Lcom/android/settings/TetherSettings;Z)Z

    goto :goto_1

    :sswitch_1
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    # setter for: Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v7, v10}, Lcom/android/settings/TetherSettings;->access$1102(Lcom/android/settings/TetherSettings;Z)Z

    goto :goto_1

    :cond_7
    const-string v7, "mediatek.intent.action.USB_DATA_STATE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "apn"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-class v7, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v8, "state"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v7, "TetherSettings"

    const-string v8, "receive USB_DATA_STATE"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "TetherSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dataApnKey = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "internet"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v6, v7, :cond_8

    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    # setter for: Lcom/android/settings/TetherSettings;->mUsbInternetSharing:Z
    invoke-static {v7, v11}, Lcom/android/settings/TetherSettings;->access$1302(Lcom/android/settings/TetherSettings;Z)Z

    :goto_2
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    # invokes: Lcom/android/settings/TetherSettings;->updateState()V
    invoke-static {v7}, Lcom/android/settings/TetherSettings;->access$600(Lcom/android/settings/TetherSettings;)V

    goto/16 :goto_0

    :cond_8
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    # setter for: Lcom/android/settings/TetherSettings;->mUsbInternetSharing:Z
    invoke-static {v7, v10}, Lcom/android/settings/TetherSettings;->access$1302(Lcom/android/settings/TetherSettings;Z)Z

    goto :goto_2

    :cond_9
    const-string v7, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "wifi_state"

    const/16 v8, 0xe

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/16 v7, 0xd

    if-eq v6, v7, :cond_a

    const/16 v7, 0xb

    if-ne v6, v7, :cond_0

    :cond_a
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    # invokes: Lcom/android/settings/TetherSettings;->updateIpv6Preference()V
    invoke-static {v7}, Lcom/android/settings/TetherSettings;->access$1400(Lcom/android/settings/TetherSettings;)V

    goto/16 :goto_0

    :cond_b
    const-string v7, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "android.bluetooth.profilemanager.action.STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_c
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    # invokes: Lcom/android/settings/TetherSettings;->updateState()V
    invoke-static {v7}, Lcom/android/settings/TetherSettings;->access$600(Lcom/android/settings/TetherSettings;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method
