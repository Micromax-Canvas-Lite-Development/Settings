.class public Lcom/android/settings/AdditionalDataPlanFragment$WarningFlowDialogFragment;
.super Landroid/app/DialogFragment;
.source "AdditionalDataPlanFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AdditionalDataPlanFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WarningFlowDialogFragment"
.end annotation


# static fields
.field static sArgument:[[J

.field static sContext:Landroid/content/Context;

.field static sParent:Landroid/app/Fragment;

.field static sTargetId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/AdditionalDataPlanFragment$WarningFlowDialogFragment;->sContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;Landroid/content/Context;II[[J)V
    .locals 6

    sput-object p1, Lcom/android/settings/AdditionalDataPlanFragment$WarningFlowDialogFragment;->sContext:Landroid/content/Context;

    sput-object p0, Lcom/android/settings/AdditionalDataPlanFragment$WarningFlowDialogFragment;->sParent:Landroid/app/Fragment;

    sput p3, Lcom/android/settings/AdditionalDataPlanFragment$WarningFlowDialogFragment;->sTargetId:I

    sput-object p4, Lcom/android/settings/AdditionalDataPlanFragment$WarningFlowDialogFragment;->sArgument:[[J

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "dialog"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    new-instance v1, Lcom/android/settings/AdditionalDataPlanFragment$WarningFlowDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/AdditionalDataPlanFragment$WarningFlowDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "title"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/android/settings/AdditionalDataPlanFragment$WarningFlowDialogFragment;->setArguments(Landroid/os/Bundle;)V

    const-string v4, "dialog"

    invoke-virtual {v1, v2, v4}, Lcom/android/settings/AdditionalDataPlanFragment$WarningFlowDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/settings/AdditionalDataPlanFragment$WarningFlowDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    sget-object v5, Lcom/android/settings/AdditionalDataPlanFragment$WarningFlowDialogFragment;->sContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v5, 0x7f04002c

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a005b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    invoke-virtual {v0, v9}, Landroid/widget/NumberPicker;->setMinValue(I)V

    const v5, 0x7fffffff

    invoke-virtual {v0, v5}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    const/4 v2, 0x0

    sget v5, Lcom/android/settings/AdditionalDataPlanFragment$WarningFlowDialogFragment;->sTargetId:I

    const v6, 0x7f0a000a

    if-ne v5, v6, :cond_0

    const/4 v2, 0x0

    :goto_0
    sget-object v5, Lcom/android/settings/AdditionalDataPlanFragment$WarningFlowDialogFragment;->sArgument:[[J

    aget-object v5, v5, v2

    sget-object v6, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->WARNING_BYTE:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v6}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v6

    aget-wide v5, v5, v6

    const-wide/32 v7, 0x100000

    div-long/2addr v5, v7

    long-to-int v5, v5

    invoke-virtual {v0, v5}, Landroid/widget/NumberPicker;->setValue(I)V

    invoke-virtual {v0, v9}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AdditionalDataPlanFragment$WarningFlowDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f020080

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0808cd

    new-instance v7, Lcom/android/settings/AdditionalDataPlanFragment$WarningFlowDialogFragment$1;

    invoke-direct {v7, p0, v0}, Lcom/android/settings/AdditionalDataPlanFragment$WarningFlowDialogFragment$1;-><init>(Lcom/android/settings/AdditionalDataPlanFragment$WarningFlowDialogFragment;Landroid/widget/NumberPicker;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    :cond_0
    sget v5, Lcom/android/settings/AdditionalDataPlanFragment$WarningFlowDialogFragment;->sTargetId:I

    const v6, 0x7f0a000e

    if-ne v5, v6, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    sget v5, Lcom/android/settings/AdditionalDataPlanFragment$WarningFlowDialogFragment;->sTargetId:I

    const v6, 0x7f0a0011

    if-ne v5, v6, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "unknown warning mode"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
