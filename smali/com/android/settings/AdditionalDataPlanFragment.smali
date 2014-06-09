.class public Lcom/android/settings/AdditionalDataPlanFragment;
.super Landroid/app/Fragment;
.source "AdditionalDataPlanFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AdditionalDataPlanFragment$DatePickerFragment;,
        Lcom/android/settings/AdditionalDataPlanFragment$WeeklyDayDialogFragment;,
        Lcom/android/settings/AdditionalDataPlanFragment$WarningFlowDialogFragment;,
        Lcom/android/settings/AdditionalDataPlanFragment$DetailsActivity;,
        Lcom/android/settings/AdditionalDataPlanFragment$Arguments;
    }
.end annotation


# static fields
.field private static final ACTION_ENABLE_DATA_PLAN:Ljava/lang/String; = "com.acer.android.action.ENABLE_DATA_PLAN"

.field private static final ACTION_SET_DATA_PLAN:Ljava/lang/String; = "com.acer.android.action.SET_DATA_PLAN"

.field public static final DAILY:I = 0x0

.field private static final EXTRA_ARGUMENTS_ARRAY:Ljava/lang/String; = "argumentsArray"

.field private static final EXTRA_ENABLED:Ljava/lang/String; = "enabled"

.field public static final FALSE:I = 0x0

.field private static final KEY_CURRENT_MODE:Ljava/lang/String; = "mode"

.field private static final KEY_DAIYLY_WARNING_FLOW:Ljava/lang/String; = "daily_warning_flow"

.field private static final KEY_ENABLED:Ljava/lang/String; = "enabled"

.field private static final KEY_PERIOD_BEGINNING:Ljava/lang/String; = "period_beginning"

.field private static final KEY_PERIOD_END:Ljava/lang/String; = "period_end"

.field private static final KEY_PERIOD_WARNING_FLOW:Ljava/lang/String; = "period_warning_flow"

.field private static final KEY_WEEKLY_CYCLE_BEGINNING:Ljava/lang/String; = "weekly_cycle_beginning"

.field private static final KEY_WEEKLY_WARNING_FLOW:Ljava/lang/String; = "weekly_warning_flow"

.field private static final MB_IN_BYTES:J = 0x100000L

.field private static final NAME_DATA_PLAN_PACKAGE:Ljava/lang/String; = "com.acer.android.datatraffic"

.field private static final NAME_DATA_PLAN_SERVICE:Ljava/lang/String; = "com.acer.android.datatraffic.UpdateService"

.field public static final PERIOD:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AdditionalDataPlanFragment"

.field private static final TAG_ADDITIONAL_DATAPLAN:Ljava/lang/String; = "additionalDataPlan"

.field public static final TOTAL:I = 0x3

.field public static final TRUE:I = 0x1

.field public static final WEEKLY:I = 0x1

