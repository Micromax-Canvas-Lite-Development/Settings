.class public Lcom/android/settings/SrsTreblePreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "SrsTreblePreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field public static final EVENT_HEADSET_PLUG_STATE_CHANGED:I = 0x1

.field private static final MAXIMUM_TREBEL:I = 0xc8


# instance fields
.field HeadsetCB:Landroid/content/BroadcastReceiver;

.field HeadsetHandler:Landroid/os/Handler;

.field HighSlideParam:Ljava/lang/String;

.field UseHeadphones:Z

.field UseHighSlide:F

.field UsePreset:I

.field private mOldTrebleValues:F

.field private mRestoredOldState:Z

.field private mTrebleSeekBar:Landroid/widget/SeekBar;

.field private mcontext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v7, p0, Lcom/android/settings/SrsTreblePreference;->UseHeadphones:Z

    iput v7, p0, Lcom/android/settings/SrsTreblePreference;->UsePreset:I

    invoke-virtual {p0}, Lcom/android/settings/SrsTreblePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SrsTreblePreference;->mcontext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/SrsTreblePreference;->mcontext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v5, "srs_cfg:trumedia_preset"

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_2

    aget-object v5, v2, v1

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    aget-object v5, v3, v7

    const-string v6, "srs_cfg:trumedia_preset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/settings/SrsTreblePreference;->UsePreset:I

    goto :goto_1

    :cond_2
    new-instance v5, Lcom/android/settings/SrsTreblePreference$1;

    invoke-direct {v5, p0}, Lcom/android/settings/SrsTreblePreference$1;-><init>(Lcom/android/settings/SrsTreblePreference;)V

    iput-object v5, p0, Lcom/android/settings/SrsTreblePreference;->HeadsetHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/settings/SrsTreblePreference$2;

    invoke-direct {v5, p0}, Lcom/android/settings/SrsTreblePreference$2;-><init>(Lcom/android/settings/SrsTreblePreference;)V

    iput-object v5, p0, Lcom/android/settings/SrsTreblePreference;->HeadsetCB:Landroid/content/BroadcastReceiver;

    const v5, 0x7f02008e

    invoke-virtual {p0, v5}, Lcom/android/settings/SrsTreblePreference;->setDialogIcon(I)V

    return-void
.end method

.method private SliderPull()V
    .locals 8

    const/4 v7, 0x1

    iget-boolean v5, p0, Lcom/android/settings/SrsTreblePreference;->UseHeadphones:Z

    if-nez v5, :cond_3

    iget v5, p0, Lcom/android/settings/SrsTreblePreference;->UsePreset:I

    if-nez v5, :cond_1

    const-string v5, "srs_mus_int:wowhd_definition_slide"

    iput-object v5, p0, Lcom/android/settings/SrsTreblePreference;->HighSlideParam:Ljava/lang/String;

    :goto_0
    iget-object v5, p0, Lcom/android/settings/SrsTreblePreference;->mcontext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/android/settings/SrsTreblePreference;->HighSlideParam:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_7

    aget-object v5, v2, v1

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x2

    if-ge v5, v6, :cond_6

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget v5, p0, Lcom/android/settings/SrsTreblePreference;->UsePreset:I

    if-ne v5, v7, :cond_2

    const-string v5, "srs_mov_int:wowhd_definition_slide"

    iput-object v5, p0, Lcom/android/settings/SrsTreblePreference;->HighSlideParam:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v5, "srs_pod_int:wowhd_definition_slide"

    iput-object v5, p0, Lcom/android/settings/SrsTreblePreference;->HighSlideParam:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/android/settings/SrsTreblePreference;->UsePreset:I

    if-nez v5, :cond_4

    const-string v5, "srs_mus_ext:wowhd_definition_slide"

    iput-object v5, p0, Lcom/android/settings/SrsTreblePreference;->HighSlideParam:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget v5, p0, Lcom/android/settings/SrsTreblePreference;->UsePreset:I

    if-ne v5, v7, :cond_5

    const-string v5, "srs_mov_ext:cshp_definition_slide"

    iput-object v5, p0, Lcom/android/settings/SrsTreblePreference;->HighSlideParam:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v5, "srs_pod_ext:wowhd_definition_slide"

    iput-object v5, p0, Lcom/android/settings/SrsTreblePreference;->HighSlideParam:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const/4 v5, 0x0

    aget-object v5, v3, v5

    iget-object v6, p0, Lcom/android/settings/SrsTreblePreference;->HighSlideParam:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object v5, v3, v7

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, p0, Lcom/android/settings/SrsTreblePreference;->UseHighSlide:F

    goto :goto_2

    :cond_7
    return-void
