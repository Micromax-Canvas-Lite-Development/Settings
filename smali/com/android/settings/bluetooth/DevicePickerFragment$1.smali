.class Lcom/android/settings/bluetooth/DevicePickerFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "DevicePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/DevicePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DevicePickerFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DevicePickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerFragment;

    iget-object v1, v1, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const-string v1, "DevicePickerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BluetoothAdapter state changed to"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerFragment;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->handleStateChanged(I)V

    return-void
.end method
