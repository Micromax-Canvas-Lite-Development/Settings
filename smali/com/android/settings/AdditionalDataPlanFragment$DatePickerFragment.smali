.class public Lcom/android/settings/AdditionalDataPlanFragment$DatePickerFragment;
.super Landroid/app/DialogFragment;
.source "AdditionalDataPlanFragment.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AdditionalDataPlanFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatePickerFragment"
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

    sput-object v0, Lcom/android/settings/AdditionalDataPlanFragment$DatePickerFragment;->sContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;Landroid/content/Context;II[[J)V
    .locals 6

    sput-object p1, Lcom/android/settings/AdditionalDataPlanFragment$DatePickerFragment;->sContext:Landroid/content/Context;

    sput-object p0, Lcom/android/settings/AdditionalDataPlanFragment$DatePickerFragment;->sParent:Landroid/app/Fragment;

    sput p3, Lcom/android/settings/AdditionalDataPlanFragment$DatePickerFragment;->sTargetId:I

    sput-object p4, Lcom/android/settings/AdditionalDataPlanFragment$DatePickerFragment;->sArgument:[[J

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

    new-instance v1, Lcom/android/settings/AdditionalDataPlanFragment$DatePickerFragment;

    invoke-direct {v1}, Lcom/android/settings/AdditionalDataPlanFragment$DatePickerFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "title"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/android/settings/AdditionalDataPlanFragment$DatePickerFragment;->setArguments(Landroid/os/Bundle;)V

    const-string v4, "dialog"

    invoke-virtual {v1, v2, v4}, Lcom/android/settings/AdditionalDataPlanFragment$DatePickerFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    const/4 v9, 0x2

    invoke-virtual {p0}, Lcom/android/settings/AdditionalDataPlanFragment$DatePickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    sget-object v1, Lcom/android/settings/AdditionalDataPlanFragment$DatePickerFragment;->sArgument:[[J

    aget-object v2, v1, v9

    sget v1, Lcom/android/settings/AdditionalDataPlanFragment$DatePickerFragment;->sTargetId:I

    const v8, 0x7f0a0013

    if-ne v1, v8, :cond_0

    sget-object v1, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_1:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v1}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v1

    :goto_0
    aget-wide v1, v2, v1

    invoke-virtual {v6, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v1, 0x5

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings/AdditionalDataPlanFragment$DatePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setTitle(I)V

    return-object v0

    :cond_0
    sget-object v1, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_2:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v1}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v1

    goto :goto_0
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    const-string v1, "AdditionalDataPlanFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "year:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " monthOfYear:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dayOfMonth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/settings/AdditionalDataPlanFragment$DatePickerFragment;->sParent:Landroid/app/Fragment;

    sget-object v2, Lcom/android/settings/AdditionalDataPlanFragment$DatePickerFragment;->sContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/AdditionalDataPlanFragment$DatePickerFragment;->sTargetId:I

    sget-object v4, Lcom/android/settings/AdditionalDataPlanFragment$DatePickerFragment;->sArgument:[[J

    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/settings/AdditionalDataPlanFragment;->setDate(Landroid/app/Fragment;Landroid/content/Context;Ljava/util/Calendar;I[[J)V

    # invokes: Lcom/android/settings/AdditionalDataPlanFragment;->toggleEnabled()V
    invoke-static {}, Lcom/android/settings/AdditionalDataPlanFragment;->access$400()V

    return-void
.end method
