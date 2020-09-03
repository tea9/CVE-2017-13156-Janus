.class Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;
.super Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
.source "DimensionDependency.java"


# instance fields
.field public wrapValue:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;-><init>(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;)V

    .line 25
    instance-of p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    if-eqz p1, :cond_c

    .line 26
    sget-object p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->HORIZONTAL_DIMENSION:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->type:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    goto :goto_10

    .line 28
    :cond_c
    sget-object p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->VERTICAL_DIMENSION:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->type:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    :goto_10
    return-void
.end method


# virtual methods
.method public resolve(I)V
    .registers 3

    .line 33
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    .line 37
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->value:I

    .line 38
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->dependencies:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    .line 39
    invoke-interface {v0, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;->update(Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;)V

    goto :goto_10

    :cond_20
    return-void
.end method
