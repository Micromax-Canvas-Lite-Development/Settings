.class Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;
.super Landroid/os/AsyncTask;
.source "GeminiSIMTetherAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/GeminiSIMTetherAdd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContactDataAsyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;


# direct methods
.method public constructor <init>(Lcom/mediatek/gemini/GeminiSIMTetherAdd;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "GeminiSIMTetherAdd"

    const-string v1, "ContactDataAsyTask constructor"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    const/4 v1, 0x1

    # setter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mIsRefresh:Z
    invoke-static {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$102(Lcom/mediatek/gemini/GeminiSIMTetherAdd;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mNeedRefresh:Z
    invoke-static {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$202(Lcom/mediatek/gemini/GeminiSIMTetherAdd;Z)Z

    const-string v0, "GeminiSIMTetherAdd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before---mNeedRefresh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mNeedRefresh:Z
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$200(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;
    invoke-static {v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$1000(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->getAllContactData()Ljava/util/ArrayList;

    move-result-object v1

    # setter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mDataList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$702(Lcom/mediatek/gemini/GeminiSIMTetherAdd;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;
    invoke-static {v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$1000(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->getTotalContactNum()I

    move-result v1

    # setter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mTotalConNum:I
    invoke-static {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$1102(Lcom/mediatek/gemini/GeminiSIMTetherAdd;I)I

    const-string v0, "GeminiSIMTetherAdd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after---mNeedRefresh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mNeedRefresh:Z
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$200(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mNeedRefresh:Z
    invoke-static {v0}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$200(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    const-string v0, "GeminiSIMTetherAdd"

    const-string v1, "ContactDataAsyTask is cancelled"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "GeminiSIMTetherAdd"

    const-string v3, "onPostExecute"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->removeDialog(I)V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mDataList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$700(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mDataList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$700(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x1

    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$800(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_1
    new-instance v2, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mDataList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$700(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6}, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    # setter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->sAdapter:Lcom/mediatek/gemini/GeminiSIMTetherAdapter;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$902(Lcom/mediatek/gemini/GeminiSIMTetherAdapter;)Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->sAdapter:Lcom/mediatek/gemini/GeminiSIMTetherAdapter;
    invoke-static {}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$900()Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->setShowCheckBox(Z)V

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$800(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$800(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Landroid/widget/ListView;

    move-result-object v2

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->sAdapter:Lcom/mediatek/gemini/GeminiSIMTetherAdapter;
    invoke-static {}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$900()Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$800(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    # setter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mIsRefresh:Z
    invoke-static {v2, v5}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$102(Lcom/mediatek/gemini/GeminiSIMTetherAdd;Z)Z

    return-void

    :cond_2
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    const/16 v3, 0x3eb

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->showDialog(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$800(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)Landroid/widget/ListView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    const-string v0, "GeminiSIMTetherAdd"

    const-string v1, "onPreExecute"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$ContactDataAsyTask;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->showDialog(I)V

    return-void
.end method
