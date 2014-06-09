.class Lcom/mediatek/gemini/SimItem;
.super Ljava/lang/Object;
.source "SimManagement.java"


# instance fields
.field public mColor:I

.field public mDispalyNumberFormat:I

.field public mIsSim:Z

.field public mName:Ljava/lang/String;

.field public mNumber:Ljava/lang/String;

.field public mSimID:J

.field public mSlot:I

.field public mState:I


# direct methods
.method public constructor <init>(Landroid/provider/Telephony$SIMInfo;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/mediatek/gemini/SimItem;->mIsSim:Z

    iput-object v0, p0, Lcom/mediatek/gemini/SimItem;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/gemini/SimItem;->mDispalyNumberFormat:I

    iput v1, p0, Lcom/mediatek/gemini/SimItem;->mColor:I

    iput v1, p0, Lcom/mediatek/gemini/SimItem;->mSlot:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/gemini/SimItem;->mSimID:J

    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/gemini/SimItem;->mState:I

    iput-boolean v2, p0, Lcom/mediatek/gemini/SimItem;->mIsSim:Z

    iget-object v0, p1, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/gemini/SimItem;->mName:Ljava/lang/String;

    iget-object v0, p1, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    iget v0, p1, Landroid/provider/Telephony$SIMInfo;->mDispalyNumberFormat:I

    iput v0, p0, Lcom/mediatek/gemini/SimItem;->mDispalyNumberFormat:I

    iget v0, p1, Landroid/provider/Telephony$SIMInfo;->mColor:I

    iput v0, p0, Lcom/mediatek/gemini/SimItem;->mColor:I

    iget v0, p1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iput v0, p0, Lcom/mediatek/gemini/SimItem;->mSlot:I

    iget-wide v0, p1, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    iput-wide v0, p0, Lcom/mediatek/gemini/SimItem;->mSimID:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimItem;->mIsSim:Z

    iput-object v3, p0, Lcom/mediatek/gemini/SimItem;->mName:Ljava/lang/String;

    iput-object v3, p0, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    iput v2, p0, Lcom/mediatek/gemini/SimItem;->mDispalyNumberFormat:I

    iput v1, p0, Lcom/mediatek/gemini/SimItem;->mColor:I

    iput v1, p0, Lcom/mediatek/gemini/SimItem;->mSlot:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/gemini/SimItem;->mSimID:J

    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/gemini/SimItem;->mState:I

    iput-object p1, p0, Lcom/mediatek/gemini/SimItem;->mName:Ljava/lang/String;

    iput p2, p0, Lcom/mediatek/gemini/SimItem;->mColor:I

    iput-boolean v2, p0, Lcom/mediatek/gemini/SimItem;->mIsSim:Z

    iput-wide p3, p0, Lcom/mediatek/gemini/SimItem;->mSimID:J

    return-void
.end method
