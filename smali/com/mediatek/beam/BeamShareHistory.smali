.class public Lcom/mediatek/beam/BeamShareHistory;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BeamShareHistory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/beam/BeamShareHistory$ClearTask;,
        Lcom/mediatek/beam/BeamShareHistory$TabInfo;
    }
.end annotation


# static fields
.field private static final CLEAR_ALL_CONFIRM_DIALOG_ID:I = 0x3

.field private static final CLEAR_ITEM_CONFIRM_DIALOG_ID:I = 0x5

.field private static final FILE_NOT_SUPPORTED_DIALOG_ID:I = 0x1

.field private static final FILE_RECEIVE_FAIL_DIALOG_ID:I = 0x4

.field private static final FILE_RESEND_DIALOG_ID:I = 0x2

.field private static final INCOMING_TAB_TAG:Ljava/lang/String; = "Incoming"

.field private static final MENU_ID_CLEAR:I = 0x0

.field private static final OUTGOING_TAB_TAG:Ljava/lang/String; = "Outgoing"

.field private static final TAG:Ljava/lang/String; = "BeamShareHistory"

.field private static final UPDATE_MENU_MSG:I = 0x1


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/mediatek/beam/BeamShareTabAdapter;

.field private mCilckedFileName:Ljava/lang/String;

.field private mContentReslover:Landroid/content/ContentResolver;

.field private mCurrentDialogId:I

.field private mCurrentTabIndex:I

.field private mCursor:Landroid/database/Cursor;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLongClickUri:Landroid/net/Uri;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/beam/BeamShareHistory$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mCursor:Landroid/database/Cursor;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mTabs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mCurrentDialogId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mCurrentTabIndex:I

    new-instance v0, Lcom/mediatek/beam/BeamShareHistory$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/beam/BeamShareHistory$1;-><init>(Lcom/mediatek/beam/BeamShareHistory;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mSettingsObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/mediatek/beam/BeamShareHistory$2;

    invoke-direct {v0, p0}, Lcom/mediatek/beam/BeamShareHistory$2;-><init>(Lcom/mediatek/beam/BeamShareHistory;)V

    iput-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/beam/BeamShareHistory;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/beam/BeamShareHistory;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mCurrentTabIndex:I

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/beam/BeamShareHistory;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mediatek/beam/BeamShareHistory;->showDialog(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/mediatek/beam/BeamShareHistory;I)I
    .locals 0

    iput p1, p0, Lcom/mediatek/beam/BeamShareHistory;->mCurrentTabIndex:I

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/beam/BeamShareHistory;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mLongClickUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/mediatek/beam/BeamShareHistory;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/beam/BeamShareHistory;->mLongClickUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/mediatek/beam/BeamShareHistory;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mediatek/beam/BeamShareHistory;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/beam/BeamShareHistory;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mediatek/beam/BeamShareHistory;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/beam/BeamShareHistory;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mContentReslover:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/beam/BeamShareHistory;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/beam/BeamShareHistory;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/beam/BeamShareHistory;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/beam/BeamShareHistory;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/beam/BeamShareHistory;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/beam/BeamShareHistory;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/beam/BeamShareHistory;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/beam/BeamShareHistory;->mInflater:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mediatek/beam/BeamShareHistory;)Lcom/mediatek/beam/BeamShareTabAdapter;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mAdapter:Lcom/mediatek/beam/BeamShareTabAdapter;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/beam/BeamShareHistory;Lcom/mediatek/beam/BeamShareTabAdapter;)Lcom/mediatek/beam/BeamShareTabAdapter;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/beam/BeamShareHistory;->mAdapter:Lcom/mediatek/beam/BeamShareTabAdapter;

    return-object p1
.end method

