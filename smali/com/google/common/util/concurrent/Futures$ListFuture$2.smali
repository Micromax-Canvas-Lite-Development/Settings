.class Lcom/google/common/util/concurrent/Futures$ListFuture$2;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures$ListFuture;->init(Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/Futures$ListFuture;

.field final synthetic val$index:I

.field final synthetic val$listenable:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/Futures$ListFuture;ILcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$ListFuture$2;->this$0:Lcom/google/common/util/concurrent/Futures$ListFuture;

    iput p2, p0, Lcom/google/common/util/concurrent/Futures$ListFuture$2;->val$index:I

    iput-object p3, p0, Lcom/google/common/util/concurrent/Futures$ListFuture$2;->val$listenable:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ListFuture$2;->this$0:Lcom/google/common/util/concurrent/Futures$ListFuture;

    iget v1, p0, Lcom/google/common/util/concurrent/Futures$ListFuture$2;->val$index:I

    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$ListFuture$2;->val$listenable:Lcom/google/common/util/concurrent/ListenableFuture;

    # invokes: Lcom/google/common/util/concurrent/Futures$ListFuture;->setOneValue(ILjava/util/concurrent/Future;)V
    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures$ListFuture;->access$200(Lcom/google/common/util/concurrent/Futures$ListFuture;ILjava/util/concurrent/Future;)V

    return-void
.end method
