.class public Landroidx/appcompat/widget/AlertDialogLayout;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "AlertDialogLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 59
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private forceUniformWidth(II)V
    .registers 13

    .line 218
    invoke-virtual {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 217
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, p1, :cond_3a

    .line 221
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 222
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_37

    .line 223
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 224
    iget v2, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_37

    .line 227
    iget v9, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 228
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v0

    move v6, p2

    .line 231
    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/widget/AlertDialogLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 232
    iput v9, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_3a
    return-void
.end method

.method private static resolveMinimumHeight(Landroid/view/View;)I
    .registers 4

    .line 248
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    if-lez v0, :cond_7

    return v0

    .line 253
    :cond_7
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 254
    check-cast p0, Landroid/view/ViewGroup;

    .line 255
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1e

    .line 256
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_1e
    return v1
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .registers 6

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 348
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private tryOnMeasure(II)Z
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v4

    move-object v7, v6

    const/4 v8, 0x0

    :goto_f
    const/16 v9, 0x8

    if-ge v8, v3, :cond_3f

    .line 77
    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 78
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v9, :cond_1e

    goto :goto_3c

    .line 82
    :cond_1e
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v9

    .line 83
    sget v11, Landroidx/appcompat/R$id;->topPanel:I

    if-ne v9, v11, :cond_28

    move-object v4, v10

    goto :goto_3c

    .line 85
    :cond_28
    sget v11, Landroidx/appcompat/R$id;->buttonPanel:I

    if-ne v9, v11, :cond_2e

    move-object v6, v10

    goto :goto_3c

    .line 87
    :cond_2e
    sget v11, Landroidx/appcompat/R$id;->contentPanel:I

    if-eq v9, v11, :cond_38

    sget v11, Landroidx/appcompat/R$id;->customPanel:I

    if-ne v9, v11, :cond_37

    goto :goto_38

    :cond_37
    return v5

    :cond_38
    :goto_38
    if-eqz v7, :cond_3b

    return v5

    :cond_3b
    move-object v7, v10

    :goto_3c
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    .line 99
    :cond_3f
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 100
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 101
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 104
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingBottom()I

    move-result v13

    add-int/2addr v12, v13

    if-eqz v4, :cond_67

    .line 107
    invoke-virtual {v4, v1, v5}, Landroid/view/View;->measure(II)V

    .line 109
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v12, v13

    .line 110
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    invoke-static {v5, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    goto :goto_68

    :cond_67
    const/4 v4, 0x0

    :goto_68
    if-eqz v6, :cond_80

    .line 116
    invoke-virtual {v6, v1, v5}, Landroid/view/View;->measure(II)V

    .line 117
    invoke-static {v6}, Landroidx/appcompat/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    move-result v13

    .line 118
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v14, v13

    add-int/2addr v12, v13

    .line 121
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v15

    invoke-static {v4, v15}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    goto :goto_82

    :cond_80
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_82
    if-eqz v7, :cond_a3

    if-nez v8, :cond_88

    const/4 v15, 0x0

    goto :goto_92

    :cond_88
    sub-int v15, v10, v12

    .line 131
    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 130
    invoke-static {v15, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 134
    :goto_92
    invoke-virtual {v7, v1, v15}, Landroid/view/View;->measure(II)V

    .line 135
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v12, v15

    .line 138
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    invoke-static {v4, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    goto :goto_a4

    :cond_a3
    const/4 v15, 0x0

    :goto_a4
    sub-int/2addr v10, v12

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v6, :cond_c6

    sub-int/2addr v12, v13

    .line 149
    invoke-static {v10, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    if-lez v14, :cond_b2

    sub-int/2addr v10, v14

    add-int/2addr v13, v14

    .line 155
    :cond_b2
    invoke-static {v13, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 157
    invoke-virtual {v6, v1, v13}, Landroid/view/View;->measure(II)V

    .line 159
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v12, v13

    .line 160
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    invoke-static {v4, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    :cond_c6
    if-eqz v7, :cond_e0

    if-lez v10, :cond_e0

    sub-int/2addr v12, v15

    add-int/2addr v15, v10

    .line 175
    invoke-static {v15, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 177
    invoke-virtual {v7, v1, v6}, Landroid/view/View;->measure(II)V

    .line 179
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v12, v6

    .line 180
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    invoke-static {v4, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    :cond_e0
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_e2
    if-ge v6, v3, :cond_f9

    .line 186
    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 187
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v9, :cond_f6

    .line 188
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_f6
    add-int/lit8 v6, v6, 0x1

    goto :goto_e2

    .line 192
    :cond_f9
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingRight()I

    move-result v8

    add-int/2addr v6, v8

    add-int/2addr v7, v6

    .line 194
    invoke-static {v7, v1, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    const/4 v4, 0x0

    .line 196
    invoke-static {v12, v2, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    .line 198
    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/widget/AlertDialogLayout;->setMeasuredDimension(II)V

    if-eq v11, v5, :cond_114

    .line 203
    invoke-direct {v0, v3, v2}, Landroidx/appcompat/widget/AlertDialogLayout;->forceUniformWidth(II)V

    :cond_114
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 23

    move-object/from16 v6, p0

    .line 265
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingLeft()I

    move-result v7

    sub-int v0, p4, p2

    .line 269
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingRight()I

    move-result v1

    sub-int v8, v0, v1

    sub-int/2addr v0, v7

    .line 272
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingRight()I

    move-result v1

    sub-int v9, v0, v1

    .line 274
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getMeasuredHeight()I

    move-result v0

    .line 275
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildCount()I

    move-result v10

    .line 276
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getGravity()I

    move-result v1

    and-int/lit8 v2, v1, 0x70

    const v3, 0x800007

    and-int v11, v1, v3

    const/16 v1, 0x10

    if-eq v2, v1, :cond_40

    const/16 v1, 0x50

    if-eq v2, v1, :cond_35

    .line 294
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v0

    goto :goto_4b

    .line 284
    :cond_35
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v1

    add-int v1, v1, p5

    sub-int v1, v1, p3

    sub-int v0, v1, v0

    goto :goto_4b

    .line 289
    :cond_40
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v1

    sub-int v2, p5, p3

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 298
    :goto_4b
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/AlertDialogLayout;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_54

    const/4 v12, 0x0

    goto :goto_59

    .line 300
    :cond_54
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    move v12, v1

    :goto_59
    const/4 v13, 0x0

    :goto_5a
    if-ge v13, v10, :cond_bf

    .line 303
    invoke-virtual {v6, v13}, Landroidx/appcompat/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_bc

    .line 304
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_bc

    .line 305
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 306
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 309
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 311
    iget v2, v15, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v2, :cond_7e

    move v2, v11

    .line 315
    :cond_7e
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 316
    invoke-static {v2, v3}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    const/4 v3, 0x1

    if-eq v2, v3, :cond_97

    const/4 v3, 0x5

    if-eq v2, v3, :cond_92

    .line 332
    iget v2, v15, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v7

    goto :goto_a2

    :cond_92
    sub-int v2, v8, v4

    .line 327
    iget v3, v15, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    goto :goto_a1

    :cond_97
    sub-int v2, v9, v4

    .line 322
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v7

    iget v3, v15, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v15, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    :goto_a1
    sub-int/2addr v2, v3

    .line 336
    :goto_a2
    invoke-virtual {v6, v13}, Landroidx/appcompat/widget/AlertDialogLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_a9

    add-int/2addr v0, v12

    .line 340
    :cond_a9
    iget v3, v15, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v16, v0, v3

    move-object/from16 v0, p0

    move/from16 v3, v16

    move v5, v14

    .line 341
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/AlertDialogLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 342
    iget v0, v15, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v14, v0

    add-int v16, v16, v14

    move/from16 v0, v16

    :cond_bc
    add-int/lit8 v13, v13, 0x1

    goto :goto_5a

    :cond_bf
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 64
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AlertDialogLayout;->tryOnMeasure(II)Z

    move-result v0

    if-nez v0, :cond_9

    .line 66
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    :cond_9
    return-void
.end method
