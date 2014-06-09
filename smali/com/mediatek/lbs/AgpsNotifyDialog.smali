.class public Lcom/mediatek/lbs/AgpsNotifyDialog;
.super Landroid/app/Activity;
.source "AgpsNotifyDialog.java"


# static fields
.field private static final NOTIFY_STRING_LIST:[I


# instance fields
.field private mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

.field private mCliecntName:Ljava/lang/String;

.field private mDialog:Landroid/app/Dialog;

.field private mGetOtherNotify:Z

.field private mIsUserResponse:Z

.field private mMessage:Ljava/lang/String;

.field private mRequestId:Ljava/lang/String;

.field private mSessionId:I

.field private mTimer:Ljava/util/Timer;

.field private mTitle:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/lbs/AgpsNotifyDialog;->NOTIFY_STRING_LIST:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f080031
        0x7f080043
        0x7f080044
        0x7f080045
        0x7f080046
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mTimer:Ljava/util/Timer;

    iput-boolean v1, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mIsUserResponse:Z

    iput-boolean v1, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mGetOtherNotify:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mDialog:Landroid/app/Dialog;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mTitle:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mSessionId:I

    iput v1, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mType:I

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/lbs/AgpsNotifyDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mediatek/lbs/AgpsNotifyDialog;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/lbs/AgpsNotifyDialog;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mType:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/lbs/AgpsNotifyDialog;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mSessionId:I

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/lbs/AgpsNotifyDialog;)Lcom/mediatek/common/agps/MtkAgpsManager;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AgpsNotify] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setTimerIfNeed(I)V
    .locals 9

    const/4 v4, 0x1

    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    iput-object v6, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mTimer:Ljava/util/Timer;

    new-instance v2, Lcom/mediatek/lbs/AgpsNotifyDialog$1;

    invoke-direct {v2, p0}, Lcom/mediatek/lbs/AgpsNotifyDialog$1;-><init>(Lcom/mediatek/lbs/AgpsNotifyDialog;)V

    iget-object v6, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    invoke-interface {v6}, Lcom/mediatek/common/agps/MtkAgpsManager;->getConfig()Lcom/mediatek/common/agps/MtkAgpsConfig;

    move-result-object v0

    iget v1, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->notifyTimeout:I

    iget v5, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->verifyTimeout:I

    iget v6, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->niTimer:I

    if-ne v6, v4, :cond_1

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyTimeout="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " verifyTimeout="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " timerEnabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/lbs/AgpsNotifyDialog;->log(Ljava/lang/String;)V

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    if-nez p1, :cond_2

    mul-int/lit16 v3, v1, 0x3e8

    :goto_1
    iget-object v6, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mTimer:Ljava/util/Timer;

    int-to-long v7, v3

    invoke-virtual {v6, v2, v7, v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    mul-int/lit16 v3, v5, 0x3e8

    goto :goto_1
.end method

.method private setup(Landroid/content/Intent;)V
    .locals 12

    const v11, 0x7f080028

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    if-nez v5, :cond_0

    const-string v5, "mtk-agps"

    invoke-virtual {p0, v5}, Lcom/mediatek/lbs/AgpsNotifyDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/common/agps/MtkAgpsManager;

    iput-object v5, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v4, -0x1

    if-eqz v0, :cond_a

    const/4 v3, 0x0

    const-string v5, "type"

    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "session_id"

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "request_id"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mRequestId:Ljava/lang/String;

    const-string v5, "client_name"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mCliecntName:Ljava/lang/String;

    const-string v5, "cancel"

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v5, "resp"

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] sessionId=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] pre-essionId=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mSessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] mRequestId=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mRequestId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] mCliecntName=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mCliecntName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] cancel=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] mockUserResp=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/lbs/AgpsNotifyDialog;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    iput-boolean v7, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mGetOtherNotify:Z

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/AgpsNotifyDialog;->finishActivity(Z)V

    iget v5, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mType:I

    if-eq v5, v9, :cond_1

    iget v5, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mType:I

    if-ne v5, v10, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    iget v6, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mSessionId:I

    invoke-interface {v5, v6, v7}, Lcom/mediatek/common/agps/MtkAgpsManager;->niUserResponse(II)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-lez v2, :cond_6

    iput-boolean v7, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mGetOtherNotify:Z

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/AgpsNotifyDialog;->finishActivity(Z)V

    if-ne v2, v8, :cond_4

    iget-object v5, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    iget v6, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mSessionId:I

    invoke-interface {v5, v6, v8}, Lcom/mediatek/common/agps/MtkAgpsManager;->niUserResponse(II)V

    goto :goto_0

    :cond_4
    if-ne v2, v9, :cond_5

    iget-object v5, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    iget v6, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mSessionId:I

    invoke-interface {v5, v6, v9}, Lcom/mediatek/common/agps/MtkAgpsManager;->niUserResponse(II)V

    goto :goto_0

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERR: unknown mock user response="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/lbs/AgpsNotifyDialog;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-boolean v5, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mGetOtherNotify:Z

    if-eqz v5, :cond_8

    invoke-virtual {p0, v8}, Lcom/mediatek/lbs/AgpsNotifyDialog;->finishActivity(Z)V

    iget v5, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mType:I

    if-eq v5, v9, :cond_7

    iget v5, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mType:I

    if-ne v5, v10, :cond_8

    :cond_7
    iget-object v5, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mAgpsMgr:Lcom/mediatek/common/agps/MtkAgpsManager;

    iget v6, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mSessionId:I

    invoke-interface {v5, v6, v7}, Lcom/mediatek/common/agps/MtkAgpsManager;->niUserResponse(II)V

    :cond_8
    iput v3, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mSessionId:I

    iput v4, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mType:I

    sget-object v5, Lcom/mediatek/lbs/AgpsNotifyDialog;->NOTIFY_STRING_LIST:[I

    aget v5, v5, v4

    invoke-virtual {p0, v5}, Lcom/mediatek/lbs/AgpsNotifyDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mMessage:Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mRequestId:Ljava/lang/String;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mCliecntName:Ljava/lang/String;

    if-eqz v5, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v11}, Lcom/mediatek/lbs/AgpsNotifyDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mRequestId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f080029

    invoke-virtual {p0, v6}, Lcom/mediatek/lbs/AgpsNotifyDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mCliecntName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mMessage:Ljava/lang/String;

    :cond_9
    :goto_1
    iget v5, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mType:I

    if-ne v5, v8, :cond_d

    const v5, 0x7f08002b

    invoke-virtual {p0, v5}, Lcom/mediatek/lbs/AgpsNotifyDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mTitle:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/mediatek/lbs/AgpsNotifyDialog;->setTimerIfNeed(I)V

    :goto_2
    iget v5, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mType:I

    invoke-virtual {p0, v5}, Lcom/mediatek/lbs/AgpsNotifyDialog;->showDialog(I)V

    goto/16 :goto_0

    :cond_a
    const-string v5, "Error: Bundle is null"

    invoke-direct {p0, v5}, Lcom/mediatek/lbs/AgpsNotifyDialog;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/mediatek/lbs/AgpsNotifyDialog;->finishActivity(Z)V

    goto/16 :goto_0

    :cond_b
    iget-object v5, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mRequestId:Ljava/lang/String;

    if-eqz v5, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v11}, Lcom/mediatek/lbs/AgpsNotifyDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mRequestId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mMessage:Ljava/lang/String;

    goto :goto_1

    :cond_c
    iget-object v5, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mCliecntName:Ljava/lang/String;

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f080029

    invoke-virtual {p0, v6}, Lcom/mediatek/lbs/AgpsNotifyDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mCliecntName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mMessage:Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    iget v5, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mType:I

    if-ne v5, v9, :cond_e

    const v5, 0x7f08002a

    invoke-virtual {p0, v5}, Lcom/mediatek/lbs/AgpsNotifyDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mTitle:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/mediatek/lbs/AgpsNotifyDialog;->setTimerIfNeed(I)V

    goto/16 :goto_2

    :cond_e
    iget v5, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mType:I

    if-ne v5, v10, :cond_f

    const v5, 0x7f08002a

    invoke-virtual {p0, v5}, Lcom/mediatek/lbs/AgpsNotifyDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mTitle:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/mediatek/lbs/AgpsNotifyDialog;->setTimerIfNeed(I)V

    goto/16 :goto_2

    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERR: unknown type recv type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/lbs/AgpsNotifyDialog;->log(Ljava/lang/String;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public finishActivity(Z)V
    .locals 7

    iget-object v0, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    if-eqz p1, :cond_0

    const v2, 0x7f02005e

    iget-object v3, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mMessage:Ljava/lang/String;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/lbs/AgpsNotifyDialog;->sendNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mGetOtherNotify:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/mediatek/lbs/AgpsNotifyDialog;->finish()V

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mGetOtherNotify:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "onCreate v2"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/AgpsNotifyDialog;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mIsUserResponse:Z

    invoke-virtual {p0}, Lcom/mediatek/lbs/AgpsNotifyDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/AgpsNotifyDialog;->setup(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    const v4, 0x7f08002f

    const v3, 0x7f08002e

    const v1, 0x7f08002a

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    const-string v0, "WARNING: No such dialog"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/AgpsNotifyDialog;->log(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mDialog:Landroid/app/Dialog;

    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08002b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mediatek/lbs/AgpsNotifyDialog$3;

    invoke-direct {v1, p0}, Lcom/mediatek/lbs/AgpsNotifyDialog$3;-><init>(Lcom/mediatek/lbs/AgpsNotifyDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08002d

    new-instance v2, Lcom/mediatek/lbs/AgpsNotifyDialog$2;

    invoke-direct {v2, p0}, Lcom/mediatek/lbs/AgpsNotifyDialog$2;-><init>(Lcom/mediatek/lbs/AgpsNotifyDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mDialog:Landroid/app/Dialog;

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mediatek/lbs/AgpsNotifyDialog$6;

    invoke-direct {v1, p0}, Lcom/mediatek/lbs/AgpsNotifyDialog$6;-><init>(Lcom/mediatek/lbs/AgpsNotifyDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mediatek/lbs/AgpsNotifyDialog$5;

    invoke-direct {v1, p0}, Lcom/mediatek/lbs/AgpsNotifyDialog$5;-><init>(Lcom/mediatek/lbs/AgpsNotifyDialog;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mediatek/lbs/AgpsNotifyDialog$4;

    invoke-direct {v1, p0}, Lcom/mediatek/lbs/AgpsNotifyDialog$4;-><init>(Lcom/mediatek/lbs/AgpsNotifyDialog;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mDialog:Landroid/app/Dialog;

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mediatek/lbs/AgpsNotifyDialog$9;

    invoke-direct {v1, p0}, Lcom/mediatek/lbs/AgpsNotifyDialog$9;-><init>(Lcom/mediatek/lbs/AgpsNotifyDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mediatek/lbs/AgpsNotifyDialog$8;

    invoke-direct {v1, p0}, Lcom/mediatek/lbs/AgpsNotifyDialog$8;-><init>(Lcom/mediatek/lbs/AgpsNotifyDialog;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mediatek/lbs/AgpsNotifyDialog$7;

    invoke-direct {v1, p0}, Lcom/mediatek/lbs/AgpsNotifyDialog$7;-><init>(Lcom/mediatek/lbs/AgpsNotifyDialog;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "onNewIntent"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/AgpsNotifyDialog;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/lbs/AgpsNotifyDialog;->mGetOtherNotify:Z

    invoke-direct {p0, p1}, Lcom/mediatek/lbs/AgpsNotifyDialog;->setup(Landroid/content/Intent;)V

    return-void
.end method

.method public sendNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v4, ""

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput p2, v2, Landroid/app/Notification;->icon:I

    iput-object p3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iput v5, v2, Landroid/app/Notification;->defaults:I

    const/16 v4, 0x10

    iput v4, v2, Landroid/app/Notification;->flags:I

    invoke-virtual {v2, p1, p4, p5, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lcom/mediatek/lbs/AgpsNotifyDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    invoke-virtual {v3, p6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