.method static synthetic access$802(Lcom/mediatek/beam/BeamShareHistory;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/beam/BeamShareHistory;->mCilckedFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mediatek/beam/BeamShareHistory;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mediatek/beam/BeamShareHistory;->showDialog(I)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "BeamShareHistory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    const-string v0, "BeamShareHistory"

    const-string v1, "DialogInterface onClick return"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mCurrentDialogId:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/mediatek/beam/BeamShareHistory$ClearTask;

    invoke-direct {v0, p0, v3}, Lcom/mediatek/beam/BeamShareHistory$ClearTask;-><init>(Lcom/mediatek/beam/BeamShareHistory;Lcom/mediatek/beam/BeamShareHistory$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/beam/BeamShareHistory$ClearTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mCurrentDialogId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const-string v0, "BeamShareHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Long click uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/beam/BeamShareHistory;->mLongClickUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mContentReslover:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mLongClickUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "BeamShareHistory"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/mediatek/beam/BeamShareHistory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0801af

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_0
    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mContentReslover:Landroid/content/ContentResolver;

    new-instance v0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;

    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0801a2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1, v3}, Lcom/mediatek/beam/BeamShareHistory$TabInfo;-><init>(Lcom/mediatek/beam/BeamShareHistory;Lcom/mediatek/beam/BeamShareHistory;Ljava/lang/CharSequence;Z)V

    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;

    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0801a3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/mediatek/beam/BeamShareHistory$TabInfo;-><init>(Lcom/mediatek/beam/BeamShareHistory;Lcom/mediatek/beam/BeamShareHistory;Ljava/lang/CharSequence;Z)V

    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mHandler:Landroid/os/Handler;

    :cond_1
    invoke-virtual {p0, v3}, Lcom/mediatek/beam/BeamShareHistory;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const v7, 0x104000a

    const v4, 0x1040009

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    iput p1, p0, Lcom/mediatek/beam/BeamShareHistory;->mCurrentDialogId:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0801a8

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0801a9

    invoke-virtual {p0, v2}, Lcom/mediatek/beam/BeamShareHistory;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0801ab

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0801ac

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mediatek/beam/BeamShareHistory;->mCilckedFileName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/beam/BeamShareHistory;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0801b0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0801b1

    invoke-virtual {p0, v2}, Lcom/mediatek/beam/BeamShareHistory;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0801ab

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0801b2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mediatek/beam/BeamShareHistory;->mCilckedFileName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/beam/BeamShareHistory;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0801b3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0801b4

    invoke-virtual {p0, v2}, Lcom/mediatek/beam/BeamShareHistory;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0801b3

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f0801a7

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const-string v4, "BeamShareHistory"

    const-string v5, "onCreateView"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/mediatek/beam/BeamShareHistory;->mInflater:Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/mediatek/beam/BeamShareHistory;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04000f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v4, 0x1020012

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabHost;

    move-object v3, v4

    check-cast v3, Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->setup()V

    iget-object v4, p0, Lcom/mediatek/beam/BeamShareHistory;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    iget-object v4, p0, Lcom/mediatek/beam/BeamShareHistory;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v4, p0, Lcom/mediatek/beam/BeamShareHistory;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/beam/BeamShareHistory$TabInfo;

    iget-object v5, p0, Lcom/mediatek/beam/BeamShareHistory;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v5, v3}, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->build(Landroid/view/LayoutInflater;Landroid/widget/TabHost;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/mediatek/beam/BeamShareHistory;->mTabs:Ljava/util/ArrayList;

    iget v5, p0, Lcom/mediatek/beam/BeamShareHistory;->mCurrentTabIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/beam/BeamShareHistory$TabInfo;

    invoke-virtual {v4}, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/beam/BeamShareHistory;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/mediatek/beam/BeamShareHistory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-object v1
.end method

.method public onDestroy()V
    .locals 4

    iget-object v3, p0, Lcom/mediatek/beam/BeamShareHistory;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/mediatek/beam/BeamShareHistory;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/beam/BeamShareHistory$TabInfo;

    invoke-virtual {v3}, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/mediatek/beam/BeamShareHistory;->showDialog(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string v0, "BeamShareHistory"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/mediatek/beam/BeamShareHistory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const-string v0, "BeamShareHistory"

    const-string v1, "unregister content obsever"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5

    const/4 v1, 0x0

    const-string v2, "BeamShareHistory"

    const-string v3, "onPrepareOptionsMenu"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/mediatek/beam/BeamShareHistory;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/beam/BeamShareHistory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v2, "BeamShareHistory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Menu enabled status is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/beam/BeamShareHistory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    invoke-virtual {p0}, Lcom/mediatek/beam/BeamShareHistory;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/beam/BeamShareTask$BeamShareTaskMetaData;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/beam/BeamShareHistory;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
