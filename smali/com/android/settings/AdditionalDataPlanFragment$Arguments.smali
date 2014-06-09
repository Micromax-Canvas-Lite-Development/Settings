.class public final enum Lcom/android/settings/AdditionalDataPlanFragment$Arguments;
.super Ljava/lang/Enum;
.source "AdditionalDataPlanFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AdditionalDataPlanFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Arguments"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/AdditionalDataPlanFragment$Arguments;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

.field public static final enum TIME_SLOT_1:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

.field public static final enum TIME_SLOT_2:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

.field public static final enum TOTAL:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

.field public static final enum WARNING_BYTE:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

.field public static final enum WARNING_MODE:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    const-string v1, "WARNING_MODE"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->WARNING_MODE:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    new-instance v0, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    const-string v1, "WARNING_BYTE"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->WARNING_BYTE:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    new-instance v0, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    const-string v1, "TIME_SLOT_1"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_1:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    new-instance v0, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    const-string v1, "TIME_SLOT_2"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_2:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    new-instance v0, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    const-string v1, "TOTAL"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TOTAL:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    sget-object v1, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->WARNING_MODE:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->WARNING_BYTE:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_1:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TIME_SLOT_2:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->TOTAL:Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->$VALUES:[Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/AdditionalDataPlanFragment$Arguments;
    .locals 1

    const-class v0, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/AdditionalDataPlanFragment$Arguments;
    .locals 1

    sget-object v0, Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->$VALUES:[Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    invoke-virtual {v0}, [Lcom/android/settings/AdditionalDataPlanFragment$Arguments;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/AdditionalDataPlanFragment$Arguments;

    return-object v0
.end method
