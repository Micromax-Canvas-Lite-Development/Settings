.class public Lcom/mediatek/thememanager/ThemeData;
.super Ljava/lang/Object;
.source "ThemeData.java"


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mThemeName:Ljava/lang/String;

.field private mThemePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/thememanager/ThemeData;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/thememanager/ThemeData;->mThemeName:Ljava/lang/String;

    return-object v0
.end method

.method public getThemePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/thememanager/ThemeData;->mThemePath:Ljava/lang/String;

    return-object v0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/thememanager/ThemeData;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setThemeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/thememanager/ThemeData;->mThemeName:Ljava/lang/String;

    return-void
.end method

.method public setThemePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mediatek/thememanager/ThemeData;->mThemePath:Ljava/lang/String;

    return-void
.end method
