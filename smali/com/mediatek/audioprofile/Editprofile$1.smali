.class Lcom/mediatek/audioprofile/Editprofile$1;
.super Ljava/lang/Object;
.source "Editprofile.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/audioprofile/Editprofile;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/Editprofile;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/Editprofile;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/audioprofile/Editprofile$1;->this$0:Lcom/mediatek/audioprofile/Editprofile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5

    const-string v2, "Settings/EditProfile"

    const-string v3, "update"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile$1;->this$0:Lcom/mediatek/audioprofile/Editprofile;

    # getter for: Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/mediatek/audioprofile/Editprofile;->access$000(Lcom/mediatek/audioprofile/Editprofile;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile$1;->this$0:Lcom/mediatek/audioprofile/Editprofile;

    # getter for: Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/audioprofile/Editprofile;->access$100(Lcom/mediatek/audioprofile/Editprofile;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Settings/EditProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile$1;->this$0:Lcom/mediatek/audioprofile/Editprofile;

    # invokes: Lcom/mediatek/audioprofile/Editprofile;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/mediatek/audioprofile/Editprofile;->access$200(Lcom/mediatek/audioprofile/Editprofile;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile$1;->this$0:Lcom/mediatek/audioprofile/Editprofile;

    # getter for: Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/mediatek/audioprofile/Editprofile;->access$000(Lcom/mediatek/audioprofile/Editprofile;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v2, "Settings/EditProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vibrate setting is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
