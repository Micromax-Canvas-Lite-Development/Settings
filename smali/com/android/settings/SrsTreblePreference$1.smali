.class Lcom/android/settings/SrsTreblePreference$1;
.super Landroid/os/Handler;
.source "SrsTreblePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SrsTreblePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SrsTreblePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/SrsTreblePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SrsTreblePreference$1;->this$0:Lcom/android/settings/SrsTreblePreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/SrsTreblePreference$1;->this$0:Lcom/android/settings/SrsTreblePreference;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings/SrsTreblePreference;->UseHeadphones:Z

    :goto_1
    iget-object v0, p0, Lcom/android/settings/SrsTreblePreference$1;->this$0:Lcom/android/settings/SrsTreblePreference;

    # invokes: Lcom/android/settings/SrsTreblePreference;->SliderPull()V
    invoke-static {v0}, Lcom/android/settings/SrsTreblePreference;->access$000(Lcom/android/settings/SrsTreblePreference;)V

    iget-object v0, p0, Lcom/android/settings/SrsTreblePreference$1;->this$0:Lcom/android/settings/SrsTreblePreference;

    iget-object v1, p0, Lcom/android/settings/SrsTreblePreference$1;->this$0:Lcom/android/settings/SrsTreblePreference;

    iget v1, v1, Lcom/android/settings/SrsTreblePreference;->UseHighSlide:F

    # setter for: Lcom/android/settings/SrsTreblePreference;->mOldTrebleValues:F
    invoke-static {v0, v1}, Lcom/android/settings/SrsTreblePreference;->access$102(Lcom/android/settings/SrsTreblePreference;F)F

    iget-object v0, p0, Lcom/android/settings/SrsTreblePreference$1;->this$0:Lcom/android/settings/SrsTreblePreference;

    # invokes: Lcom/android/settings/SrsTreblePreference;->UISet()V
    invoke-static {v0}, Lcom/android/settings/SrsTreblePreference;->access$200(Lcom/android/settings/SrsTreblePreference;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SrsTreblePreference$1;->this$0:Lcom/android/settings/SrsTreblePreference;

    iput-boolean v1, v0, Lcom/android/settings/SrsTreblePreference;->UseHeadphones:Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
