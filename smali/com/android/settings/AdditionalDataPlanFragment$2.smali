.class Lcom/android/settings/AdditionalDataPlanFragment$2;
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

    iput-object p1, p0, Lcom/android/settings/AdditionalDataPlanFragment$2;->this$0:Lcom/android/settings/AdditionalDataPlanFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/AdditionalDataPlanFragment$2;->this$0:Lcom/android/settings/AdditionalDataPlanFragment;

    iget-object v1, p0, Lcom/android/settings/AdditionalDataPlanFragment$2;->this$0:Lcom/android/settings/AdditionalDataPlanFragment;

    # getter for: Lcom/android/settings/AdditionalDataPlanFragment;->mCurrentMode:I
    invoke-static {v1}, Lcom/android/settings/AdditionalDataPlanFragment;->access$000(Lcom/android/settings/AdditionalDataPlanFragment;)I

    move-result v1

    # invokes: Lcom/android/settings/AdditionalDataPlanFragment;->updatePrefernceComponent(I)V
    invoke-static {v0, v1}, Lcom/android/settings/AdditionalDataPlanFragment;->access$100(Lcom/android/settings/AdditionalDataPlanFragment;I)V

    iget-object v0, p0, Lcom/android/settings/AdditionalDataPlanFragment$2;->this$0:Lcom/android/settings/AdditionalDataPlanFragment;

    iget-object v1, p0, Lcom/android/settings/AdditionalDataPlanFragment$2;->this$0:Lcom/android/settings/AdditionalDataPlanFragment;

    invoke-virtual {v1}, Lcom/android/settings/AdditionalDataPlanFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/AdditionalDataPlanFragment$2;->this$0:Lcom/android/settings/AdditionalDataPlanFragment;

    # getter for: Lcom/android/settings/AdditionalDataPlanFragment;->mArguments:[[J
    invoke-static {v3}, Lcom/android/settings/AdditionalDataPlanFragment;->access$200(Lcom/android/settings/AdditionalDataPlanFragment;)[[J

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/AdditionalDataPlanFragment;->setDataPlan(Landroid/app/Fragment;Landroid/content/Context;I[[J)V

    iget-object v0, p0, Lcom/android/settings/AdditionalDataPlanFragment$2;->this$0:Lcom/android/settings/AdditionalDataPlanFragment;

    # invokes: Lcom/android/settings/AdditionalDataPlanFragment;->updatePrefernceVisibility()V
    invoke-static {v0}, Lcom/android/settings/AdditionalDataPlanFragment;->access$300(Lcom/android/settings/AdditionalDataPlanFragment;)V

    # invokes: Lcom/android/settings/AdditionalDataPlanFragment;->toggleEnabled()V
    invoke-static {}, Lcom/android/settings/AdditionalDataPlanFragment;->access$400()V

    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/settings/AdditionalDataPlanFragment$2;->this$0:Lcom/android/settings/AdditionalDataPlanFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/AdditionalDataPlanFragment;->mCurrentMode:I
    invoke-static {v0, v1}, Lcom/android/settings/AdditionalDataPlanFragment;->access$002(Lcom/android/settings/AdditionalDataPlanFragment;I)I

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/settings/AdditionalDataPlanFragment$2;->this$0:Lcom/android/settings/AdditionalDataPlanFragment;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/AdditionalDataPlanFragment;->mCurrentMode:I
    invoke-static {v0, v1}, Lcom/android/settings/AdditionalDataPlanFragment;->access$002(Lcom/android/settings/AdditionalDataPlanFragment;I)I

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/settings/AdditionalDataPlanFragment$2;->this$0:Lcom/android/settings/AdditionalDataPlanFragment;

    const/4 v1, 0x2

    # setter for: Lcom/android/settings/AdditionalDataPlanFragment;->mCurrentMode:I
    invoke-static {v0, v1}, Lcom/android/settings/AdditionalDataPlanFragment;->access$002(Lcom/android/settings/AdditionalDataPlanFragment;I)I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a000a -> :sswitch_0
        0x7f0a000e -> :sswitch_1
        0x7f0a0011 -> :sswitch_2
    .end sparse-switch
.end method
