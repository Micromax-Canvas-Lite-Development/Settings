.class Lcom/android/settings/SrsBassPreference$1;
.super Landroid/os/Handler;
.source "SrsBassPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SrsBassPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SrsBassPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/SrsBassPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SrsBassPreference$1;->this$0:Lcom/android/settings/SrsBassPreference;

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

    iget-object v0, p0, Lcom/android/settings/SrsBassPreference$1;->this$0:Lcom/android/settings/SrsBassPreference;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings/SrsBassPreference;->UseHeadphones:Z

    :goto_1
    iget-object v0, p0, Lcom/android/settings/SrsBassPreference$1;->this$0:Lcom/android/settings/SrsBassPreference;

    # invokes: Lcom/android/settings/SrsBassPreference;->SliderPull()V
    invoke-static {v0}, Lcom/android/settings/SrsBassPreference;->access$000(Lcom/android/settings/SrsBassPreference;)V

    iget-object v0, p0, Lcom/android/settings/SrsBassPreference$1;->this$0:Lcom/android/settings/SrsBassPreference;

    iget-object v1, p0, Lcom/android/settings/SrsBassPreference$1;->this$0:Lcom/android/settings/SrsBassPreference;

    iget v1, v1, Lcom/android/settings/SrsBassPreference;->UseDeepSlide:F

    # setter for: Lcom/android/settings/SrsBassPreference;->mOldBassValues:F
    invoke-static {v0, v1}, Lcom/android/settings/SrsBassPreference;->access$102(Lcom/android/settings/SrsBassPreference;F)F

    iget-object v0, p0, Lcom/android/settings/SrsBassPreference$1;->this$0:Lcom/android/settings/SrsBassPreference;

    # invokes: Lcom/android/settings/SrsBassPreference;->UISet()V
    invoke-static {v0}, Lcom/android/settings/SrsBassPreference;->access$200(Lcom/android/settings/SrsBassPreference;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SrsBassPreference$1;->this$0:Lcom/android/settings/SrsBassPreference;

    iput-boolean v1, v0, Lcom/android/settings/SrsBassPreference;->UseHeadphones:Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
