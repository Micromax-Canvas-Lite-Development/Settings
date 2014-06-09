.class Lcom/mediatek/beam/BeamShareHistory$ClearTask;
.super Landroid/os/AsyncTask;
.source "BeamShareHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/beam/BeamShareHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final CLEAR_ONGOING:I = 0x1

.field private static final CLEAR_SUCCESS:I


# instance fields
.field final synthetic this$0:Lcom/mediatek/beam/BeamShareHistory;


# direct methods
.method private constructor <init>(Lcom/mediatek/beam/BeamShareHistory;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/beam/BeamShareHistory$ClearTask;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/beam/BeamShareHistory;Lcom/mediatek/beam/BeamShareHistory$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/beam/BeamShareHistory$ClearTask;-><init>(Lcom/mediatek/beam/BeamShareHistory;)V

    return-void
.end method

.method private clearAllTasks()V
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/mediatek/beam/BeamShareHistory$ClearTask;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    # getter for: Lcom/mediatek/beam/BeamShareHistory;->mCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/mediatek/beam/BeamShareHistory;->access$200(Lcom/mediatek/beam/BeamShareHistory;)Landroid/database/Cursor;

    move-result-object v5

    const-string v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/mediatek/beam/BeamShareHistory$ClearTask;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    # getter for: Lcom/mediatek/beam/BeamShareHistory;->mCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/mediatek/beam/BeamShareHistory;->access$200(Lcom/mediatek/beam/BeamShareHistory;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v5, p0, Lcom/mediatek/beam/BeamShareHistory$ClearTask;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    # getter for: Lcom/mediatek/beam/BeamShareHistory;->mCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/mediatek/beam/BeamShareHistory;->access$200(Lcom/mediatek/beam/BeamShareHistory;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/beam/BeamShareHistory$ClearTask;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    # getter for: Lcom/mediatek/beam/BeamShareHistory;->mCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/mediatek/beam/BeamShareHistory;->access$200(Lcom/mediatek/beam/BeamShareHistory;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sget-object v5, Lcom/mediatek/beam/BeamShareTask$BeamShareTaskMetaData;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "BeamShareHistory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearAllTasks-----mCursor.getCount(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/beam/BeamShareHistory$ClearTask;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    # getter for: Lcom/mediatek/beam/BeamShareHistory;->mCursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/mediatek/beam/BeamShareHistory;->access$200(Lcom/mediatek/beam/BeamShareHistory;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/mediatek/beam/BeamShareHistory$ClearTask;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    # getter for: Lcom/mediatek/beam/BeamShareHistory;->mCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/mediatek/beam/BeamShareHistory;->access$200(Lcom/mediatek/beam/BeamShareHistory;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iget-object v5, p0, Lcom/mediatek/beam/BeamShareHistory$ClearTask;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    # getter for: Lcom/mediatek/beam/BeamShareHistory;->mContentReslover:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/mediatek/beam/BeamShareHistory;->access$1400(Lcom/mediatek/beam/BeamShareHistory;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/mediatek/beam/BeamShareHistory$ClearTask;->clearAllTasks()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mediatek/beam/BeamShareHistory$ClearTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$ClearTask;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    # getter for: Lcom/mediatek/beam/BeamShareHistory;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/beam/BeamShareHistory;->access$1500(Lcom/mediatek/beam/BeamShareHistory;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/mediatek/beam/BeamShareHistory$ClearTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
