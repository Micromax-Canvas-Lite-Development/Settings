.class public Lcom/mediatek/gemini/GeminiSIMTetherItem;
.super Ljava/lang/Object;
.source "GeminiSIMTetherItem.java"


# instance fields
.field private mCheckedStatus:I

.field private mContactId:I

.field private mName:Ljava/lang/String;

.field private mPhoneNum:Ljava/lang/String;

.field private mPhoneNumType:Ljava/lang/String;

.field private mSimColor:I

.field private mSimId:Ljava/lang/String;

.field private mSimName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mPhoneNum:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mSimColor:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mCheckedStatus:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mPhoneNum:Ljava/lang/String;

    iput p3, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mSimColor:I

    iput p4, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mCheckedStatus:I

    return-void
.end method


# virtual methods
.method public getCheckedStatus()I
    .locals 1

    iget v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mCheckedStatus:I

    return v0
.end method

.method public getContactId()I
    .locals 1

    iget v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mContactId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mPhoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mPhoneNumType:Ljava/lang/String;

    return-object v0
.end method

.method public getSimColor()I
    .locals 1

    iget v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mSimColor:I

    return v0
.end method

.method public getSimId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mSimId:Ljava/lang/String;

    return-object v0
.end method

.method public getSimName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mSimName:Ljava/lang/String;

    return-object v0
.end method

.method public setCheckedStatus(I)V
    .locals 0

    iput p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mCheckedStatus:I

    return-void
.end method

.method public setContactId(I)V
    .locals 0

    iput p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mContactId:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mName:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mPhoneNum:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mPhoneNumType:Ljava/lang/String;

    return-void
.end method

.method public setSimColor(I)V
    .locals 0

    iput p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mSimColor:I

    return-void
.end method

.method public setSimId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mSimId:Ljava/lang/String;

    return-void
.end method

.method public setSimName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherItem;->mSimName:Ljava/lang/String;

    return-void
.end method
