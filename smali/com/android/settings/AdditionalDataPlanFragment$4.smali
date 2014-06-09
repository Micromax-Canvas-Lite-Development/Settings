.class Lcom/android/settings/AdditionalDataPlanFragment$4;
.super Ljava/lang/Object;
.source "AdditionalDataPlanFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AdditionalDataPlanFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AdditionalDataPlanFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AdditionalDataPlanFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/AdditionalDataPlanFragment$4;->this$0:Lcom/android/settings/AdditionalDataPlanFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/AdditionalDataPlanFragment$4;->this$0:Lcom/android/settings/AdditionalDataPlanFragment;

    iget-object v1, p0, Lcom/android/settings/AdditionalDataPlanFragment$4;->this$0:Lcom/android/settings/AdditionalDataPlanFragment;

    invoke-virtual {v1}, Lcom/android/settings/AdditionalDataPlanFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08000c

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/AdditionalDataPlanFragment$4;->this$0:Lcom/android/settings/AdditionalDataPlanFragment;

    # getter for: Lcom/android/settings/AdditionalDataPlanFragment;->mArguments:[[J
    invoke-static {v4}, Lcom/android/settings/AdditionalDataPlanFragment;->access$200(Lcom/android/settings/AdditionalDataPlanFragment;)[[J

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment;->show(Landroid/app/Fragment;Landroid/content/Context;II[[J)V

    return-void
.end method
