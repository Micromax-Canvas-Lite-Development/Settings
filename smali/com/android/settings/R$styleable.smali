.class public final Lcom/android/settings/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final BatteryHistoryChart:[I

.field public static final BatteryHistoryChart_android_shadowColor:I = 0x5

.field public static final BatteryHistoryChart_android_shadowDx:I = 0x6

.field public static final BatteryHistoryChart_android_shadowDy:I = 0x7

.field public static final BatteryHistoryChart_android_shadowRadius:I = 0x8

.field public static final BatteryHistoryChart_android_textAppearance:I = 0x0

.field public static final BatteryHistoryChart_android_textColor:I = 0x4

.field public static final BatteryHistoryChart_android_textSize:I = 0x1

.field public static final BatteryHistoryChart_android_textStyle:I = 0x3

.field public static final BatteryHistoryChart_android_typeface:I = 0x2

.field public static final ChartGridView:[I

.field public static final ChartGridView_borderDrawable:I = 0x3

.field public static final ChartGridView_labelColor:I = 0x0

.field public static final ChartGridView_primaryDrawable:I = 0x1

.field public static final ChartGridView_secondaryDrawable:I = 0x2

.field public static final ChartNetworkSeriesView:[I

.field public static final ChartNetworkSeriesView_fillColor:I = 0x1

.field public static final ChartNetworkSeriesView_fillColorSecondary:I = 0x2

.field public static final ChartNetworkSeriesView_strokeColor:I = 0x0

.field public static final ChartSweepView:[I

.field public static final ChartSweepView_followAxis:I = 0x1

.field public static final ChartSweepView_labelColor:I = 0x5

.field public static final ChartSweepView_labelSize:I = 0x3

.field public static final ChartSweepView_labelTemplate:I = 0x4

.field public static final ChartSweepView_neighborMargin:I = 0x2

.field public static final ChartSweepView_sweepDrawable:I = 0x0

.field public static final ChartView:[I

.field public static final ChartView_optimalWidth:I = 0x0

.field public static final ChartView_optimalWidthWeight:I = 0x1

.field public static final IconPreferenceScreen:[I

.field public static final IconPreferenceScreen_icon:I = 0x0

.field public static final PercentageBarChart:[I

.field public static final PercentageBarChart_emptyColor:I = 0x0

.field public static final PercentageBarChart_minTickWidth:I = 0x1

.field public static final WifiEncryptionState:[I

.field public static final WifiEncryptionState_state_encrypted:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/R$styleable;->BatteryHistoryChart:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/R$styleable;->ChartGridView:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/R$styleable;->ChartNetworkSeriesView:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/R$styleable;->ChartSweepView:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/settings/R$styleable;->ChartView:[I

    new-array v0, v3, [I

    const v1, 0x7f010001

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/R$styleable;->IconPreferenceScreen:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/settings/R$styleable;->PercentageBarChart:[I

    new-array v0, v3, [I

    const/high16 v1, 0x7f010000

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/R$styleable;->WifiEncryptionState:[I

    return-void

    :array_0
    .array-data 4
        0x1010034
        0x1010095
        0x1010096
        0x1010097
        0x1010098
        0x1010161
        0x1010162
        0x1010163
        0x1010164
    .end array-data

    :array_1
    .array-data 4
        0x7f01000b
        0x7f01000c
        0x7f01000d
        0x7f01000e
    .end array-data

    :array_2
    .array-data 4
        0x7f01000f
        0x7f010010
        0x7f010011
    .end array-data

    :array_3
    .array-data 4
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
    .end array-data

    :array_4
    .array-data 4
        0x7f010004
        0x7f010005
    .end array-data

    :array_5
    .array-data 4
        0x7f010002
        0x7f010003
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
