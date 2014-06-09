.class Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment$1;
.super Ljava/lang/Object;
.source "AdditionalDataPlanFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment;

.field final synthetic val$weekDayPicker:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment;Landroid/widget/NumberPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment$1;->this$0:Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment;

    iput-object p2, p0, Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment$1;->val$weekDayPicker:Landroid/widget/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment$1;->val$weekDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->clearFocus()V

    sget-object v0, Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment;->sParent:Landroid/app/Fragment;

    sget-object v1, Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment;->sContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment$1;->val$weekDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    sget v3, Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment;->sTargetId:I

    sget-object v4, Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment;->sArgument:[[J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/AdditionalDataPlanFragment;->setWeekDay(Landroid/app/Fragment;Landroid/content/Context;II[[J)V

    # invokes: Lcom/android/settings/AdditionalDataPlanFragment;->toggleEnabled()V
    invoke-static {}, Lcom/android/settings/AdditionalDataPlanFragment;->access$400()V

    return-void
.end method
