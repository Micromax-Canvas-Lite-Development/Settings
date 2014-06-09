.class public Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;
.super Ljava/lang/Object;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/RingerVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeStore"
.end annotation


# instance fields
.field public mOriginalVolume:I

.field public mSystemVolume:I

.field public mVolume:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;->mVolume:I

    iput v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;->mOriginalVolume:I

    iput v0, p0, Lcom/mediatek/audioprofile/RingerVolumePreference$VolumeStore;->mSystemVolume:I

    return-void
.end method
