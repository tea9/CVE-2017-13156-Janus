.class public Landroidx/appcompat/widget/TooltipCompat;
.super Ljava/lang/Object;
.source "TooltipCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 4

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_a

    .line 42
    invoke-virtual {p0, p1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 44
    :cond_a
    invoke-static {p0, p1}, Landroidx/appcompat/widget/TooltipCompatHandler;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_d
    return-void
.end method
