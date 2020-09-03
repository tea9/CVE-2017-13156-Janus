.class public Landroidx/loader/content/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/loader/content/Loader$OnLoadCanceledListener;,
        Landroidx/loader/content/Loader$OnLoadCompleteListener;,
        Landroidx/loader/content/Loader$ForceLoadContentObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mAbandoned:Z

.field mContentChanged:Z

.field mContext:Landroid/content/Context;

.field mId:I

.field mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/Loader$OnLoadCompleteListener<",
            "TD;>;"
        }
    .end annotation
.end field

.field mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/Loader$OnLoadCanceledListener<",
            "TD;>;"
        }
    .end annotation
.end field

.field mProcessingChange:Z

.field mReset:Z

.field mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mStarted:Z

    .line 45
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mAbandoned:Z

    const/4 v1, 0x1

    .line 46
    iput-boolean v1, p0, Landroidx/loader/content/Loader;->mReset:Z

    .line 47
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    .line 48
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/loader/content/Loader;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abandon()V
    .registers 2

    const/4 v0, 0x1

    .line 409
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mAbandoned:Z

    .line 410
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onAbandon()V

    return-void
.end method

.method public cancelLoad()Z
    .registers 2

    .line 318
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onCancelLoad()Z

    move-result v0

    return v0
.end method

.method public commitContentChanged()V
    .registers 2

    const/4 v0, 0x0

    .line 485
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    return-void
.end method

.method public dataToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 528
    invoke-static {p1, v0}, Landroidx/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string p1, "}"

    .line 529
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public deliverCancellation()V
    .registers 2

    .line 144
    iget-object v0, p0, Landroidx/loader/content/Loader;->mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;

    if-eqz v0, :cond_7

    .line 145
    invoke-interface {v0, p0}, Landroidx/loader/content/Loader$OnLoadCanceledListener;->onLoadCanceled(Landroidx/loader/content/Loader;)V

    :cond_7
    return-void
.end method

.method public deliverResult(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    if-eqz v0, :cond_7

    .line 132
    invoke-interface {v0, p0, p1}, Landroidx/loader/content/Loader$OnLoadCompleteListener;->onLoadComplete(Landroidx/loader/content/Loader;Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 555
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mId="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroidx/loader/content/Loader;->mId:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mListener="

    .line 556
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 557
    iget-boolean p2, p0, Landroidx/loader/content/Loader;->mStarted:Z

    if-nez p2, :cond_23

    iget-boolean p2, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    if-nez p2, :cond_23

    iget-boolean p2, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    if-eqz p2, :cond_44

    .line 558
    :cond_23
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mStarted="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/loader/content/Loader;->mStarted:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mContentChanged="

    .line 559
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mProcessingChange="

    .line 560
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 562
    :cond_44
    iget-boolean p2, p0, Landroidx/loader/content/Loader;->mAbandoned:Z

    if-nez p2, :cond_4c

    iget-boolean p2, p0, Landroidx/loader/content/Loader;->mReset:Z

    if-eqz p2, :cond_63

    .line 563
    :cond_4c
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mAbandoned="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroidx/loader/content/Loader;->mAbandoned:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mReset="

    .line 564
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroidx/loader/content/Loader;->mReset:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_63
    return-void
.end method

.method public forceLoad()V
    .registers 1

    .line 347
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onForceLoad()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 154
    iget-object v0, p0, Landroidx/loader/content/Loader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 161
    iget v0, p0, Landroidx/loader/content/Loader;->mId:I

    return v0
.end method

.method public isAbandoned()Z
    .registers 2

    .line 247
    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mAbandoned:Z

    return v0
.end method

.method public isReset()Z
    .registers 2

    .line 256
    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mReset:Z

    return v0
.end method

.method public isStarted()Z
    .registers 2

    .line 238
    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mStarted:Z

    return v0
.end method

.method protected onAbandon()V
    .registers 1

    return-void
.end method

.method protected onCancelLoad()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onContentChanged()V
    .registers 2

    .line 511
    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mStarted:Z

    if-eqz v0, :cond_8

    .line 512
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->forceLoad()V

    goto :goto_b

    :cond_8
    const/4 v0, 0x1

    .line 517
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    :goto_b
    return-void
.end method

.method protected onForceLoad()V
    .registers 1

    return-void
.end method

.method protected onReset()V
    .registers 1

    return-void
.end method

.method protected onStartLoading()V
    .registers 1

    return-void
.end method

.method protected onStopLoading()V
    .registers 1

    return-void
.end method

.method public registerListener(ILandroidx/loader/content/Loader$OnLoadCompleteListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/loader/content/Loader$OnLoadCompleteListener<",
            "TD;>;)V"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    if-nez v0, :cond_9

    .line 176
    iput-object p2, p0, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    .line 177
    iput p1, p0, Landroidx/loader/content/Loader;->mId:I

    return-void

    .line 174
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "There is already a listener registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerOnLoadCanceledListener(Landroidx/loader/content/Loader$OnLoadCanceledListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader$OnLoadCanceledListener<",
            "TD;>;)V"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Landroidx/loader/content/Loader;->mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;

    if-nez v0, :cond_7

    .line 210
    iput-object p1, p0, Landroidx/loader/content/Loader;->mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;

    return-void

    .line 208
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "There is already a listener registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .registers 2

    .line 447
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onReset()V

    const/4 v0, 0x1

    .line 448
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mReset:Z

    const/4 v0, 0x0

    .line 449
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mStarted:Z

    .line 450
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mAbandoned:Z

    .line 451
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    .line 452
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    return-void
.end method

.method public rollbackContentChanged()V
    .registers 2

    .line 496
    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    if-eqz v0, :cond_7

    .line 497
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onContentChanged()V

    :cond_7
    return-void
.end method

.method public final startLoading()V
    .registers 2

    const/4 v0, 0x1

    .line 282
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mStarted:Z

    const/4 v0, 0x0

    .line 283
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mReset:Z

    .line 284
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mAbandoned:Z

    .line 285
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onStartLoading()V

    return-void
.end method

.method public stopLoading()V
    .registers 2

    const/4 v0, 0x0

    .line 380
    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mStarted:Z

    .line 381
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onStopLoading()V

    return-void
.end method

.method public takeContentChanged()Z
    .registers 3

    .line 471
    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    const/4 v1, 0x0

    .line 472
    iput-boolean v1, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    .line 473
    iget-boolean v1, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 536
    invoke-static {p0, v0}, Landroidx/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, " id="

    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    iget v1, p0, Landroidx/loader/content/Loader;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 539
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterListener(Landroidx/loader/content/Loader$OnLoadCompleteListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader$OnLoadCompleteListener<",
            "TD;>;)V"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    if-eqz v0, :cond_12

    if-ne v0, p1, :cond_a

    const/4 p1, 0x0

    .line 193
    iput-object p1, p0, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    return-void

    .line 191
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempting to unregister the wrong listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No listener register"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterOnLoadCanceledListener(Landroidx/loader/content/Loader$OnLoadCanceledListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader$OnLoadCanceledListener<",
            "TD;>;)V"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Landroidx/loader/content/Loader;->mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;

    if-eqz v0, :cond_12

    if-ne v0, p1, :cond_a

    const/4 p1, 0x0

    .line 229
    iput-object p1, p0, Landroidx/loader/content/Loader;->mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;

    return-void

    .line 227
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempting to unregister the wrong listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 224
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No listener register"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
