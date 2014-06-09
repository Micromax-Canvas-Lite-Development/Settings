.class Lcom/android/settings/ConfirmVisitorPassword$ConfirmVisitorPasswordFragment$1;
.super Ljava/lang/Object;
.source "ConfirmVisitorPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmVisitorPassword$ConfirmVisitorPasswordFragment;->showError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmVisitorPassword$ConfirmVisitorPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmVisitorPassword$ConfirmVisitorPasswordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ConfirmVisitorPassword$ConfirmVisitorPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmVisitorPassword$ConfirmVisitorPasswordFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/ConfirmVisitorPassword$ConfirmVisitorPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmVisitorPassword$ConfirmVisitorPasswordFragment;

    # getter for: Lcom/android/settings/ConfirmVisitorPassword$ConfirmVisitorPasswordFragment;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/ConfirmVisitorPassword$ConfirmVisitorPasswordFragment;->access$000(Lcom/android/settings/ConfirmVisitorPassword$ConfirmVisitorPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f08096e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
