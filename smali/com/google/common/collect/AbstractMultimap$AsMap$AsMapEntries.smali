.class Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;
.super Lcom/google/common/collect/Maps$EntrySet;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap$AsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsMapEntries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$EntrySet",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/AbstractMultimap$AsMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap$AsMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;->this$1:Lcom/google/common/collect/AbstractMultimap$AsMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;->this$1:Lcom/google/common/collect/AbstractMultimap$AsMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Collections2;->safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;->this$1:Lcom/google/common/collect/AbstractMultimap$AsMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;-><init>(Lcom/google/common/collect/AbstractMultimap$AsMap;)V

    return-object v0
.end method

.method map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;->this$1:Lcom/google/common/collect/AbstractMultimap$AsMap;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;->this$1:Lcom/google/common/collect/AbstractMultimap$AsMap;

    iget-object v1, v1, Lcom/google/common/collect/AbstractMultimap$AsMap;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    # invokes: Lcom/google/common/collect/AbstractMultimap;->removeValuesForKey(Ljava/lang/Object;)I
    invoke-static {v1, v2}, Lcom/google/common/collect/AbstractMultimap;->access$500(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;)I

    const/4 v1, 0x1

    goto :goto_0
.end method
