.class Landroidx/constraintlayout/solver/Pools$SimplePool;
.super Ljava/lang/Object;
.source "Pools.java"

# interfaces
.implements Landroidx/constraintlayout/solver/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimplePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/constraintlayout/solver/Pools$Pool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mPool:[Ljava/lang/Object;

.field private mPoolSize:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_a

    .line 100
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    return-void

    .line 98
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The max pool size must be > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isInPool(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 151
    :goto_2
    iget v2, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    if-ge v1, v2, :cond_11

    .line 152
    iget-object v2, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    return v0
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 106
    iget v0, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_12

    add-int/lit8 v2, v0, -0x1

    .line 108
    iget-object v3, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aget-object v4, v3, v2

    .line 109
    aput-object v1, v3, v2

    add-int/lit8 v0, v0, -0x1

    .line 110
    iput v0, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    return-object v4

    :cond_12
    return-object v1
.end method

.method public release(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 123
    iget v0, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    iget-object v1, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 124
    aput-object p1, v1, v0

    const/4 p1, 0x1

    add-int/2addr v0, p1

    .line 125
    iput v0, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public releaseAll([Ljava/lang/Object;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .line 133
    array-length v0, p1

    if-le p2, v0, :cond_4

    .line 134
    array-length p2, p1

    :cond_4
    const/4 v0, 0x0

    :goto_5
    if-ge v0, p2, :cond_19

    .line 137
    aget-object v1, p1, v0

    .line 143
    iget v2, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    iget-object v3, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    array-length v4, v3

    if-ge v2, v4, :cond_16

    .line 144
    aput-object v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    .line 145
    iput v2, p0, Landroidx/constraintlayout/solver/Pools$SimplePool;->mPoolSize:I

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_19
    return-void
.end method
