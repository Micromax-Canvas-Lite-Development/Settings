.class public Lcom/android/settings/AcerLegalInfo;
.super Landroid/app/Activity;
.source "AcerLegalInfo.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "android.settings.ACER_LEGAL"


# instance fields
.field private AcerLogContent:Landroid/widget/TextView;

.field private AcerLogTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/android/settings/AcerLegalInfo;->setContentView(I)V

    const v0, 0x7f0a0006

    invoke-virtual {p0, v0}, Lcom/android/settings/AcerLegalInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/AcerLegalInfo;->AcerLogTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0007

    invoke-virtual {p0, v0}, Lcom/android/settings/AcerLegalInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/AcerLegalInfo;->AcerLogContent:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/AcerLegalInfo;->AcerLogTitle:Landroid/widget/TextView;

    const v1, 0x7f080965

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/AcerLegalInfo;->AcerLogContent:Landroid/widget/TextView;

    const v1, 0x7f080966

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
