.class Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;
.super Ljava/lang/Object;
.source "CellConnMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Element"
.end annotation


# instance fields
.field private mReqType:I

.field private mSlot:I

.field final synthetic this$1:Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;


# direct methods
.method public constructor <init>(Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;->this$1:Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;->mSlot:I

    iput v0, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;->mReqType:I

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;II)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;->this$1:Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;->mSlot:I

    iput p3, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;->mReqType:I

    return-void
.end method


# virtual methods
.method public getReqType()I
    .locals 1

    iget v0, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;->mReqType:I

    return v0
.end method

.method public getSlot()I
    .locals 1

    iget v0, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;->mSlot:I

    return v0
.end method
