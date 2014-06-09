.class public Lcom/mediatek/beam/BeamShareTask;
.super Ljava/lang/Object;
.source "BeamShareTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/beam/BeamShareTask$Direction;,
        Lcom/mediatek/beam/BeamShareTask$BeamShareTaskMetaData;
    }
.end annotation


# static fields
.field public static final ID_NULL:I = -0x1

.field public static final SC_INCOMING_TASK:Ljava/lang/String; = "type in (0,2)"

.field public static final SC_OUTGOING_TASK:Ljava/lang/String; = "type in (1,3)"

.field public static final STATE_FAILURE:I = 0x0

.field public static final STATE_SUCCESS:I = 0x1

.field public static final TYPE_BLUETOOTH_INCOMING:I = 0x0

.field public static final TYPE_BLUETOOTH_OUTGOING:I = 0x1

.field public static final TYPE_WIFI_DIRECT_INCOMING:I = 0x2

.field public static final TYPE_WIFI_DIRECT_OUTGOING:I = 0x3


# instance fields
.field private mData:Ljava/lang/String;

.field private mDoneBytes:J

.field private mId:I

.field private mMimeType:Ljava/lang/String;

.field private mModifiedDate:J

.field private mState:I

.field private mTotalBytes:J

.field private mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/beam/BeamShareTask;->mId:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/beam/BeamShareTask;->mModifiedDate:J

    iput p1, p0, Lcom/mediatek/beam/BeamShareTask;->mType:I

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/beam/BeamShareTask;->mId:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/beam/BeamShareTask;->mModifiedDate:J

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/beam/BeamShareTask;->mId:I

    const-string v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/beam/BeamShareTask;->mType:I

    const-string v0, "state"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/beam/BeamShareTask;->mState:I

    const-string v0, "data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/beam/BeamShareTask;->mData:Ljava/lang/String;

    const-string v0, "mime"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/beam/BeamShareTask;->mMimeType:Ljava/lang/String;

    const-string v0, "total"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/beam/BeamShareTask;->mTotalBytes:J

    const-string v0, "done"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/beam/BeamShareTask;->mDoneBytes:J

    const-string v0, "modified"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/beam/BeamShareTask;->mModifiedDate:J

    return-void
.end method


# virtual methods
.method public getContentValues()Landroid/content/ContentValues;
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget v1, p0, Lcom/mediatek/beam/BeamShareTask;->mId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, "_id"

    iget v2, p0, Lcom/mediatek/beam/BeamShareTask;->mId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    iget-wide v1, p0, Lcom/mediatek/beam/BeamShareTask;->mModifiedDate:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const-string v1, "modified"

    iget-wide v2, p0, Lcom/mediatek/beam/BeamShareTask;->mModifiedDate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    const-string v1, "type"

    iget v2, p0, Lcom/mediatek/beam/BeamShareTask;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "state"

    iget v2, p0, Lcom/mediatek/beam/BeamShareTask;->mState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "data"

    iget-object v2, p0, Lcom/mediatek/beam/BeamShareTask;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mime"

    iget-object v2, p0, Lcom/mediatek/beam/BeamShareTask;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "total"

    iget-wide v2, p0, Lcom/mediatek/beam/BeamShareTask;->mTotalBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "done"

    iget-wide v2, p0, Lcom/mediatek/beam/BeamShareTask;->mDoneBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareTask;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Lcom/mediatek/beam/BeamShareTask$Direction;
    .locals 1

    iget v0, p0, Lcom/mediatek/beam/BeamShareTask;->mType:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/mediatek/beam/BeamShareTask$Direction;->out:Lcom/mediatek/beam/BeamShareTask$Direction;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/mediatek/beam/BeamShareTask$Direction;->in:Lcom/mediatek/beam/BeamShareTask$Direction;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/mediatek/beam/BeamShareTask$Direction;->out:Lcom/mediatek/beam/BeamShareTask$Direction;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDoneBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/mediatek/beam/BeamShareTask;->mDoneBytes:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/mediatek/beam/BeamShareTask;->mId:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/beam/BeamShareTask;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedDate()J
    .locals 2

    iget-wide v0, p0, Lcom/mediatek/beam/BeamShareTask;->mModifiedDate:J

    return-wide v0
.end method

.method public getPrintableString()Ljava/lang/String;
    .locals 7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mediatek/beam/BeamShareTask;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/mediatek/beam/BeamShareTask;->mState:I

    return v0
.end method

.method public getTaskUri()Landroid/net/Uri;
    .locals 2

    iget v0, p0, Lcom/mediatek/beam/BeamShareTask;->mId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "null id task can\'t get uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/mediatek/beam/BeamShareTask$BeamShareTaskMetaData;->CONTENT_URI:Landroid/net/Uri;

    iget v1, p0, Lcom/mediatek/beam/BeamShareTask;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getTotalBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/mediatek/beam/BeamShareTask;->mTotalBytes:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/mediatek/beam/BeamShareTask;->mType:I

    return v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/beam/BeamShareTask;->mData:Ljava/lang/String;

    return-void
.end method

.method public setDoneBytes(J)V
    .locals 0

    iput-wide p1, p0, Lcom/mediatek/beam/BeamShareTask;->mDoneBytes:J

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/mediatek/beam/BeamShareTask;->mId:I

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/beam/BeamShareTask;->mMimeType:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/mediatek/beam/BeamShareTask;->mMimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method public setModifiedDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/mediatek/beam/BeamShareTask;->mModifiedDate:J

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/mediatek/beam/BeamShareTask;->mState:I

    return-void
.end method

.method public setTotalBytes(J)V
    .locals 0

    iput-wide p1, p0, Lcom/mediatek/beam/BeamShareTask;->mTotalBytes:J

    return-void
.end method