.field private static mAdditionalReminderSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mArguments:[[J

.field private mCurrentMode:I

.field private mDailyRadioBtn:Landroid/widget/RadioButton;

.field private mDailyView:Landroid/view/View;

.field private mDailyWarningFlow:Landroid/widget/TextView;

.field private mDataPlanChooserListener:Landroid/view/View$OnClickListener;

.field private mPeriodBeginning:Landroid/widget/TextView;

.field private mPeriodEnd:Landroid/widget/TextView;

.field private mPeriodRadioBtn:Landroid/widget/RadioButton;

.field private mPeriodView:Landroid/view/View;

.field private mPeriodWarningFlow:Landroid/widget/TextView;

.field private mRootView:Landroid/view/View;

.field mSetDateListener:Landroid/view/View$OnClickListener;

.field mSetWeekDayListener:Landroid/view/View$OnClickListener;

.field mWarningFlowListener:Landroid/view/View$OnClickListener;

.field private mWeeklyCycle:Landroid/widget/TextView;

.field private mWeeklyRadioBtn:Landroid/widget/RadioButton;

.field private mWeeklyView:Landroid/view/View;

.field private mWeeklyWarningFlow:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/AdditionalDataPlanFragment;->mAdditionalReminderSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mCurrentMode:I

    const/4 v0, 0x3

    sget-object v1, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TOTAL:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v1}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mArguments:[[J

    new-instance v0, Lcom/android/settings/AdditionalDataPlanFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/AdditionalDataPlanFragment$2;-><init>(Lcom/android/settings/AdditionalDataPlanFragment;)V

    iput-object v0, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mDataPlanChooserListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/AdditionalDataPlanFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/AdditionalDataPlanFragment$3;-><init>(Lcom/android/settings/AdditionalDataPlanFragment;)V

    iput-object v0, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mWarningFlowListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/AdditionalDataPlanFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/AdditionalDataPlanFragment$4;-><init>(Lcom/android/settings/AdditionalDataPlanFragment;)V

    iput-object v0, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mSetWeekDayListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/AdditionalDataPlanFragment$5;

    invoke-direct {v0, p0}, Lcom/android/settings/AdditionalDataPlanFragment$5;-><init>(Lcom/android/settings/AdditionalDataPlanFragment;)V

    iput-object v0, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mSetDateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AdditionalDataPlanFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mCurrentMode:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/AdditionalDataPlanFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mCurrentMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/AdditionalDataPlanFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/AdditionalDataPlanFragment;->updatePrefernceComponent(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/AdditionalDataPlanFragment;)[[J
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mArguments:[[J

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/AdditionalDataPlanFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/AdditionalDataPlanFragment;->updatePrefernceVisibility()V

    return-void
.end method

.method static synthetic access$400()V
    .locals 0

    invoke-static {}, Lcom/android/settings/AdditionalDataPlanFragment;->toggleEnabled()V

    return-void
.end method

.method public static computeLastDayBoundary(J)J
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static computeNextDayBoundary(J)J
    .locals 4

    const/16 v3, 0x3b

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xb

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getCurrentMode(Landroid/app/Fragment;)I
    .locals 3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getWarningFlow(Landroid/app/Fragment;I)J
    .locals 4

    const-wide/16 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez p1, :cond_1

    const-string v3, "daily_warning_flow"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    :cond_0
    :goto_0
    return-wide v1

    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    const-string v3, "weekly_warning_flow"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    const-string v3, "period_warning_flow"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    goto :goto_0
.end method

.method public static isEnabled(Landroid/app/Fragment;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static setDataPlan(Landroid/app/Fragment;Landroid/content/Context;I[[J)V
    .locals 6

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.acer.android.datatraffic"

    const-string v3, "com.acer.android.datatraffic.UpdateService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.acer.android.action.SET_DATA_PLAN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    const v2, 0x7f0a000a

    if-ne p2, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    aget-object v2, p3, v0

    sget-object v3, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->WARNING_MODE:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v3}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v3

    int-to-long v4, v0

    aput-wide v4, v2, v3

    const-string v2, "argumentsArray"

    aget-object v3, p3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const v2, 0x7f0a000e

    if-ne p2, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const v2, 0x7f0a0011

    if-ne p2, v2, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unknown warning mode"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static setDate(Landroid/app/Fragment;Landroid/content/Context;Ljava/util/Calendar;I[[J)V
    .locals 11

    const v7, 0x7f0a0013

    if-ne p3, v7, :cond_1

    sget-object v6, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_1:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    const v7, 0x7f0a0013

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v7, 0x7f0a0014

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v1

    const v7, 0x7f0a0011

    if-ne v1, v7, :cond_5

    const/4 v7, 0x2

    aget-object v7, p4, v7

    sget-object v8, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->WARNING_MODE:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v8}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v8

    const-wide/16 v9, 0x2

    aput-wide v9, v7, v8

    sget-object v7, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_1:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    if-ne v6, v7, :cond_2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const/4 v9, 0x2

    aget-object v9, p4, v9

    sget-object v10, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_2:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v10}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v10

    aget-wide v9, v9, v10

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    const/4 v7, 0x2

    aget-object v7, p4, v7

    sget-object v8, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_1:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v8}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v8

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    aput-wide v9, v7, v8

    const/4 v7, 0x2

    aget-object v7, p4, v7

    sget-object v8, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_2:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v8}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v8

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    aput-wide v9, v7, v8

    :goto_1
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v7, "MM/dd/yyyy"

    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x2

    aget-object v7, p4, v7

    sget-object v8, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_1:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v8}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v8

    aget-wide v7, v7, v8

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v7, 0x2

    aget-object v7, p4, v7

    sget-object v8, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_2:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v8}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v8

    aget-wide v7, v7, v8

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.acer.android.datatraffic"

    const-string v8, "com.acer.android.datatraffic.UpdateService"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "com.acer.android.action.SET_DATA_PLAN"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "argumentsArray"

    const/4 v8, 0x2

    aget-object v8, p4, v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void

    :cond_1
    sget-object v6, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_2:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    goto/16 :goto_0

    :cond_2
    sget-object v7, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_2:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    if-ne v6, v7, :cond_3

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const/4 v9, 0x2

    aget-object v9, p4, v9

    sget-object v10, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_1:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v10}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v10

    aget-wide v9, v9, v10

    cmp-long v7, v7, v9

    if-gez v7, :cond_3

    const/4 v7, 0x2

    aget-object v7, p4, v7

    sget-object v8, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_2:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v8}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v8

    const/4 v9, 0x2

    aget-object v9, p4, v9

    sget-object v10, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_1:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v10}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v10

    aget-wide v9, v9, v10

    aput-wide v9, v7, v8

    goto/16 :goto_1

    :cond_3
    sget-object v7, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_1:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    if-ne v6, v7, :cond_4

    const/4 v7, 0x2

    aget-object v7, p4, v7

    sget-object v8, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_1:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v8}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v8

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    aput-wide v9, v7, v8

    goto/16 :goto_1

    :cond_4
    sget-object v7, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_2:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    if-ne v6, v7, :cond_0

    const/4 v7, 0x2

    aget-object v7, p4, v7

    sget-object v8, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_2:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v8}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v8

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    aput-wide v9, v7, v8

    goto/16 :goto_1

    :cond_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "invalid warning mode"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static setEnabled(Landroid/app/Fragment;Z)V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "enabled"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.acer.android.datatraffic"

    const-string v4, "com.acer.android.datatraffic.UpdateService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.acer.android.action.ENABLE_DATA_PLAN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "enabled"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static setToggleEnabledListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    sput-object p0, Lcom/android/settings/AdditionalDataPlanFragment;->mAdditionalReminderSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public static setWarningBytes(Landroid/app/Fragment;Landroid/content/Context;II[[J)V
    .locals 12

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v7, 0x7f0a000d

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080007

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-long v7, p2

    const-wide/32 v9, 0x100000

    mul-long v5, v7, v9

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.acer.android.datatraffic"

    const-string v8, "com.acer.android.datatraffic.UpdateService"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "com.acer.android.action.SET_DATA_PLAN"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    const v7, 0x7f0a000a

    if-ne p3, v7, :cond_0

    const/4 v0, 0x0

    :goto_0
    aget-object v7, p4, v0

    sget-object v8, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->WARNING_MODE:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v8}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v8

    int-to-long v9, v0

    aput-wide v9, v7, v8

    aget-object v7, p4, v0

    sget-object v8, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->WARNING_BYTE:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v8}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v8

    aput-wide v5, v7, v8

    const-string v7, "argumentsArray"

    aget-object v8, p4, v0

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const v7, 0x7f0a000e

    if-ne p3, v7, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const v7, 0x7f0a0011

    if-ne p3, v7, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "unknown warning mode"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static setWeekDay(Landroid/app/Fragment;Landroid/content/Context;II[[J)V
    .locals 12

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v8, "E"

    invoke-direct {v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x7

    invoke-virtual {v1, v8, p2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x7

    add-int/lit8 v9, p2, 0x6

    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080008

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v3, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v2

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v8, "com.acer.android.datatraffic"

    const-string v9, "com.acer.android.datatraffic.UpdateService"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "com.acer.android.action.SET_DATA_PLAN"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v8, 0x7f0a000e

    if-ne v2, v8, :cond_0

    const/4 v8, 0x1

    aget-object v8, p4, v8

    sget-object v9, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->WARNING_MODE:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v9}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v9

    const-wide/16 v10, 0x1

    aput-wide v10, v8, v9

    const/4 v8, 0x1

    aget-object v8, p4, v8

    sget-object v9, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_1:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v9}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v9

    int-to-long v10, p2

    aput-wide v10, v8, v9

    const-string v8, "argumentsArray"

    const/4 v9, 0x1

    aget-object v9, p4, v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "invalid warning mode"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public static show(Landroid/app/Fragment;Ljava/lang/CharSequence;Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/AdditionalDataPlanFragment$DetailsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "enabled"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static toggleEnabled()V
    .locals 3

    sget-object v0, Lcom/android/settings/AdditionalDataPlanFragment;->mAdditionalReminderSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/AdditionalDataPlanFragment;->mAdditionalReminderSwitchListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_0
    return-void
.end method

.method private updatePrefernceComponent(I)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mDailyRadioBtn:Landroid/widget/RadioButton;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mWeeklyRadioBtn:Landroid/widget/RadioButton;

    if-ne p1, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mPeriodRadioBtn:Landroid/widget/RadioButton;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mDailyView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mDailyRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object v3, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mWeeklyView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mWeeklyRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mPeriodView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mPeriodRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_4

    :cond_5
    move v2, v1

    goto :goto_5
.end method

.method private updatePrefernceContent()V
    .locals 15

    invoke-virtual {p0}, Lcom/android/settings/AdditionalDataPlanFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/AdditionalDataPlanFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f080007

    const-string v10, "mode"

    const/4 v11, 0x0

    invoke-static {v3, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mCurrentMode:I

    const-string v10, "AdditionalDataPlanFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mCurrentMode:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mCurrentMode:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mDailyRadioBtn:Landroid/widget/RadioButton;

    iget v10, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mCurrentMode:I

    if-nez v10, :cond_0

    const/4 v10, 0x1

    :goto_0
    invoke-virtual {v11, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v11, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mWeeklyRadioBtn:Landroid/widget/RadioButton;

    iget v10, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mCurrentMode:I

    const/4 v12, 0x1

    if-ne v10, v12, :cond_1

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v11, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v11, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mPeriodRadioBtn:Landroid/widget/RadioButton;

    iget v10, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mCurrentMode:I

    const/4 v12, 0x2

    if-ne v10, v12, :cond_2

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v11, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v10, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mArguments:[[J

    const/4 v11, 0x0

    aget-object v10, v10, v11

    sget-object v11, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->WARNING_BYTE:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v11}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v11

    const-string v12, "daily_warning_flow"

    const-wide/16 v13, 0x0

    invoke-static {v3, v12, v13, v14}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v12

    aput-wide v12, v10, v11

    iget-object v10, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mArguments:[[J

    const/4 v11, 0x1

    aget-object v10, v10, v11

    sget-object v11, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->WARNING_BYTE:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v11}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v11

    const-string v12, "weekly_warning_flow"

    const-wide/16 v13, 0x0

    invoke-static {v3, v12, v13, v14}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v12

    aput-wide v12, v10, v11

    iget-object v10, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mArguments:[[J

    const/4 v11, 0x2

    aget-object v10, v10, v11

    sget-object v11, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->WARNING_BYTE:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v11}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v11

    const-string v12, "period_warning_flow"

    const-wide/16 v13, 0x0

    invoke-static {v3, v12, v13, v14}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v12

    aput-wide v12, v10, v11

    iget-object v10, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mArguments:[[J

    const/4 v11, 0x1

    aget-object v10, v10, v11

    sget-object v11, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_1:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v11}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v11

    const-string v12, "weekly_cycle_beginning"

    const-wide/16 v13, 0x0

    invoke-static {v3, v12, v13, v14}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v12

    aput-wide v12, v10, v11

    iget-object v10, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mArguments:[[J

    const/4 v11, 0x2

    aget-object v10, v10, v11

    sget-object v11, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_1:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v11}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v11

    const-string v12, "period_beginning"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/android/settings/AdditionalDataPlanFragment;->computeLastDayBoundary(J)J

    move-result-wide v13

    invoke-static {v3, v12, v13, v14}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v12

    aput-wide v12, v10, v11

    iget-object v10, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mArguments:[[J

    const/4 v11, 0x2

    aget-object v10, v10, v11

    sget-object v11, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_2:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v11}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v11

    const-string v12, "period_end"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/android/settings/AdditionalDataPlanFragment;->computeNextDayBoundary(J)J

    move-result-wide v13

    invoke-static {v3, v12, v13, v14}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v12

    aput-wide v12, v10, v11

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mArguments:[[J

    const/4 v11, 0x0

    aget-object v10, v10, v11

    sget-object v11, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->WARNING_BYTE:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v11}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v11

    aget-wide v10, v10, v11

    const-wide/32 v12, 0x100000

    div-long/2addr v10, v12

    long-to-int v9, v10

    iget-object v10, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mDailyWarningFlow:Landroid/widget/TextView;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v4, v8, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mArguments:[[J

    const/4 v11, 0x1

    aget-object v10, v10, v11

    sget-object v11, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->WARNING_BYTE:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v11}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v11

    aget-wide v10, v10, v11

    const-wide/32 v12, 0x100000

    div-long/2addr v10, v12

    long-to-int v9, v10

    iget-object v10, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mWeeklyWarningFlow:Landroid/widget/TextView;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v4, v8, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mArguments:[[J

    const/4 v11, 0x2

    aget-object v10, v10, v11

    sget-object v11, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->WARNING_BYTE:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v11}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v11

    aget-wide v10, v10, v11

    const-wide/32 v12, 0x100000

    div-long/2addr v10, v12

    long-to-int v9, v10

    iget-object v10, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mPeriodWarningFlow:Landroid/widget/TextView;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v4, v8, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v10, "E"

    invoke-direct {v5, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x7

    iget-object v11, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mArguments:[[J

    const/4 v12, 0x1

    aget-object v11, v11, v12

    sget-object v12, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_1:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v12}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v12

    aget-wide v11, v11, v12

    long-to-int v11, v11

    invoke-virtual {v1, v10, v11}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x7

    iget-object v11, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mArguments:[[J

    const/4 v12, 0x1

    aget-object v11, v11, v12

    sget-object v12, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_1:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v12}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v12

    aget-wide v11, v11, v12

    long-to-int v11, v11

    add-int/lit8 v11, v11, 0x6

    invoke-virtual {v1, v10, v11}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iget-object v10, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mWeeklyCycle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/AdditionalDataPlanFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080008

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v0, v13, v14

    const/4 v14, 0x1

    aput-object v2, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v10, "MM/dd/yyyy"

    invoke-direct {v6, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mPeriodBeginning:Landroid/widget/TextView;

    new-instance v11, Ljava/util/Date;

    iget-object v12, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mArguments:[[J

    const/4 v13, 0x2

    aget-object v12, v12, v13

    sget-object v13, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_1:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v13}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v13

    aget-wide v12, v12, v13

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v10, "MM/dd/yyyy"

    invoke-direct {v7, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mPeriodEnd:Landroid/widget/TextView;

    new-instance v11, Ljava/util/Date;

    iget-object v12, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mArguments:[[J

    const/4 v13, 0x2

    aget-object v12, v12, v13

    sget-object v13, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_2:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v13}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->ordinal()I

    move-result v13

    aget-wide v12, v12, v13

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_1
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_2
.end method

.method private updatePrefernceVisibility()V
    .locals 7

    const v6, 0x7f0a000c

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mDailyView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mWeeklyView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mPeriodView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mDailyRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mWeeklyRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mPeriodRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    return-void

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const v8, 0x7f0a000d

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v2, 0x7f040005

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mRootView:Landroid/view/View;

    new-instance v2, Lcom/android/settings/AdditionalDataPlanFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/AdditionalDataPlanFragment$1;-><init>(Lcom/android/settings/AdditionalDataPlanFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "spinner_background_holo_dark"

    const-string v4, "drawable"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const v2, 0x7f0a000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mDailyView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mDailyView:Landroid/view/View;

    const v3, 0x7f0a000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mDailyRadioBtn:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mDailyRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mDailyRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mDailyView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mDailyView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mDailyView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mDataPlanChooserListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mDailyView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mDailyWarningFlow:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mDailyWarningFlow:Landroid/widget/TextView;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mDailyWarningFlow:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mWarningFlowListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a000e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mWeeklyView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mWeeklyView:Landroid/view/View;

    const v3, 0x7f0a000f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mWeeklyRadioBtn:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mWeeklyRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mWeeklyRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mWeeklyView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mWeeklyView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mWeeklyView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mDataPlanChooserListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mWeeklyView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mWeeklyWarningFlow:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mWeeklyWarningFlow:Landroid/widget/TextView;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mWeeklyWarningFlow:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mWarningFlowListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mWeeklyView:Landroid/view/View;

    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mWeeklyCycle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mWeeklyCycle:Landroid/widget/TextView;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mWeeklyCycle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mSetWeekDayListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0011

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mPeriodView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mPeriodView:Landroid/view/View;

    const v3, 0x7f0a0012

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mPeriodRadioBtn:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mPeriodRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mPeriodRadioBtn:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mPeriodView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mPeriodView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mPeriodView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mDataPlanChooserListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mPeriodView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mPeriodWarningFlow:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mPeriodWarningFlow:Landroid/widget/TextView;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mPeriodWarningFlow:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mWarningFlowListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mPeriodView:Landroid/view/View;

    const v3, 0x7f0a0013

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mPeriodBeginning:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mPeriodBeginning:Landroid/widget/TextView;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mPeriodBeginning:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mSetDateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mPeriodView:Landroid/view/View;

    const v3, 0x7f0a0014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mPeriodEnd:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mPeriodEnd:Landroid/widget/TextView;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mPeriodEnd:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mSetDateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/settings/AdditionalDataPlanFragment;->updatePrefernceContent()V

    invoke-direct {p0}, Lcom/android/settings/AdditionalDataPlanFragment;->updatePrefernceVisibility()V

    iget v2, p0, Lcom/android/settings/AdditionalDataPlanFragment;->mCurrentMode:I

    invoke-direct {p0, v2}, Lcom/android/settings/AdditionalDataPlanFragment;->updatePrefernceComponent(I)V

    return-object v1
.end method
