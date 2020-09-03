.class public Landroidx/constraintlayout/solver/state/HelperReference;
.super Ljava/lang/Object;
.source "HelperReference.java"


# instance fields
.field private mHelperWidget:Landroidx/constraintlayout/solver/widgets/HelperWidget;

.field protected mReferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final mState:Landroidx/constraintlayout/solver/state/State;

.field final mType:Landroidx/constraintlayout/solver/state/State$Helper;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/state/State;Landroidx/constraintlayout/solver/state/State$Helper;)V
    .registers 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/HelperReference;->mReferences:Ljava/util/ArrayList;

    .line 30
    iput-object p1, p0, Landroidx/constraintlayout/solver/state/HelperReference;->mState:Landroidx/constraintlayout/solver/state/State;

    .line 31
    iput-object p2, p0, Landroidx/constraintlayout/solver/state/HelperReference;->mType:Landroidx/constraintlayout/solver/state/State$Helper;

    return-void
.end method


# virtual methods
.method public varargs add([Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/HelperReference;
    .registers 6

    .line 37
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget-object v2, p1, v1

    .line 38
    iget-object v3, p0, Landroidx/constraintlayout/solver/state/HelperReference;->mReferences:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return-object p0
.end method

.method public apply()V
    .registers 1

    return-void
.end method

.method public getHelperWidget()Landroidx/constraintlayout/solver/widgets/HelperWidget;
    .registers 2

    .line 47
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/HelperReference;->mHelperWidget:Landroidx/constraintlayout/solver/widgets/HelperWidget;

    return-object v0
.end method

.method public getType()Landroidx/constraintlayout/solver/state/State$Helper;
    .registers 2

    .line 34
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/HelperReference;->mType:Landroidx/constraintlayout/solver/state/State$Helper;

    return-object v0
.end method

.method public setHelperWidget(Landroidx/constraintlayout/solver/widgets/HelperWidget;)V
    .registers 2

    .line 44
    iput-object p1, p0, Landroidx/constraintlayout/solver/state/HelperReference;->mHelperWidget:Landroidx/constraintlayout/solver/widgets/HelperWidget;

    return-void
.end method
