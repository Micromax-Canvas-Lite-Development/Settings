.class public Lcom/mediatek/voicesettings/RadioButtonPreference;
.super Landroid/preference/Preference;
.source "RadioButtonPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioButtonPreference"


# instance fields
.field private mIsChecked:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "title"

    const-string v1, "summary"

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/voicesettings/RadioButtonPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0400a5

    invoke-virtual {p0, v0}, Lcom/mediatek/voicesettings/RadioButtonPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/voicesettings/RadioButtonPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mediatek/voicesettings/RadioButtonPreference;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/mediatek/voicesettings/RadioButtonPreference;->mSummary:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/mediatek/voicesettings/RadioButtonPreference;->mIsChecked:Z

    const v0, 0x7f0400a5

    invoke-virtual {p0, v0}, Lcom/mediatek/voicesettings/RadioButtonPreference;->setLayoutResource(I)V

    iget-object v0, p0, Lcom/mediatek/voicesettings/RadioButtonPreference;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/voicesettings/RadioButtonPreference;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/voicesettings/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/mediatek/voicesettings/RadioButtonPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/voicesettings/RadioButtonPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/voicesettings/RadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a0017

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/voicesettings/RadioButtonPreference;->mRadioButton:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/mediatek/voicesettings/RadioButtonPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/voicesettings/RadioButtonPreference;->mRadioButton:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/mediatek/voicesettings/RadioButtonPreference;->mIsChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "RadioButtonPreference"

    const-string v1, "radio button can\'t be find"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/voicesettings/RadioButtonPreference;->mIsChecked:Z

    invoke-virtual {p0}, Lcom/mediatek/voicesettings/RadioButtonPreference;->notifyChanged()V

    return-void
.end method
