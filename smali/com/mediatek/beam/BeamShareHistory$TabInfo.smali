.class public Lcom/mediatek/beam/BeamShareHistory$TabInfo;
.super Ljava/lang/Object;
.source "BeamShareHistory.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/beam/BeamShareHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabInfo"
.end annotation


# instance fields
.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mIsIncoming:Z

.field public final mLabel:Ljava/lang/CharSequence;

.field private mListView:Landroid/widget/ListView;

.field public final mOwner:Lcom/mediatek/beam/BeamShareHistory;

.field public mRootView:Landroid/view/View;

.field private mTabCursor:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/mediatek/beam/BeamShareHistory;


# direct methods
.method public constructor <init>(Lcom/mediatek/beam/BeamShareHistory;Lcom/mediatek/beam/BeamShareHistory;Ljava/lang/CharSequence;Z)V
    .locals 1

    iput-object p1, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mTabCursor:Landroid/database/Cursor;

    new-instance v0, Lcom/mediatek/beam/BeamShareHistory$TabInfo$1;

    invoke-direct {v0, p0}, Lcom/mediatek/beam/BeamShareHistory$TabInfo$1;-><init>(Lcom/mediatek/beam/BeamShareHistory$TabInfo;)V

    iput-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    iput-object p2, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mOwner:Lcom/mediatek/beam/BeamShareHistory;

    iput-object p3, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mLabel:Ljava/lang/CharSequence;

    iput-boolean p4, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mIsIncoming:Z

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/beam/BeamShareHistory$TabInfo;)Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->buildTabSpec()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private buildTabSpec()Landroid/view/View;
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mRootView:Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    # getter for: Lcom/mediatek/beam/BeamShareHistory;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/mediatek/beam/BeamShareHistory;->access$500(Lcom/mediatek/beam/BeamShareHistory;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040011

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mRootView:Landroid/view/View;

    const v1, 0x7f0a002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mListView:Landroid/widget/ListView;

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mOwner:Lcom/mediatek/beam/BeamShareHistory;

    # getter for: Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/mediatek/beam/BeamShareHistory;->access$000(Lcom/mediatek/beam/BeamShareHistory;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/beam/BeamShareTask$BeamShareTaskMetaData;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mIsIncoming:Z

    if-eqz v3, :cond_2

    const-string v3, "type in (0,2)"

    :goto_1
    const/4 v4, 0x0

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mTabCursor:Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mTabCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    const-string v0, "BeamShareHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tab "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": cursor.getCount() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mTabCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    new-instance v1, Lcom/mediatek/beam/BeamShareTabAdapter;

    iget-object v2, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mOwner:Lcom/mediatek/beam/BeamShareHistory;

    # getter for: Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/mediatek/beam/BeamShareHistory;->access$000(Lcom/mediatek/beam/BeamShareHistory;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040010

    iget-object v4, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mTabCursor:Landroid/database/Cursor;

    invoke-direct {v1, v2, v3, v4}, Lcom/mediatek/beam/BeamShareTabAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    # setter for: Lcom/mediatek/beam/BeamShareHistory;->mAdapter:Lcom/mediatek/beam/BeamShareTabAdapter;
    invoke-static {v0, v1}, Lcom/mediatek/beam/BeamShareHistory;->access$702(Lcom/mediatek/beam/BeamShareHistory;Lcom/mediatek/beam/BeamShareTabAdapter;)Lcom/mediatek/beam/BeamShareTabAdapter;

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    # getter for: Lcom/mediatek/beam/BeamShareHistory;->mAdapter:Lcom/mediatek/beam/BeamShareTabAdapter;
    invoke-static {v1}, Lcom/mediatek/beam/BeamShareHistory;->access$700(Lcom/mediatek/beam/BeamShareHistory;)Lcom/mediatek/beam/BeamShareTabAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mRootView:Landroid/view/View;

    goto/16 :goto_0

    :cond_2
    :try_start_1
    const-string v3, "type in (1,3)"
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    const-string v0, "BeamShareHistory"

    const-string v1, "check empty share list error:"

    invoke-static {v0, v1, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private isSupportedDataType(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mOwner:Lcom/mediatek/beam/BeamShareHistory;

    # getter for: Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/mediatek/beam/BeamShareHistory;->access$000(Lcom/mediatek/beam/BeamShareHistory;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BeamShareHistory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find proper Activity to handle Intent: mime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], data["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private openTransferSuccessFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v4, "BeamShareHistory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "openTransferSuccessFile(): filename="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mimetype="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v4, "BeamShareHistory"

    const-string v5, "the file name is null"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BeamShareHistory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file name is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    :cond_1
    invoke-direct {p0, v3, p2}, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->isSupportedDataType(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mOwner:Lcom/mediatek/beam/BeamShareHistory;

    const/4 v5, 0x1

    # invokes: Lcom/mediatek/beam/BeamShareHistory;->showDialog(I)V
    invoke-static {v4, v5}, Lcom/mediatek/beam/BeamShareHistory;->access$1300(Lcom/mediatek/beam/BeamShareHistory;I)V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mOwner:Lcom/mediatek/beam/BeamShareHistory;

    # getter for: Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/mediatek/beam/BeamShareHistory;->access$000(Lcom/mediatek/beam/BeamShareHistory;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public build(Landroid/view/LayoutInflater;Landroid/widget/TabHost;)V
    .locals 4

    const-string v2, "BeamShareHistory"

    const-string v3, "build"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    # setter for: Lcom/mediatek/beam/BeamShareHistory;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2, p1}, Lcom/mediatek/beam/BeamShareHistory;->access$502(Lcom/mediatek/beam/BeamShareHistory;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    iget-boolean v2, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mIsIncoming:Z

    if-eqz v2, :cond_0

    const-string v1, "Incoming"

    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void

    :cond_0
    const-string v1, "Outgoing"

    goto :goto_0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mTabCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getOwner()Lcom/mediatek/beam/BeamShareHistory;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mOwner:Lcom/mediatek/beam/BeamShareHistory;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mTabCursor:Landroid/database/Cursor;

    invoke-interface {v3, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    new-instance v2, Lcom/mediatek/beam/BeamShareTask;

    iget-object v3, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mTabCursor:Landroid/database/Cursor;

    invoke-direct {v2, v3}, Lcom/mediatek/beam/BeamShareTask;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v2}, Lcom/mediatek/beam/BeamShareTask;->getData()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v3, "BeamShareHistory"

    const-string v4, "the file name is null"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    # setter for: Lcom/mediatek/beam/BeamShareHistory;->mCilckedFileName:Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/mediatek/beam/BeamShareHistory;->access$802(Lcom/mediatek/beam/BeamShareHistory;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    invoke-virtual {v2}, Lcom/mediatek/beam/BeamShareTask;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/mediatek/beam/BeamShareTask;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mediatek/beam/BeamShareTask;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->openTransferSuccessFile(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/mediatek/beam/BeamShareHistory;->mCilckedFileName:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/mediatek/beam/BeamShareHistory;->access$802(Lcom/mediatek/beam/BeamShareHistory;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/mediatek/beam/BeamShareTask;->getDirection()Lcom/mediatek/beam/BeamShareTask$Direction;

    move-result-object v3

    sget-object v4, Lcom/mediatek/beam/BeamShareTask$Direction;->out:Lcom/mediatek/beam/BeamShareTask$Direction;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mOwner:Lcom/mediatek/beam/BeamShareHistory;

    const/4 v4, 0x2

    # invokes: Lcom/mediatek/beam/BeamShareHistory;->showDialog(I)V
    invoke-static {v3, v4}, Lcom/mediatek/beam/BeamShareHistory;->access$900(Lcom/mediatek/beam/BeamShareHistory;I)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mOwner:Lcom/mediatek/beam/BeamShareHistory;

    const/4 v4, 0x4

    # invokes: Lcom/mediatek/beam/BeamShareHistory;->showDialog(I)V
    invoke-static {v3, v4}, Lcom/mediatek/beam/BeamShareHistory;->access$1000(Lcom/mediatek/beam/BeamShareHistory;I)V

    goto :goto_1
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const-string v1, "BeamShareHistory"

    const-string v2, "onItemLongClick"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mTabCursor:Landroid/database/Cursor;

    invoke-interface {v1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    new-instance v0, Lcom/mediatek/beam/BeamShareTask;

    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mTabCursor:Landroid/database/Cursor;

    invoke-direct {v0, v1}, Lcom/mediatek/beam/BeamShareTask;-><init>(Landroid/database/Cursor;)V

    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    invoke-virtual {v0}, Lcom/mediatek/beam/BeamShareTask;->getTaskUri()Landroid/net/Uri;

    move-result-object v2

    # setter for: Lcom/mediatek/beam/BeamShareHistory;->mLongClickUri:Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/mediatek/beam/BeamShareHistory;->access$1102(Lcom/mediatek/beam/BeamShareHistory;Landroid/net/Uri;)Landroid/net/Uri;

    const-string v1, "BeamShareHistory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Click uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    # getter for: Lcom/mediatek/beam/BeamShareHistory;->mLongClickUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/mediatek/beam/BeamShareHistory;->access$1100(Lcom/mediatek/beam/BeamShareHistory;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    const/4 v2, 0x5

    # invokes: Lcom/mediatek/beam/BeamShareHistory;->showDialog(I)V
    invoke-static {v1, v2}, Lcom/mediatek/beam/BeamShareHistory;->access$1200(Lcom/mediatek/beam/BeamShareHistory;I)V

    const/4 v1, 0x0

    return v1
.end method
