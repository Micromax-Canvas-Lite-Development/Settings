.class public Lcom/android/settings/deviceinfo/AcerSystemInfo;
.super Landroid/preference/PreferenceActivity;
.source "AcerSystemInfo.java"


# static fields
.field private static final KEY_ACER_APN_VERSION:Ljava/lang/String; = "Acer_APN_Version"

.field private static final KEY_ACER_SN:Ljava/lang/String; = "Acer_SN"

.field private static final KEY_ACER_SNID:Ljava/lang/String; = "Acer_SNID"

.field private static final KEY_CPU_SPEED:Ljava/lang/String; = "CPU_speed"

.field private static final KEY_CPU_VENDOR:Ljava/lang/String; = "CPU_vendor"

.field private static final KEY_CPU_VERSION:Ljava/lang/String; = "CPU_version"

.field private static final KEY_DEVICE_INFO_VERSION:Ljava/lang/String; = "Device_info_version"

.field private static final KEY_HORIZONTAL_PIXELS:Ljava/lang/String; = "Horizontal_Pixels"

.field private static final KEY_MANUFACTURER:Ljava/lang/String; = "Manufacturer"

.field private static final KEY_MODEL_ID:Ljava/lang/String; = "Model_ID"

.field private static final KEY_PRODUCT_SKU:Ljava/lang/String; = "Product_SKU"

.field private static final KEY_RAM_SIZE:Ljava/lang/String; = "RAM_Size"

.field private static final KEY_ROM_SIZE:Ljava/lang/String; = "ROM_Size"

.field private static final KEY_VERTICAL_PIXELS:Ljava/lang/String; = "Vertical_Pixels"

.field private static final TAG:Ljava/lang/String; = "DeviceInfoStatus"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/AcerSystemInfo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/AcerSystemInfo;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/AcerSystemInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08027b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public initUI()V
    .locals 3

    const-string v1, "Acer_APN_Version"

    const-string v2, "V2.006"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/AcerSystemInfo;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ro.build.sku"

    const-string v2, "WW_GEN1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Product_SKU"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/AcerSystemInfo;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Device_info_version"

    const-string v2, "1.0"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/AcerSystemInfo;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Manufacturer"

    const-string v2, "Micromax"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/AcerSystemInfo;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Model_ID"

    const-string v2, "A110"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/AcerSystemInfo;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ROM_Size"

    const-string v2, "4 GB"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/AcerSystemInfo;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RAM_Size"

    const-string v2, "512 MB"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/AcerSystemInfo;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Horizontal_Pixels"

    const-string v2, "480"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/AcerSystemInfo;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Vertical_Pixels"

    const-string v2, "854"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/AcerSystemInfo;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/AcerSystemInfo;->showSNandSNID()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f060002

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/AcerSystemInfo;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/AcerSystemInfo;->initUI()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    return-void
.end method

.method public showSNandSNID()V
    .locals 4

    const-string v0, ""

    const-string v1, ""

    const-string v2, "ro.acercode22"

    const-string v3, "Invalid"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ro.acerserialno"

    const-string v3, "Invalid"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Acer_SN"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/AcerSystemInfo;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Acer_SNID"

    invoke-direct {p0, v2, v1}, Lcom/android/settings/deviceinfo/AcerSystemInfo;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
