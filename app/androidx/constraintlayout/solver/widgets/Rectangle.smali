.class public Landroidx/constraintlayout/solver/widgets/Rectangle;
.super Ljava/lang/Object;
.source "Rectangle.java"


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(II)Z
    .registers 5

    .line 46
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->x:I

    if-lt p1, v0, :cond_14

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->width:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_14

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->y:I

    if-lt p2, p1, :cond_14

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->height:I

    add-int/2addr p1, v0

    if-ge p2, p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public getCenterX()I
    .registers 3

    .line 50
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->x:I

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->width:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getCenterY()I
    .registers 3

    .line 51
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->y:I

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->height:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method grow(II)V
    .registers 4

    .line 34
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->x:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->x:I

    .line 35
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->y:I

    sub-int/2addr v0, p2

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->y:I

    .line 36
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->width:I

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->width:I

    .line 37
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->height:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->height:I

    return-void
.end method

.method intersects(Landroidx/constraintlayout/solver/widgets/Rectangle;)Z
    .registers 5

    .line 41
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->x:I

    iget v1, p1, Landroidx/constraintlayout/solver/widgets/Rectangle;->x:I

    if-lt v0, v1, :cond_18

    iget v2, p1, Landroidx/constraintlayout/solver/widgets/Rectangle;->width:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_18

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->y:I

    iget v1, p1, Landroidx/constraintlayout/solver/widgets/Rectangle;->y:I

    if-lt v0, v1, :cond_18

    iget p1, p1, Landroidx/constraintlayout/solver/widgets/Rectangle;->height:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method public setBounds(IIII)V
    .registers 5

    .line 28
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->x:I

    .line 29
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->y:I

    .line 30
    iput p3, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->width:I

    .line 31
    iput p4, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->height:I

    return-void
.end method
