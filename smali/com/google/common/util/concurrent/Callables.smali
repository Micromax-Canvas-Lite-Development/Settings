.class public final Lcom/google/common/util/concurrent/Callables;
.super Ljava/lang/Object;
.source "Callables.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static returning(Ljava/lang/Object;)Ljava/util/concurrent/Callable;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/Callables$1;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/Callables$1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
