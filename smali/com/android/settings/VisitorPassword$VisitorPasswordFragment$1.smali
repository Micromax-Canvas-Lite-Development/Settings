.class Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$1;
.super Landroid/os/Handler;
.source "VisitorPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$1;->this$0:Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$1;->this$0:Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;

    invoke-virtual {v1, v0}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->updateStage(Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;)V

    :cond_0
    return-void
.end method
