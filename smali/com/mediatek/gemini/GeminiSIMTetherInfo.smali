.class public Lcom/mediatek/gemini/GeminiSIMTetherInfo;
.super Landroid/app/Activity;
.source "GeminiSIMTetherInfo.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;,
        Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;
    }
.end annotation


# static fields
.field private static final DIALOG_WAITING:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "GeminiSIMTetherInfo"

.field private static sAdapter:Lcom/mediatek/gemini/GeminiSIMTetherAdapter;


# instance fields
.field private mActionBarTextView:Landroid/widget/TextView;

.field private mAdpaterData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/gemini/GeminiSIMTetherItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAsyncTask:Landroid/os/AsyncTask;

.field private mContactObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mCurrSimId:Ljava/lang/String;

.field private mCurrentSimId:J

.field private mHasRecord:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private volatile mIsRefresh:Z

.field private mIsShowCheckBox:Z

.field private mListView:Landroid/widget/ListView;

.field private mManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;

.field private volatile mNeedRefresh:Z

.field private mNumSelected:I

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsRefresh:Z

    iput-boolean v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNeedRefresh:Z

    iput-object p0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsShowCheckBox:Z

    new-instance v0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo$1;-><init>(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mContactObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$2;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo$2;-><init>(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)V

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mSimReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsRefresh:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsRefresh:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNeedRefresh:Z

    return v0
.end method

.method static synthetic access$1000()Lcom/mediatek/gemini/GeminiSIMTetherAdapter;
    .locals 1

    sget-object v0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->sAdapter:Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mediatek/gemini/GeminiSIMTetherAdapter;)Lcom/mediatek/gemini/GeminiSIMTetherAdapter;
    .locals 0

    sput-object p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->sAdapter:Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    return-object p0
.end method

