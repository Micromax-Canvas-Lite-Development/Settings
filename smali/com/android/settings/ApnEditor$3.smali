.class Lcom/android/settings/ApnEditor$3;
.super Landroid/database/ContentObserver;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnEditor;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ApnEditor$3;->this$0:Lcom/android/settings/ApnEditor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v4, 0x0

    # getter for: Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/ApnEditor;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "background changed apn "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/ApnEditor$3;->this$0:Lcom/android/settings/ApnEditor;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/ApnEditor;->mFirstTime:Z
    invoke-static {v0, v1}, Lcom/android/settings/ApnEditor;->access$1502(Lcom/android/settings/ApnEditor;Z)Z

    iget-object v0, p0, Lcom/android/settings/ApnEditor$3;->this$0:Lcom/android/settings/ApnEditor;

    iget-object v1, p0, Lcom/android/settings/ApnEditor$3;->this$0:Lcom/android/settings/ApnEditor;

    # getter for: Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/settings/ApnEditor;->access$1600(Lcom/android/settings/ApnEditor;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnEditor;->stopManagingCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/android/settings/ApnEditor$3;->this$0:Lcom/android/settings/ApnEditor;

    iget-object v1, p0, Lcom/android/settings/ApnEditor$3;->this$0:Lcom/android/settings/ApnEditor;

    iget-object v2, p0, Lcom/android/settings/ApnEditor$3;->this$0:Lcom/android/settings/ApnEditor;

    # getter for: Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/settings/ApnEditor;->access$1700(Lcom/android/settings/ApnEditor;)Landroid/net/Uri;

    move-result-object v2

    # getter for: Lcom/android/settings/ApnEditor;->PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/ApnEditor;->access$1800()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/android/settings/ApnEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    # setter for: Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/android/settings/ApnEditor;->access$1602(Lcom/android/settings/ApnEditor;Landroid/database/Cursor;)Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/settings/ApnEditor$3;->this$0:Lcom/android/settings/ApnEditor;

    # getter for: Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/settings/ApnEditor;->access$1600(Lcom/android/settings/ApnEditor;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Lcom/android/settings/ApnEditor$3;->this$0:Lcom/android/settings/ApnEditor;

    # invokes: Lcom/android/settings/ApnEditor;->fillUi()V
    invoke-static {v0}, Lcom/android/settings/ApnEditor;->access$1900(Lcom/android/settings/ApnEditor;)V

    return-void
.end method
