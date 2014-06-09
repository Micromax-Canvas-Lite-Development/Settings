.class public Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;
.super Ljava/lang/Object;
.source "RingerVolumePreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/RingerVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizer"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mIsVisible:Z

.field private mLastProgress:I

.field private mOriginalVolume:I

.field public mProfileIsActive:Z

.field public mRingtone:Landroid/media/Ringtone;

.field private final mSeekBar:Landroid/widget/SeekBar;

.field private final mStreamType:I

.field public mSystemVolume:I

.field final synthetic this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;


# direct methods
.method public constructor <init>(Lcom/mediatek/audioprofile/RingerVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .locals 2

    const/4 v1, -0x1

    iput-object p1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iput v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    iput v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    iput v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mProfileIsActive:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mIsVisible:Z

    iput-object p2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    iput p4, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    iput-object p3, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0, p3}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->initSeekBar(Landroid/widget/SeekBar;)V

    return-void
.end method

.method private initSeekBar(Landroid/widget/SeekBar;)V
    .locals 4

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$200(Lcom/mediatek/audioprofile/RingerVolumePreference;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$300(Lcom/mediatek/audioprofile/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " get Original SYSTEM Volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$200(Lcom/mediatek/audioprofile/RingerVolumePreference;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$400(Lcom/mediatek/audioprofile/RingerVolumePreference;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolume(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " get Original Volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$200(Lcom/mediatek/audioprofile/RingerVolumePreference;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$400(Lcom/mediatek/audioprofile/RingerVolumePreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->isActive(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mProfileIsActive:Z

    iget-boolean v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mProfileIsActive:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    iget v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    if-eq v0, v1, :cond_0

    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sync "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " original Volume to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    iput v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    :cond_0
    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    iput v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$200(Lcom/mediatek/audioprofile/RingerVolumePreference;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$400(Lcom/mediatek/audioprofile/RingerVolumePreference;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$200(Lcom/mediatek/audioprofile/RingerVolumePreference;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$400(Lcom/mediatek/audioprofile/RingerVolumePreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private isSilentProfileActive()Z
    .locals 2

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$300(Lcom/mediatek/audioprofile/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sample()V
    .locals 3

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    invoke-virtual {v0, p0}, Lcom/mediatek/audioprofile/RingerVolumePreference;->onSampleStarting(Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;)V

    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sample, set system Volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->isSilentProfileActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->setVolume(IIZ)V

    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " play sample"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    :cond_1
    return-void
.end method

.method private setVolume(IIZ)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$300(Lcom/mediatek/audioprofile/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1, p2, v2}, Landroid/media/AudioManager;->setAudioProfileStreamVolume(III)V

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$300(Lcom/mediatek/audioprofile/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2, v2}, Landroid/media/AudioManager;->setAudioProfileStreamVolume(III)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mExt:Lcom/android/settings/ext/IAudioProfileExt;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$500(Lcom/mediatek/audioprofile/RingerVolumePreference;)Lcom/android/settings/ext/IAudioProfileExt;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$300(Lcom/mediatek/audioprofile/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/android/settings/ext/IAudioProfileExt;->setRingerVolume(Landroid/media/AudioManager;I)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$300(Lcom/mediatek/audioprofile/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v2}, Landroid/media/AudioManager;->setAudioProfileStreamVolume(III)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mExt:Lcom/android/settings/ext/IAudioProfileExt;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$500(Lcom/mediatek/audioprofile/RingerVolumePreference;)Lcom/android/settings/ext/IAudioProfileExt;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$300(Lcom/mediatek/audioprofile/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/settings/ext/IAudioProfileExt;->setVolume(Landroid/media/AudioManager;II)V

    goto :goto_0
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    return-void
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public getVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mIsVisible:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged: progress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : fromTouch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;)V
    .locals 2

    iget v0, p1, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;->mVolume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;->mVolume:I

    iput v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    iget v0, p1, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;->mOriginalVolume:I

    iput v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    iget v0, p1, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;->mSystemVolume:I

    iput v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;)V
    .locals 1

    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;->mVolume:I

    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    iput v0, p1, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;->mOriginalVolume:I

    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    iput v0, p1, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;->mSystemVolume:I

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->sample()V

    :cond_0
    return-void
.end method

.method postSetVolume(I)V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$300(Lcom/mediatek/audioprofile/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " get Original SYSTEM Volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$200(Lcom/mediatek/audioprofile/RingerVolumePreference;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$400(Lcom/mediatek/audioprofile/RingerVolumePreference;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolume(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " get Original Volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$200(Lcom/mediatek/audioprofile/RingerVolumePreference;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$400(Lcom/mediatek/audioprofile/RingerVolumePreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->isActive(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mProfileIsActive:Z

    iget-boolean v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mProfileIsActive:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    iget v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    if-eq v0, v1, :cond_0

    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sync "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " original Volume to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    iput v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    :cond_0
    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    iput v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    return-void
.end method

.method public revertVolume()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " revert Last Volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$200(Lcom/mediatek/audioprofile/RingerVolumePreference;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$400(Lcom/mediatek/audioprofile/RingerVolumePreference;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v3, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setStreamVolume(Ljava/lang/String;II)V

    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$200(Lcom/mediatek/audioprofile/RingerVolumePreference;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$400(Lcom/mediatek/audioprofile/RingerVolumePreference;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    iget v3, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setStreamVolume(Ljava/lang/String;II)V

    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$200(Lcom/mediatek/audioprofile/RingerVolumePreference;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$400(Lcom/mediatek/audioprofile/RingerVolumePreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->isActive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Active, Revert system Volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mOriginalVolume:I

    invoke-direct {p0, v0, v1, v4}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->setVolume(IIZ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->isSilentProfileActive()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not Active, Revert system Volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    invoke-direct {p0, v0, v1, v4}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->setVolume(IIZ)V

    goto :goto_0
.end method

.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->sample()V

    return-void
.end method

.method public saveVolume()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Save Last Volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$200(Lcom/mediatek/audioprofile/RingerVolumePreference;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$400(Lcom/mediatek/audioprofile/RingerVolumePreference;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v3, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setStreamVolume(Ljava/lang/String;II)V

    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$200(Lcom/mediatek/audioprofile/RingerVolumePreference;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$400(Lcom/mediatek/audioprofile/RingerVolumePreference;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    iget v3, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setStreamVolume(Ljava/lang/String;II)V

    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$200(Lcom/mediatek/audioprofile/RingerVolumePreference;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->this$0:Lcom/mediatek/audioprofile/RingerVolumePreference;

    # getter for: Lcom/mediatek/audioprofile/RingerVolumePreference;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/audioprofile/RingerVolumePreference;->access$400(Lcom/mediatek/audioprofile/RingerVolumePreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->isActive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Active, save system Volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-direct {p0, v0, v1, v4}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->setVolume(IIZ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->isSilentProfileActive()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not Active, Revert system Volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSystemVolume:I

    invoke-direct {p0, v0, v1, v4}, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->setVolume(IIZ)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mIsVisible:Z

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iput-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public stopSample()V
    .locals 3

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stop sample"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_0
    return-void
.end method
