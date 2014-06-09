.class Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;

    invoke-virtual {v2}, Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DataUsageSummary;

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;

    invoke-virtual {v2}, Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;->getTargetRequestCode()I

    move-result v0

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    # invokes: Lcom/android/settings/DataUsageSummary;->setDataRoaming(IZ)V
    invoke-static {v1, v0, v3}, Lcom/android/settings/DataUsageSummary;->access$5000(Lcom/android/settings/DataUsageSummary;IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    # invokes: Lcom/android/settings/DataUsageSummary;->setDataRoaming(Z)V
    invoke-static {v1, v3}, Lcom/android/settings/DataUsageSummary;->access$5100(Lcom/android/settings/DataUsageSummary;Z)V

    goto :goto_0
.end method
