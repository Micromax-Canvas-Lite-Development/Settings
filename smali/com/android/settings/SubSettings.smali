.class public Lcom/android/settings/SubSettings;
.super Lcom/android/settings/Settings;
.source "SubSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigateUp()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->finish()V

    const/4 v0, 0x1

    return v0
.end method
