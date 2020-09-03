.class public final Landroidx/core/content/res/ResourcesCompat$ThemeCompat;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/res/ResourcesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThemeCompat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/res/ResourcesCompat$ThemeCompat$ImplApi23;,
        Landroidx/core/content/res/ResourcesCompat$ThemeCompat$ImplApi29;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rebase(Landroid/content/res/Resources$Theme;)V
    .registers 3

    .line 474
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_a

    .line 475
    invoke-static {p0}, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$ImplApi29;->rebase(Landroid/content/res/Resources$Theme;)V

    goto :goto_13

    .line 476
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_13

    .line 477
    invoke-static {p0}, Landroidx/core/content/res/ResourcesCompat$ThemeCompat$ImplApi23;->rebase(Landroid/content/res/Resources$Theme;)V

    :cond_13
    :goto_13
    return-void
.end method
