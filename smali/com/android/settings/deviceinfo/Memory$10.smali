.class Lcom/android/settings/deviceinfo/Memory$10;
.super Ljava/lang/Object;
.source "Memory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Memory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/Memory$10;->this$0:Lcom/android/settings/deviceinfo/Memory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory$10;->this$0:Lcom/android/settings/deviceinfo/Memory;

    # invokes: Lcom/android/settings/deviceinfo/Memory;->dynamicShowDefaultWriteCategory()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/Memory;->access$1400(Lcom/android/settings/deviceinfo/Memory;)V

    return-void
.end method
