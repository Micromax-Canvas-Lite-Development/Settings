.class Lcom/mediatek/lockscreensettings/LockScreenStyleSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "LockScreenStyleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lockscreensettings/LockScreenStyleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lockscreensettings/LockScreenStyleSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/lockscreensettings/LockScreenStyleSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/lockscreensettings/LockScreenStyleSettings$1;->this$0:Lcom/mediatek/lockscreensettings/LockScreenStyleSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "LockScreenStyleSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",replacing = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/mediatek/lockscreensettings/LockScreenStyleSettings$1;->this$0:Lcom/mediatek/lockscreensettings/LockScreenStyleSettings;

    # invokes: Lcom/mediatek/lockscreensettings/LockScreenStyleSettings;->isKeyguardLayerProvider(Ljava/lang/String;)Z
    invoke-static {v3, v1}, Lcom/mediatek/lockscreensettings/LockScreenStyleSettings;->access$000(Lcom/mediatek/lockscreensettings/LockScreenStyleSettings;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/lockscreensettings/LockScreenStyleSettings$1;->this$0:Lcom/mediatek/lockscreensettings/LockScreenStyleSettings;

    # invokes: Lcom/mediatek/lockscreensettings/LockScreenStyleSettings;->loadKeyguardLayers()V
    invoke-static {v3}, Lcom/mediatek/lockscreensettings/LockScreenStyleSettings;->access$100(Lcom/mediatek/lockscreensettings/LockScreenStyleSettings;)V

    :cond_1
    return-void
.end method
