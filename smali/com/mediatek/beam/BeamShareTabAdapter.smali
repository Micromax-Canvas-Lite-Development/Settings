.class public Lcom/mediatek/beam/BeamShareTabAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "BeamShareTabAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10

    const v6, 0x7f020050

    const/4 v9, 0x1

    new-instance v4, Lcom/mediatek/beam/BeamShareTask;

    invoke-direct {v4, p3}, Lcom/mediatek/beam/BeamShareTask;-><init>(Landroid/database/Cursor;)V

    const v7, 0x7f0a0026

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v4}, Lcom/mediatek/beam/BeamShareTask;->getDirection()Lcom/mediatek/beam/BeamShareTask$Direction;

    move-result-object v7

    sget-object v8, Lcom/mediatek/beam/BeamShareTask$Direction;->in:Lcom/mediatek/beam/BeamShareTask$Direction;

    if-ne v7, v8, :cond_2

    invoke-virtual {v4}, Lcom/mediatek/beam/BeamShareTask;->getState()I

    move-result v7

    if-ne v7, v9, :cond_0

    const v6, 0x7f020051

    :cond_0
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const v6, 0x7f0a0027

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/mediatek/beam/BeamShareTask;->getData()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f0a0028

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v0, Ljava/util/Date;

    invoke-virtual {v4}, Lcom/mediatek/beam/BeamShareTask;->getModifiedDate()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4}, Lcom/mediatek/beam/BeamShareTask;->getModifiedDate()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f0a0029

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/mediatek/beam/BeamShareTask;->getTotalBytes()J

    move-result-wide v6

    invoke-static {p2, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    invoke-virtual {v4}, Lcom/mediatek/beam/BeamShareTask;->getState()I

    move-result v7

    if-ne v7, v9, :cond_3

    const v6, 0x7f020052

    :cond_3
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    invoke-static {p2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
