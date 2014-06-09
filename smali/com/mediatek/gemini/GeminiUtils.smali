.class public Lcom/mediatek/gemini/GeminiUtils;
.super Ljava/lang/Object;
.source "GeminiUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;
    }
.end annotation


# static fields
.field private static final COLORNUM:I = 0x7

.field static final EXTRA_SIMID:Ljava/lang/String; = "simid"

.field static final IMAGE_GRAY:I = 0x4b

.field static final INTERNET_CALL_COLOR:I = 0x8

.field static final NO_COLOR:I = -0x1

.field static final ORIGINAL_IMAGE:I = 0xff

.field static final TYPE_GPRS:I = 0x4

.field static final TYPE_SMS:I = 0x3

.field static final TYPE_VIDEOCALL:I = 0x2

.field static final TYPE_VOICECALL:I = 0x1

.field static sG3SlotID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/mediatek/gemini/GeminiUtils;->sG3SlotID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSimColorResource(I)I
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x7

    if-gt p0, v0, :cond_0

    sget-object v0, Landroid/provider/Telephony;->SIMBackgroundDarkRes:[I

    aget v0, v0, p0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static getStatusResource(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_1
    const v0, 0x2020118

    goto :goto_0

    :pswitch_2
    const v0, 0x2020105

    goto :goto_0

    :pswitch_3
    const v0, 0x20200fe

    goto :goto_0

    :pswitch_4
    const v0, 0x202011f

    goto :goto_0

    :pswitch_5
    const v0, 0x202011d

    goto :goto_0

    :pswitch_6
    const v0, 0x20200f5

    goto :goto_0

    :pswitch_7
    const v0, 0x202011e

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