.end method

.method private UISet()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/SrsTreblePreference;->mTrebleSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/SrsTreblePreference;->UseHighSlide:F

    const/high16 v2, 0x432f0000

    mul-float/2addr v1, v2

    const/high16 v2, 0x41700000

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SrsTreblePreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SrsTreblePreference;->SliderPull()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/SrsTreblePreference;F)F
    .locals 0

    iput p1, p0, Lcom/android/settings/SrsTreblePreference;->mOldTrebleValues:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/SrsTreblePreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SrsTreblePreference;->UISet()V

    return-void
.end method

.method private restoreOldState()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/SrsTreblePreference;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/settings/SrsTreblePreference;->mOldTrebleValues:F

    invoke-direct {p0, v0}, Lcom/android/settings/SrsTreblePreference;->saveToBothMode(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SrsTreblePreference;->mRestoredOldState:Z

    goto :goto_0
.end method

.method private saveToBothMode(F)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/SrsTreblePreference;->mcontext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "srs_mus_int:wowhd_definition_slide="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "srs_mov_int:wowhd_definition_slide="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "srs_mus_ext:wowhd_definition_slide="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "srs_mov_ext:cshp_definition_slide="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/settings/SrsTreblePreference;->SliderPull()V

    invoke-static {p1}, Lcom/android/settings/SrsTreblePreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SrsTreblePreference;->mTrebleSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/android/settings/SrsTreblePreference;->mTrebleSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget v0, p0, Lcom/android/settings/SrsTreblePreference;->UseHighSlide:F

    iput v0, p0, Lcom/android/settings/SrsTreblePreference;->mOldTrebleValues:F

    invoke-direct {p0}, Lcom/android/settings/SrsTreblePreference;->UISet()V

    iget-object v0, p0, Lcom/android/settings/SrsTreblePreference;->mTrebleSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/SrsTreblePreference;->mcontext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/SrsTreblePreference;->HeadsetCB:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/SrsTreblePreference;->mcontext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/SrsTreblePreference;->HeadsetCB:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/SrsTreblePreference;->restoreOldState()V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    const/high16 v4, 0x3f800000

    const/4 v3, 0x0

    int-to-float v1, p2

    const/high16 v2, 0x41700000

    sub-float/2addr v1, v2

    const/high16 v2, 0x432f0000

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/settings/SrsTreblePreference;->UseHighSlide:F

    iget v1, p0, Lcom/android/settings/SrsTreblePreference;->UseHighSlide:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    iput v3, p0, Lcom/android/settings/SrsTreblePreference;->UseHighSlide:F

    :cond_0
    iget v1, p0, Lcom/android/settings/SrsTreblePreference;->UseHighSlide:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    iput v4, p0, Lcom/android/settings/SrsTreblePreference;->UseHighSlide:F

    :cond_1
    iget-object v1, p0, Lcom/android/settings/SrsTreblePreference;->mcontext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/SrsTreblePreference;->HighSlideParam:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/SrsTreblePreference;->UseHighSlide:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";srs_processing_defersave"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget v0, p0, Lcom/android/settings/SrsTreblePreference;->UseHighSlide:F

    invoke-direct {p0, v0}, Lcom/android/settings/SrsTreblePreference;->saveToBothMode(F)V

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->showDialog(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SrsTreblePreference;->mRestoredOldState:Z

    return-void
.end method
