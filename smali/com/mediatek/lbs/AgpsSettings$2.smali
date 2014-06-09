.class Lcom/mediatek/lbs/AgpsSettings$2;
.super Ljava/lang/Object;
.source "AgpsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/AgpsSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/AgpsSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/AgpsSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/lbs/AgpsSettings$2;->this$0:Lcom/mediatek/lbs/AgpsSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/lbs/AgpsSettings$2;->this$0:Lcom/mediatek/lbs/AgpsSettings;

    # invokes: Lcom/mediatek/lbs/AgpsSettings;->updatePage()V
    invoke-static {v0}, Lcom/mediatek/lbs/AgpsSettings;->access$500(Lcom/mediatek/lbs/AgpsSettings;)V

    return-void
.end method
