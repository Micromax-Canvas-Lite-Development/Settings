.class Lcom/android/settings/SrsTreblePreference$2;
.super Landroid/content/BroadcastReceiver;
.source "SrsTreblePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SrsTreblePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SrsTreblePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/SrsTreblePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SrsTreblePreference$2;->this$0:Lcom/android/settings/SrsTreblePreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/SrsTreblePreference$2;->this$0:Lcom/android/settings/SrsTreblePreference;

    iget-object v2, v2, Lcom/android/settings/SrsTreblePreference;->HeadsetHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const-string v4, "state"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SrsTreblePreference$2;->this$0:Lcom/android/settings/SrsTreblePreference;

    iget-object v2, v2, Lcom/android/settings/SrsTreblePreference;->HeadsetHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
