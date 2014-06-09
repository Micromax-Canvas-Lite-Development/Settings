.class Lcom/mediatek/gemini/SimManagement$10;
.super Ljava/lang/Object;
.source "SimManagement.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gemini/SimManagement;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/SimManagement;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/gemini/SimManagement$10;->this$0:Lcom/mediatek/gemini/SimManagement;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement$10;->this$0:Lcom/mediatek/gemini/SimManagement;

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement$10;->this$0:Lcom/mediatek/gemini/SimManagement;

    # getter for: Lcom/mediatek/gemini/SimManagement;->mSelectedVideoSimId:J
    invoke-static {v1}, Lcom/mediatek/gemini/SimManagement;->access$2400(Lcom/mediatek/gemini/SimManagement;)J

    move-result-wide v1

    # invokes: Lcom/mediatek/gemini/SimManagement;->switchVideoCallDefaultSIM(J)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/gemini/SimManagement;->access$2500(Lcom/mediatek/gemini/SimManagement;J)V

    return-void
.end method
