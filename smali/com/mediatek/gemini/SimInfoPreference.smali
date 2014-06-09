.class public Lcom/mediatek/gemini/SimInfoPreference;
.super Landroid/preference/Preference;
.source "SimInfoPreference.java"


# static fields
.field private static final DISPLAY_FIRST_FOUR:I = 0x1

.field private static final DISPLAY_LAST_FOUR:I = 0x2

.field private static final DISPLAY_NONE:I = 0x0

.field private static final NUMFORMAT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SimInfoPreference"


# instance fields
.field private mChecked:Z

.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private mName:Ljava/lang/String;

.field private mNeedCheckbox:Z

.field private mNeedStatus:Z

.field private mNumDisplayFormat:I

.field private mSimNum:Ljava/lang/String;

.field protected final mSlotIndex:I

.field private mStatus:I

.field private mUseCheckBox:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIJZ)V
    .locals 12

    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/mediatek/gemini/SimInfoPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIJZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIJZZ)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mChecked:Z

    iput-boolean v1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedCheckbox:Z

    iput-boolean v1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedStatus:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mUseCheckBox:Z

    iput-object p2, p0, Lcom/mediatek/gemini/SimInfoPreference;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    iput p4, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSlotIndex:I

    iput p5, p0, Lcom/mediatek/gemini/SimInfoPreference;->mStatus:I

    iput p6, p0, Lcom/mediatek/gemini/SimInfoPreference;->mColor:I

    iput p7, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNumDisplayFormat:I

    iput-boolean p10, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedCheckbox:Z

    iput-boolean p11, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedStatus:Z

    iput-object p1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mContext:Landroid/content/Context;

    invoke-static {p8, p9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimInfoPreference;->setKey(Ljava/lang/String;)V

    const v0, 0x7f04007a

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimInfoPreference;->setLayoutResource(I)V

    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimInfoPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIJZZZ)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mChecked:Z

    iput-boolean v1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedCheckbox:Z

    iput-boolean v1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedStatus:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mUseCheckBox:Z

    iput-object p2, p0, Lcom/mediatek/gemini/SimInfoPreference;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    iput p4, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSlotIndex:I

    iput p5, p0, Lcom/mediatek/gemini/SimInfoPreference;->mStatus:I

    iput p6, p0, Lcom/mediatek/gemini/SimInfoPreference;->mColor:I

    iput p7, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNumDisplayFormat:I

    iput-boolean p10, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedCheckbox:Z

    iput-boolean p11, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedStatus:Z

    iput-object p1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mContext:Landroid/content/Context;

    iput-boolean p12, p0, Lcom/mediatek/gemini/SimInfoPreference;->mUseCheckBox:Z

    invoke-static {p8, p9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimInfoPreference;->setKey(Ljava/lang/String;)V

    const v0, 0x7f04007b

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimInfoPreference;->setLayoutResource(I)V

    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimInfoPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method getCheck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mChecked:Z

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v8, 0x1020016

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v8, p0, Lcom/mediatek/gemini/SimInfoPreference;->mName:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/mediatek/gemini/SimInfoPreference;->mName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v8, 0x1020010

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v8, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v3}, Landroid/widget/TextView;->isShown()Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v8, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    const v8, 0x7f0a0132

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-boolean v8, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedStatus:Z

    if-eqz v8, :cond_9

    iget v8, p0, Lcom/mediatek/gemini/SimInfoPreference;->mStatus:I

    invoke-static {v8}, Lcom/mediatek/gemini/GeminiUtils;->getStatusResource(I)I

    move-result v2

    const/4 v8, -0x1

    if-ne v2, v8, :cond_8

    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_1
    const v8, 0x7f0a0131

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_4

    iget v8, p0, Lcom/mediatek/gemini/SimInfoPreference;->mColor:I

    invoke-static {v8}, Lcom/mediatek/gemini/GeminiUtils;->getSimColorResource(I)I

    move-result v2

    if-gez v2, :cond_a

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_2
    const-string v8, "SimInfoPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mUseCheckBox="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/mediatek/gemini/SimInfoPreference;->mUseCheckBox:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mChecked="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/mediatek/gemini/SimInfoPreference;->mChecked:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v8, p0, Lcom/mediatek/gemini/SimInfoPreference;->mUseCheckBox:Z

    if-nez v8, :cond_e

    const v8, 0x7f0a0135

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    if-eqz v0, :cond_5

    iget-boolean v8, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedCheckbox:Z

    if-eqz v8, :cond_d

    const-string v8, "tablet"

    const-string v9, "ro.build.characteristics"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget v8, p0, Lcom/mediatek/gemini/SimInfoPreference;->mStatus:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_b

    iget-boolean v8, p0, Lcom/mediatek/gemini/SimInfoPreference;->mChecked:Z

    invoke-virtual {v0, v8}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_5
    :goto_3
    const v8, 0x7f0a0133

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v3, :cond_6

    iget-object v8, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    if-eqz v8, :cond_6

    iget v8, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNumDisplayFormat:I

    packed-switch v8, :pswitch_data_0

    :cond_6
    :goto_4
    return-object v6

    :cond_7
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_9
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v7, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_2

    :cond_b
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_3

    :cond_c
    iget-boolean v8, p0, Lcom/mediatek/gemini/SimInfoPreference;->mChecked:Z

    invoke-virtual {v0, v8}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_3

    :cond_d
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/Switch;->setVisibility(I)V

    goto :goto_3

    :cond_e
    const v8, 0x7f0a0135

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_5

    iget-boolean v8, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedCheckbox:Z

    if-eqz v8, :cond_f

    iget-boolean v8, p0, Lcom/mediatek/gemini/SimInfoPreference;->mChecked:Z

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    :cond_f
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_3

    :pswitch_0
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :pswitch_1
    iget-object v8, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-lt v8, v9, :cond_10

    iget-object v8, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_10
    iget-object v8, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :pswitch_2
    iget-object v8, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-lt v8, v9, :cond_11

    iget-object v8, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_11
    iget-object v8, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setCheck(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mChecked:Z

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimInfoPreference;->notifyChanged()V

    return-void
.end method

.method setColor(I)V
    .locals 0

    iput p1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mColor:I

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimInfoPreference;->notifyChanged()V

    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimInfoPreference;->notifyChanged()V

    return-void
.end method

.method public setNeedCheckBox(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedCheckbox:Z

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimInfoPreference;->notifyChanged()V

    return-void
.end method

.method setNumDisplayFormat(I)V
    .locals 0

    iput p1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNumDisplayFormat:I

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimInfoPreference;->notifyChanged()V

    return-void
.end method

.method setNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimInfoPreference;->notifyChanged()V

    return-void
.end method

.method setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mStatus:I

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimInfoPreference;->notifyChanged()V

    return-void
.end method
