.class public Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmDataRoamingFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;->show(Lcom/android/settings/DataUsageSummary;I)V

    return-void
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;

    invoke-direct {v0}, Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmDataRoaming"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    # getter for: Lcom/android/settings/DataUsageSummary;->sSimRoamingExt:Lcom/android/settings/ext/ISimRoamingExt;
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$2400()Lcom/android/settings/ext/ISimRoamingExt;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f080367

    invoke-interface {v3, v4, v5}, Lcom/android/settings/ext/ISimRoamingExt;->getRoamingWarningMsg(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080369

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-static {v1}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f080368

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment$1;

    invoke-direct {v4, p0}, Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment$1;-><init>(Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    :cond_0
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
