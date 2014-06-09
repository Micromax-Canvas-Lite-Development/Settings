.class public Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment;
.super Landroid/app/DialogFragment;
.source "AdditionalDataPlanFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AdditionalDataPlanFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeeklyDayDialogFragment"
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

    sput-object v0, Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment;->sContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;Landroid/content/Context;II[[J)V
    .locals 6

    sput-object p1, Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment;->sContext:Landroid/content/Context;

    sput-object p0, Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment;->sParent:Landroid/app/Fragment;

    sput p3, Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment;->sTargetId:I

    sput-object p4, Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment;->sArgument:[[J

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

    new-instance v1, Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "title"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment;->setArguments(Landroid/os/Bundle;)V

    const-string v4, "dialog"

    invoke-virtual {v1, v2, v4}, Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x7

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "title"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v8, Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment;->sContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v8, 0x7f040036

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const v8, 0x7f0a0077

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/NumberPicker;

    invoke-virtual {v7, v12}, Landroid/widget/NumberPicker;->setMinValue(I)V

    invoke-virtual {v7, v11}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    sget-object v8, Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment;->sArgument:[[J

    aget-object v8, v8, v12

    sget-object v9, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_1:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v9}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v9

    aget-wide v8, v8, v9

    long-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setValue(I)V

    invoke-virtual {v7, v10}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    new-array v6, v11, [Ljava/lang/String;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x1

    :goto_0
    if-gt v2, v11, :cond_0

    invoke-virtual {v0, v11, v2}, Ljava/util/Calendar;->set(II)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v8, "E"

    invoke-direct {v3, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v7, v6}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/widget/NumberPicker;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setInputType(I)V

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f020080

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0808cd

    new-instance v10, Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment$1;

    invoke-direct {v10, p0, v7}, Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment$1;-><init>(Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment;Landroid/widget/NumberPicker;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    return-object v8
.end method
