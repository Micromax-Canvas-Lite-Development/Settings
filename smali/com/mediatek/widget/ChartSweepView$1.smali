.class Lcom/mediatek/widget/ChartSweepView$1;
.super Ljava/lang/Object;
.source "ChartSweepView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/widget/ChartSweepView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/widget/ChartSweepView;


# direct methods
.method constructor <init>(Lcom/mediatek/widget/ChartSweepView;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/widget/ChartSweepView$1;->this$0:Lcom/mediatek/widget/ChartSweepView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/widget/ChartSweepView$1;->this$0:Lcom/mediatek/widget/ChartSweepView;

    # invokes: Lcom/mediatek/widget/ChartSweepView;->dispatchRequestEdit()V
    invoke-static {v0}, Lcom/mediatek/widget/ChartSweepView;->access$000(Lcom/mediatek/widget/ChartSweepView;)V

    return-void
.end method