.method static synthetic access$102(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNeedRefresh:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mHasRecord:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mHasRecord:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->updateView(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Landroid/os/AsyncTask;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAsyncTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAsyncTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->goBackSettings()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mCurrentSimId:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->restoreState()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->restoreCheckState()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)Lcom/mediatek/gemini/GeminiSIMTetherMamager;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    return-object v0
.end method

.method private dealWith3AppLaunch()I
    .locals 7

    const/4 v6, 0x0

    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, -0x1

    :cond_0
    :goto_0
    const-string v4, "GeminiSIMTetherInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dealWith3AppLaunch() slotID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/Telephony$SIMInfo;

    iget v2, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    goto :goto_0

    :cond_2
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/Telephony$SIMInfo;

    iget v2, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget v4, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-le v2, v4, :cond_3

    iget v2, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    goto :goto_1
.end method

.method private disAssContact()V
    .locals 2

    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->restoreState()V

    new-instance v0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;-><init>(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo$DisContactAsyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAsyncTask:Landroid/os/AsyncTask;

    return-void
.end method

.method private goBackSettings()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/Settings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->finish()V

    return-void
.end method

.method private hideInformation()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method private restoreCheckState()V
    .locals 4

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gemini/GeminiSIMTetherItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->setCheckedStatus(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private restoreState()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    iput-boolean v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsShowCheckBox:Z

    invoke-direct {p0, v0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->showActionBar(Z)V

    sget-object v0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->sAdapter:Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    iget-boolean v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsShowCheckBox:Z

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->setShowCheckBox(Z)V

    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->invalidateOptionsMenu()V

    return-void
.end method

.method private setAllCheckBoxState(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v4, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gemini/GeminiSIMTetherItem;

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->setCheckedStatus(I)V

    if-eqz p1, :cond_0

    iget v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    invoke-direct {p0, v2}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->updateTitle(I)V

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    return-void
.end method

.method private showActionBar(Z)V
    .locals 9

    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v4, 0x7f04005c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0a00f7

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const v4, 0x7f0a00f8

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mActionBarTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mActionBarTextView:Landroid/widget/TextView;

    const v5, 0x7f080115

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/mediatek/gemini/GeminiSIMTetherInfo$3;

    invoke-direct {v4, p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo$3;-><init>(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v4, 0x10

    const/16 v5, 0x1a

    invoke-virtual {v0, v4, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto :goto_0
.end method

.method private updateTitle(I)V
    .locals 5

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mActionBarTextView:Landroid/widget/TextView;

    const v1, 0x7f080115

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateView(Z)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string v0, "GeminiSIMTetherInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecord="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public addContacts()V
    .locals 5

    const-string v2, "GeminiSIMTetherInfo"

    const-string v3, "Begin to add contacts now"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAsyncTask:Landroid/os/AsyncTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    move-result v1

    const-string v2, "GeminiSIMTetherInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addContacts()---isCanceled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "GeminiSIMTetherInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult() requestCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->hideInformation()V

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    new-instance v0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;-><init>(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Landroid/content/Context;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;

    iput-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAsyncTask:Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    iget-boolean v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mHasRecord:Z

    invoke-direct {p0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->updateView(Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-direct {p0, v4}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->updateView(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    const-wide/16 v11, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v8, 0x7f040040

    invoke-virtual {p0, v8}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->setContentView(I)V

    invoke-static {p0}, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->getInstance(Landroid/content/Context;)Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    const v8, 0x102000a

    invoke-virtual {p0, v8}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mListView:Landroid/widget/ListView;

    const v8, 0x7f0a0099

    invoke-virtual {p0, v8}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "simid"

    invoke-virtual {v8, v9, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mCurrentSimId:J

    const-string v8, "GeminiSIMTetherInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreate(), simid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v8, v3, v11

    if-nez v8, :cond_0

    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->dealWith3AppLaunch()I

    move-result v6

    invoke-static {p0, v6}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v7

    iget-wide v3, v7, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const-string v8, "GeminiSIMTetherInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "simId == -1 and reget the sim id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0, v3, v4}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v5

    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMCount(Landroid/content/Context;)I

    move-result v1

    const-string v2, ""

    const/4 v8, 0x1

    if-le v1, v8, :cond_1

    if-eqz v5, :cond_1

    iget-object v2, v5, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    :cond_1
    if-eqz v2, :cond_2

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mCurrSimId:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mManager:Lcom/mediatek/gemini/GeminiSIMTetherMamager;

    iget-object v9, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mCurrSimId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->setCurrSIMID(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->hideInformation()V

    new-instance v0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;-><init>(Lcom/mediatek/gemini/GeminiSIMTetherInfo;Landroid/content/Context;)V

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v8}, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v8

    check-cast v8, Lcom/mediatek/gemini/GeminiSIMTetherInfo$ContactAsyTask;

    iput-object v8, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAsyncTask:Landroid/os/AsyncTask;

    iget-object v8, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v8, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v8, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mSimReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v8, v9}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080609

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-boolean v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsShowCheckBox:Z

    if-nez v1, :cond_0

    const v1, 0x7f0a028f

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0a0290

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0a0291

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_0
    const v1, 0x7f0a0292

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAsyncTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAsyncTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v1, "GeminiSIMTetherInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy---isCanceled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-boolean v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsShowCheckBox:Z

    if-eqz v3, :cond_0

    const v3, 0x7f0a009a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    const/4 v1, 0x1

    :goto_1
    iget-object v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mAdpaterData:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/gemini/GeminiSIMTetherItem;

    invoke-virtual {v3, v1}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->setCheckedStatus(I)V

    iget v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    invoke-direct {p0, v3}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->updateTitle(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mNumSelected:I

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsShowCheckBox:Z

    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsShowCheckBox:Z

    invoke-direct {p0, v0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->showActionBar(Z)V

    sget-object v0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->sAdapter:Lcom/mediatek/gemini/GeminiSIMTetherAdapter;

    iget-boolean v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsShowCheckBox:Z

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->setShowCheckBox(Z)V

    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->invalidateOptionsMenu()V

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mIsShowCheckBox:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->restoreState()V

    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->restoreCheckState()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->setAllCheckBoxState(Z)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->setAllCheckBoxState(Z)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->disAssContact()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->addContacts()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a028f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "GeminiSIMTetherInfo"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mContactObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "GeminiSIMTetherInfo"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/gemini/GeminiSIMTetherMamager;->GEMINI_TETHER_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mContactObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
