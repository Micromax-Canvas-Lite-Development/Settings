.class public Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;
.super Landroid/app/Fragment;
.source "VisitorPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VisitorPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisitorPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;
    }
.end annotation


# static fields
.field private static final CONFIRM_EXISTING_REQUEST:I = 0x3a

.field private static final ERROR_MESSAGE_TIMEOUT:J = 0xbb8L

.field private static final KEY_FIRST_PIN:Ljava/lang/String; = "first_pin"

.field private static final KEY_UI_STAGE:Ljava/lang/String; = "ui_stage"

.field private static final MSG_SHOW_ERROR:I = 0x1

.field static final RESULT_FINISHED:I = 0x1


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mRequestedQuality:I

.field private mUiStage:Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMinLength:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMaxLength:I

    iput v1, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMinLetters:I

    iput v1, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMinUpperCase:I

    iput v1, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMinLowerCase:I

    iput v1, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMinSymbols:I

    iput v1, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMinNumeric:I

    iput v1, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMinNonLetter:I

    const/high16 v0, 0x50000

    iput v0, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mRequestedQuality:I

    sget-object v0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;->Introduction:Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mUiStage:Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;

    new-instance v0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$1;-><init>(Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private confirmPassword(I)Z
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ConfirmVisitorPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return v3
.end method

.method private handleNext()V
    .locals 6

    iget-object v3, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mUiStage:Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;

    sget-object v4, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;->Introduction:Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;

    if-ne v3, v4, :cond_3

    invoke-direct {p0, v1}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iput-object v1, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mFirstPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v3, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;

    invoke-virtual {p0, v3}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->updateStage(Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;)V

    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mUiStage:Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;

    invoke-direct {p0, v0, v3}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->showError(Ljava/lang/String;Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mUiStage:Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;

    sget-object v4, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v1}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->saveVisitorPassword(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->setVisitorPassword(I)V

    invoke-virtual {p0}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object v3, v2

    check-cast v3, Landroid/text/Spannable;

    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_5
    sget-object v3, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;

    invoke-virtual {p0, v3}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->updateStage(Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;)V

    goto :goto_1
.end method

.method private saveVisitorPassword(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "visitor_password"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private setVisitorPassword(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "visitor_password_enable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private updateUi()V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v6, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mUiStage:Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;

    sget-object v7, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;->Introduction:Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;

    if-ne v6, v7, :cond_2

    if-lez v1, :cond_2

    iget v6, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMinLength:I

    if-ge v1, v6, :cond_0

    const v6, 0x7f0803c2

    new-array v4, v4, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMinLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {p0, v6, v4}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    iget-object v4, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mNextButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mUiStage:Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;

    iget v5, v5, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;->buttonText:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    return-void

    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v6, 0x7f0803c4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mUiStage:Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;

    iget v7, v7, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;->alphaHint:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mNextButton:Landroid/widget/Button;

    if-lez v1, :cond_3

    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    iget v11, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMinLength:I

    if-ge v10, v11, :cond_0

    const v10, 0x7f0803c2

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMinLength:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :goto_0
    return-object v10

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    iget v11, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMaxLength:I

    if-le v10, v11, :cond_1

    const v10, 0x7f0803c6

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMaxLength:I

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v3, v10, :cond_7

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v10, 0x20

    if-lt v2, v10, :cond_2

    const/16 v10, 0x7f

    if-le v2, v10, :cond_3

    :cond_2
    const v10, 0x7f0803ca

    invoke-virtual {p0, v10}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_3
    const/16 v10, 0x30

    if-lt v2, v10, :cond_4

    const/16 v10, 0x39

    if-gt v2, v10, :cond_4

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/16 v10, 0x41

    if-lt v2, v10, :cond_5

    const/16 v10, 0x5a

    if-gt v2, v10, :cond_5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    const/16 v10, 0x61

    if-lt v2, v10, :cond_6

    const/16 v10, 0x7a

    if-gt v2, v10, :cond_6

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    const/high16 v10, 0x20000

    iget v11, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_9

    if-gtz v4, :cond_8

    if-lez v8, :cond_9

    :cond_8
    const v10, 0x7f0803c8

    invoke-virtual {p0, v10}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_9
    const/high16 v10, 0x60000

    iget v11, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_f

    iget v10, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMinLetters:I

    if-ge v4, v10, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f0001

    iget v12, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMinLetters:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :cond_a
    iget v10, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMinNumeric:I

    if-ge v7, v10, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f0004

    iget v12, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMinNumeric:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :cond_b
    iget v10, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMinLowerCase:I

    if-ge v5, v10, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f0002

    iget v12, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMinLowerCase:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :cond_c
    iget v10, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMinUpperCase:I

    if-ge v9, v10, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f0003

    iget v12, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMinUpperCase:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :cond_d
    iget v10, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMinSymbols:I

    if-ge v8, v10, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f0005

    iget v12, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMinSymbols:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :cond_e
    iget v10, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMinNonLetter:I

    if-ge v6, v10, :cond_14

    invoke-virtual {p0}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f0006

    iget v12, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordMinNonLetter:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :cond_f
    const/high16 v10, 0x40000

    iget v11, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_11

    const/4 v0, 0x1

    :goto_3
    const/high16 v10, 0x50000

    iget v11, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_12

    const/4 v1, 0x1

    :goto_4
    if-nez v0, :cond_10

    if-eqz v1, :cond_13

    :cond_10
    if-nez v4, :cond_13

    const v10, 0x7f0803cb

    invoke-virtual {p0, v10}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :cond_11
    const/4 v0, 0x0

    goto :goto_3

    :cond_12
    const/4 v1, 0x0

    goto :goto_4

    :cond_13
    if-eqz v1, :cond_14

    if-nez v7, :cond_14

    const v10, 0x7f0803cc

    invoke-virtual {p0, v10}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :cond_14
    const/4 v10, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mUiStage:Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mUiStage:Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->updateUi()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const-string v0, "visitorpassword"

    const-string v1, "===wangying onActivityResult==="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->handleNext()V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->setVisitorPassword(I)V

    invoke-virtual {p0}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a003a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    const v9, 0x7f04001a

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v9, 0x7f0a003a

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mCancelButton:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v9, 0x7f0a003b

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mNextButton:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v9, 0x7f0a003c

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v9, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    const v9, 0x7f0a0039

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v9, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v9, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v9, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v9, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v10, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v11, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v9, v0, v10, v11}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v9, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v9, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    const v9, 0x7f0a0037

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v9}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    iget-object v9, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    iget-object v9, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setInputType(I)V

    invoke-virtual {p0}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "visitor_password_enable"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez p3, :cond_2

    sget-object v9, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;->Introduction:Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;

    invoke-virtual {p0, v9}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->updateStage(Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;)V

    if-eqz v8, :cond_0

    const-string v9, "visitorpassword"

    const-string v10, "===wangying before start confirm visitor password==="

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "visitorpassword"

    const-string v10, "===wangying after start confirm visitor password==="

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string v9, "visitorpassword"

    const-string v10, "===wangying oncreateview 111111==="

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v9, v0, Landroid/preference/PreferenceActivity;

    if-eqz v9, :cond_1

    move-object v4, v0

    check-cast v4, Landroid/preference/PreferenceActivity;

    const v2, 0x7f08096d

    invoke-virtual {p0, v2}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6, v6}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const-string v9, "visitorpassword"

    const-string v10, "===wangying oncreateview 2222==="

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v7

    :cond_2
    const-string v9, "first_pin"

    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mFirstPin:Ljava/lang/String;

    const-string v9, "ui_stage"

    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v5}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mUiStage:Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;

    iget-object v9, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mUiStage:Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;

    invoke-virtual {p0, v9}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->updateStage(Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;)V

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->handleNext()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mUiStage:Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->updateStage(Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;)V

    iget-object v0, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mUiStage:Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected updateStage(Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mUiStage:Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;

    iput-object p1, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mUiStage:Lcom/android/settings/VisitorPassword$VisitorPasswordFragment$Stage;

    invoke-direct {p0}, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->updateUi()V

    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/VisitorPassword$VisitorPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
