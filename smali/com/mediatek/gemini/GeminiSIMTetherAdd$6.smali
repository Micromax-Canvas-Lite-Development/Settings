.class Lcom/mediatek/gemini/GeminiSIMTetherAdd$6;
.super Ljava/lang/Object;
.source "GeminiSIMTetherAdd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gemini/GeminiSIMTetherAdd;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$6;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$6;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    invoke-virtual {v0}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->finish()V

    return-void
.end method
