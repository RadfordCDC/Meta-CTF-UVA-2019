.class public Landroid/support/transition/TransitionSet;
.super Landroid/support/transition/Transition;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/TransitionSet$TransitionSetListener;
    }
.end annotation


# static fields
.field private static final FLAG_CHANGE_EPICENTER:I = 0x8

.field private static final FLAG_CHANGE_INTERPOLATOR:I = 0x1

.field private static final FLAG_CHANGE_PATH_MOTION:I = 0x4

.field private static final FLAG_CHANGE_PROPAGATION:I = 0x2

.field public static final ORDERING_SEQUENTIAL:I = 0x1

.field public static final ORDERING_TOGETHER:I


# instance fields
.field private mChangeFlags:I

.field mCurrentListeners:I

.field private mPlayTogether:Z

.field mStarted:Z

.field private mTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/TransitionSet;->mPlayTogether:Z

    .line 83
    iput-boolean v1, p0, Landroid/support/transition/TransitionSet;->mStarted:Z

    .line 87
    iput v1, p0, Landroid/support/transition/TransitionSet;->mChangeFlags:I

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    .line 80
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/transition/TransitionSet;->mPlayTogether:Z

    .line 83
    iput-boolean v3, p0, Landroid/support/transition/TransitionSet;->mStarted:Z

    .line 87
    iput v3, p0, Landroid/support/transition/TransitionSet;->mChangeFlags:I

    .line 114
    sget-object v2, Landroid/support/transition/Styleable;->TRANSITION_SET:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 115
    .local v0, "a":Landroid/content/res/TypedArray;
    check-cast p2, Landroid/content/res/XmlResourceParser;

    .end local p2    # "attrs":Landroid/util/AttributeSet;
    const-string v2, "transitionOrdering"

    invoke-static {v0, p2, v2, v3, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    .line 118
    .local v1, "ordering":I
    invoke-virtual {p0, v1}, Landroid/support/transition/TransitionSet;->setOrdering(I)Landroid/support/transition/TransitionSet;

    .line 119
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    return-void
.end method

.method private setupStartEndListeners()V
    .locals 4

    .prologue
    .line 408
    new-instance v1, Landroid/support/transition/TransitionSet$TransitionSetListener;

    invoke-direct {v1, p0}, Landroid/support/transition/TransitionSet$TransitionSetListener;-><init>(Landroid/support/transition/TransitionSet;)V

    .line 409
    .local v1, "listener":Landroid/support/transition/TransitionSet$TransitionSetListener;
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/Transition;

    .line 410
    .local v0, "childTransition":Landroid/support/transition/Transition;
    invoke-virtual {v0, v1}, Landroid/support/transition/Transition;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    goto :goto_0

    .line 412
    .end local v0    # "childTransition":Landroid/support/transition/Transition;
    :cond_0
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Landroid/support/transition/TransitionSet;->mCurrentListeners:I

    .line 413
    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;
    .locals 1
    .param p1    # Landroid/support/transition/Transition$TransitionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSet;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/TransitionSet;
    .locals 1
    .param p1, "listener"    # Landroid/support/transition/Transition$TransitionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 299
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionSet;

    return-object v0
.end method

.method public bridge synthetic addTarget(I)Landroid/support/transition/Transition;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSet;->addTarget(I)Landroid/support/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTarget(Landroid/view/View;)Landroid/support/transition/Transition;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSet;->addTarget(Landroid/view/View;)Landroid/support/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTarget(Ljava/lang/Class;)Landroid/support/transition/Transition;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSet;->addTarget(Ljava/lang/Class;)Landroid/support/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTarget(Ljava/lang/String;)Landroid/support/transition/Transition;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSet;->addTarget(Ljava/lang/String;)Landroid/support/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public addTarget(I)Landroid/support/transition/TransitionSet;
    .locals 2
    .param p1, "targetId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 272
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 273
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/support/transition/Transition;->addTarget(I)Landroid/support/transition/Transition;

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_0
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->addTarget(I)Landroid/support/transition/Transition;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionSet;

    return-object v1
.end method

.method public addTarget(Landroid/view/View;)Landroid/support/transition/TransitionSet;
    .locals 2
    .param p1, "target"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 263
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 264
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/support/transition/Transition;->addTarget(Landroid/view/View;)Landroid/support/transition/Transition;

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_0
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->addTarget(Landroid/view/View;)Landroid/support/transition/Transition;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionSet;

    return-object v1
.end method

.method public addTarget(Ljava/lang/Class;)Landroid/support/transition/TransitionSet;
    .locals 2
    .param p1, "targetType"    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 290
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 291
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/support/transition/Transition;->addTarget(Ljava/lang/Class;)Landroid/support/transition/Transition;

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_0
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->addTarget(Ljava/lang/Class;)Landroid/support/transition/Transition;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionSet;

    return-object v1
.end method

.method public addTarget(Ljava/lang/String;)Landroid/support/transition/TransitionSet;
    .locals 2
    .param p1, "targetName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 281
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 282
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/support/transition/Transition;->addTarget(Ljava/lang/String;)Landroid/support/transition/Transition;

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_0
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->addTarget(Ljava/lang/String;)Landroid/support/transition/Transition;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionSet;

    return-object v1
.end method

.method public addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;
    .locals 4
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iput-object p0, p1, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    .line 178
    iget-wide v0, p0, Landroid/support/transition/TransitionSet;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 179
    iget-wide v0, p0, Landroid/support/transition/TransitionSet;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/support/transition/Transition;->setDuration(J)Landroid/support/transition/Transition;

    .line 181
    :cond_0
    iget v0, p0, Landroid/support/transition/TransitionSet;->mChangeFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p0}, Landroid/support/transition/TransitionSet;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;

    .line 184
    :cond_1
    iget v0, p0, Landroid/support/transition/TransitionSet;->mChangeFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {p0}, Landroid/support/transition/TransitionSet;->getPropagation()Landroid/support/transition/TransitionPropagation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/transition/Transition;->setPropagation(Landroid/support/transition/TransitionPropagation;)V

    .line 187
    :cond_2
    iget v0, p0, Landroid/support/transition/TransitionSet;->mChangeFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 188
    invoke-virtual {p0}, Landroid/support/transition/TransitionSet;->getPathMotion()Landroid/support/transition/PathMotion;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/transition/Transition;->setPathMotion(Landroid/support/transition/PathMotion;)V

    .line 190
    :cond_3
    iget v0, p0, Landroid/support/transition/TransitionSet;->mChangeFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 191
    invoke-virtual {p0}, Landroid/support/transition/TransitionSet;->getEpicenterCallback()Landroid/support/transition/Transition$EpicenterCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/transition/Transition;->setEpicenterCallback(Landroid/support/transition/Transition$EpicenterCallback;)V

    .line 193
    :cond_4
    return-object p0
.end method

.method protected cancel()V
    .locals 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 571
    invoke-super {p0}, Landroid/support/transition/Transition;->cancel()V

    .line 572
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 573
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 574
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    invoke-virtual {v2}, Landroid/support/transition/Transition;->cancel()V

    .line 573
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 576
    :cond_0
    return-void
.end method

.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 526
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/transition/TransitionSet;->isValidTarget(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 527
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/Transition;

    .line 528
    .local v0, "childTransition":Landroid/support/transition/Transition;
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 529
    invoke-virtual {v0, p1}, Landroid/support/transition/Transition;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    .line 530
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 534
    .end local v0    # "childTransition":Landroid/support/transition/Transition;
    :cond_1
    return-void
.end method

.method capturePropagationValues(Landroid/support/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 538
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->capturePropagationValues(Landroid/support/transition/TransitionValues;)V

    .line 539
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 540
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 541
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/support/transition/Transition;->capturePropagationValues(Landroid/support/transition/TransitionValues;)V

    .line 540
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 543
    :cond_0
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 514
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/transition/TransitionSet;->isValidTarget(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/Transition;

    .line 516
    .local v0, "childTransition":Landroid/support/transition/Transition;
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    invoke-virtual {v0, p1}, Landroid/support/transition/Transition;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    .line 518
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 522
    .end local v0    # "childTransition":Landroid/support/transition/Transition;
    :cond_1
    return-void
.end method

.method public clone()Landroid/support/transition/Transition;
    .locals 4

    .prologue
    .line 639
    invoke-super {p0}, Landroid/support/transition/Transition;->clone()Landroid/support/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionSet;

    .line 640
    .local v0, "clone":Landroid/support/transition/TransitionSet;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    .line 641
    iget-object v3, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 642
    .local v2, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 643
    iget-object v3, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/Transition;

    invoke-virtual {v3}, Landroid/support/transition/Transition;->clone()Landroid/support/transition/Transition;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 642
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 645
    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/support/transition/TransitionSet;->clone()Landroid/support/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValuesMaps;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValuesMaps;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/support/transition/TransitionValuesMaps;",
            "Landroid/support/transition/TransitionValuesMaps;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 456
    .local p4, "startValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionValues;>;"
    .local p5, "endValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionValues;>;"
    invoke-virtual {p0}, Landroid/support/transition/TransitionSet;->getStartDelay()J

    move-result-wide v10

    .line 457
    .local v10, "startDelay":J
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 458
    .local v9, "numTransitions":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_3

    .line 459
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/Transition;

    .line 462
    .local v0, "childTransition":Landroid/support/transition/Transition;
    const-wide/16 v2, 0x0

    cmp-long v1, v10, v2

    if-lez v1, :cond_1

    iget-boolean v1, p0, Landroid/support/transition/TransitionSet;->mPlayTogether:Z

    if-nez v1, :cond_0

    if-nez v8, :cond_1

    .line 463
    :cond_0
    invoke-virtual {v0}, Landroid/support/transition/Transition;->getStartDelay()J

    move-result-wide v6

    .line 464
    .local v6, "childStartDelay":J
    const-wide/16 v2, 0x0

    cmp-long v1, v6, v2

    if-lez v1, :cond_2

    .line 465
    add-long v2, v10, v6

    invoke-virtual {v0, v2, v3}, Landroid/support/transition/Transition;->setStartDelay(J)Landroid/support/transition/Transition;

    .end local v6    # "childStartDelay":J
    :cond_1
    :goto_1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 470
    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/Transition;->createAnimators(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 458
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 467
    .restart local v6    # "childStartDelay":J
    :cond_2
    invoke-virtual {v0, v10, v11}, Landroid/support/transition/Transition;->setStartDelay(J)Landroid/support/transition/Transition;

    goto :goto_1

    .line 473
    .end local v0    # "childTransition":Landroid/support/transition/Transition;
    .end local v6    # "childStartDelay":J
    :cond_3
    return-void
.end method

.method public excludeTarget(IZ)Landroid/support/transition/Transition;
    .locals 2
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 359
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 360
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1, p1, p2}, Landroid/support/transition/Transition;->excludeTarget(IZ)Landroid/support/transition/Transition;

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/transition/Transition;->excludeTarget(IZ)Landroid/support/transition/Transition;

    move-result-object v1

    return-object v1
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroid/support/transition/Transition;
    .locals 2
    .param p1, "target"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "exclude"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 341
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 342
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1, p1, p2}, Landroid/support/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/support/transition/Transition;

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/support/transition/Transition;

    move-result-object v1

    return-object v1
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroid/support/transition/Transition;
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "exclude"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 368
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 369
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1, p1, p2}, Landroid/support/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroid/support/transition/Transition;

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroid/support/transition/Transition;

    move-result-object v1

    return-object v1
.end method

.method public excludeTarget(Ljava/lang/String;Z)Landroid/support/transition/Transition;
    .locals 2
    .param p1, "targetName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "exclude"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 350
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 351
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1, p1, p2}, Landroid/support/transition/Transition;->excludeTarget(Ljava/lang/String;Z)Landroid/support/transition/Transition;

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/transition/Transition;->excludeTarget(Ljava/lang/String;Z)Landroid/support/transition/Transition;

    move-result-object v1

    return-object v1
.end method

.method forceToEnd(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 582
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->forceToEnd(Landroid/view/ViewGroup;)V

    .line 583
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 584
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 585
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/support/transition/Transition;->forceToEnd(Landroid/view/ViewGroup;)V

    .line 584
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 587
    :cond_0
    return-void
.end method

.method public getOrdering()I
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Landroid/support/transition/TransitionSet;->mPlayTogether:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getTransitionAt(I)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 215
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 216
    :cond_0
    const/4 v0, 0x0

    .line 218
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/Transition;

    goto :goto_0
.end method

.method public getTransitionCount()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public pause(Landroid/view/View;)V
    .locals 3
    .param p1, "sceneRoot"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 549
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->pause(Landroid/view/View;)V

    .line 550
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 551
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 552
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/support/transition/Transition;->pause(Landroid/view/View;)V

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
    :cond_0
    return-void
.end method

.method public bridge synthetic removeListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;
    .locals 1
    .param p1    # Landroid/support/transition/Transition$TransitionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSet;->removeListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public removeListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/TransitionSet;
    .locals 1
    .param p1, "listener"    # Landroid/support/transition/Transition$TransitionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 377
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->removeListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionSet;

    return-object v0
.end method

.method public bridge synthetic removeTarget(I)Landroid/support/transition/Transition;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSet;->removeTarget(I)Landroid/support/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeTarget(Landroid/view/View;)Landroid/support/transition/Transition;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSet;->removeTarget(Landroid/view/View;)Landroid/support/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeTarget(Ljava/lang/Class;)Landroid/support/transition/Transition;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSet;->removeTarget(Ljava/lang/Class;)Landroid/support/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeTarget(Ljava/lang/String;)Landroid/support/transition/Transition;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSet;->removeTarget(Ljava/lang/String;)Landroid/support/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public removeTarget(I)Landroid/support/transition/TransitionSet;
    .locals 2
    .param p1, "targetId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 305
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 306
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/support/transition/Transition;->removeTarget(I)Landroid/support/transition/Transition;

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_0
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->removeTarget(I)Landroid/support/transition/Transition;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionSet;

    return-object v1
.end method

.method public removeTarget(Landroid/view/View;)Landroid/support/transition/TransitionSet;
    .locals 2
    .param p1, "target"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 314
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 315
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/support/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/support/transition/Transition;

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_0
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/support/transition/Transition;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionSet;

    return-object v1
.end method

.method public removeTarget(Ljava/lang/Class;)Landroid/support/transition/TransitionSet;
    .locals 2
    .param p1, "target"    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 323
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 324
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/support/transition/Transition;->removeTarget(Ljava/lang/Class;)Landroid/support/transition/Transition;

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    :cond_0
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->removeTarget(Ljava/lang/Class;)Landroid/support/transition/Transition;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionSet;

    return-object v1
.end method

.method public removeTarget(Ljava/lang/String;)Landroid/support/transition/TransitionSet;
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 332
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 333
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/support/transition/Transition;->removeTarget(Ljava/lang/String;)Landroid/support/transition/Transition;

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_0
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->removeTarget(Ljava/lang/String;)Landroid/support/transition/Transition;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionSet;

    return-object v1
.end method

.method public removeTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;
    .locals 1
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 397
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 398
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    .line 399
    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .locals 3
    .param p1, "sceneRoot"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 560
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->resume(Landroid/view/View;)V

    .line 561
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 562
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 563
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/support/transition/Transition;->resume(Landroid/view/View;)V

    .line 562
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 565
    :cond_0
    return-void
.end method

.method protected runAnimators()V
    .locals 7
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 481
    iget-object v5, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 482
    invoke-virtual {p0}, Landroid/support/transition/TransitionSet;->start()V

    .line 483
    invoke-virtual {p0}, Landroid/support/transition/TransitionSet;->end()V

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    invoke-direct {p0}, Landroid/support/transition/TransitionSet;->setupStartEndListeners()V

    .line 487
    iget-boolean v5, p0, Landroid/support/transition/TransitionSet;->mPlayTogether:Z

    if-nez v5, :cond_3

    .line 490
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 491
    iget-object v5, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/Transition;

    .line 492
    .local v4, "previousTransition":Landroid/support/transition/Transition;
    iget-object v5, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/Transition;

    .line 493
    .local v3, "nextTransition":Landroid/support/transition/Transition;
    new-instance v5, Landroid/support/transition/TransitionSet$1;

    invoke-direct {v5, p0, v3}, Landroid/support/transition/TransitionSet$1;-><init>(Landroid/support/transition/TransitionSet;Landroid/support/transition/Transition;)V

    invoke-virtual {v4, v5}, Landroid/support/transition/Transition;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    .line 490
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 501
    .end local v3    # "nextTransition":Landroid/support/transition/Transition;
    .end local v4    # "previousTransition":Landroid/support/transition/Transition;
    :cond_2
    iget-object v5, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    .line 502
    .local v1, "firstTransition":Landroid/support/transition/Transition;
    if-eqz v1, :cond_0

    .line 503
    invoke-virtual {v1}, Landroid/support/transition/Transition;->runAnimators()V

    goto :goto_0

    .line 506
    .end local v1    # "firstTransition":Landroid/support/transition/Transition;
    .end local v2    # "i":I
    :cond_3
    iget-object v5, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/Transition;

    .line 507
    .local v0, "childTransition":Landroid/support/transition/Transition;
    invoke-virtual {v0}, Landroid/support/transition/Transition;->runAnimators()V

    goto :goto_2
.end method

.method setCanRemoveViews(Z)V
    .locals 3
    .param p1, "canRemoveViews"    # Z

    .prologue
    .line 601
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->setCanRemoveViews(Z)V

    .line 602
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 603
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 604
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/support/transition/Transition;->setCanRemoveViews(Z)V

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 606
    :cond_0
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/support/transition/Transition;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Landroid/support/transition/TransitionSet;->setDuration(J)Landroid/support/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/support/transition/TransitionSet;
    .locals 7
    .param p1, "duration"    # J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 231
    invoke-super {p0, p1, p2}, Landroid/support/transition/Transition;->setDuration(J)Landroid/support/transition/Transition;

    .line 232
    iget-wide v2, p0, Landroid/support/transition/TransitionSet;->mDuration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 233
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 234
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 235
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    invoke-virtual {v2, p1, p2}, Landroid/support/transition/Transition;->setDuration(J)Landroid/support/transition/Transition;

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    .end local v0    # "i":I
    .end local v1    # "numTransitions":I
    :cond_0
    return-object p0
.end method

.method public setEpicenterCallback(Landroid/support/transition/Transition$EpicenterCallback;)V
    .locals 3
    .param p1, "epicenterCallback"    # Landroid/support/transition/Transition$EpicenterCallback;

    .prologue
    .line 620
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->setEpicenterCallback(Landroid/support/transition/Transition$EpicenterCallback;)V

    .line 621
    iget v2, p0, Landroid/support/transition/TransitionSet;->mChangeFlags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Landroid/support/transition/TransitionSet;->mChangeFlags:I

    .line 622
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 623
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 624
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/support/transition/Transition;->setEpicenterCallback(Landroid/support/transition/Transition$EpicenterCallback;)V

    .line 623
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 626
    :cond_0
    return-void
.end method

.method public bridge synthetic setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;
    .locals 1
    .param p1    # Landroid/animation/TimeInterpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionSet;
    .locals 3
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 250
    iget v2, p0, Landroid/support/transition/TransitionSet;->mChangeFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/support/transition/TransitionSet;->mChangeFlags:I

    .line 251
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 252
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 253
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 254
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/support/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    .end local v0    # "i":I
    .end local v1    # "numTransitions":I
    :cond_0
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;

    move-result-object v2

    check-cast v2, Landroid/support/transition/TransitionSet;

    return-object v2
.end method

.method public setOrdering(I)Landroid/support/transition/TransitionSet;
    .locals 3
    .param p1, "ordering"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 132
    packed-switch p1, :pswitch_data_0

    .line 140
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/TransitionSet;->mPlayTogether:Z

    .line 143
    :goto_0
    return-object p0

    .line 137
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/TransitionSet;->mPlayTogether:Z

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPathMotion(Landroid/support/transition/PathMotion;)V
    .locals 2
    .param p1, "pathMotion"    # Landroid/support/transition/PathMotion;

    .prologue
    .line 382
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->setPathMotion(Landroid/support/transition/PathMotion;)V

    .line 383
    iget v1, p0, Landroid/support/transition/TransitionSet;->mChangeFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/support/transition/TransitionSet;->mChangeFlags:I

    .line 384
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 385
    iget-object v1, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    invoke-virtual {v1, p1}, Landroid/support/transition/Transition;->setPathMotion(Landroid/support/transition/PathMotion;)V

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    :cond_0
    return-void
.end method

.method public setPropagation(Landroid/support/transition/TransitionPropagation;)V
    .locals 3
    .param p1, "propagation"    # Landroid/support/transition/TransitionPropagation;

    .prologue
    .line 610
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->setPropagation(Landroid/support/transition/TransitionPropagation;)V

    .line 611
    iget v2, p0, Landroid/support/transition/TransitionSet;->mChangeFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/support/transition/TransitionSet;->mChangeFlags:I

    .line 612
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 613
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 614
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/support/transition/Transition;->setPropagation(Landroid/support/transition/TransitionPropagation;)V

    .line 613
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 616
    :cond_0
    return-void
.end method

.method bridge synthetic setSceneRoot(Landroid/view/ViewGroup;)Landroid/support/transition/Transition;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSet;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/support/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method setSceneRoot(Landroid/view/ViewGroup;)Landroid/support/transition/TransitionSet;
    .locals 3
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 591
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/support/transition/Transition;

    .line 592
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 593
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 594
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    invoke-virtual {v2, p1}, Landroid/support/transition/Transition;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/support/transition/Transition;

    .line 593
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 596
    :cond_0
    return-object p0
.end method

.method public bridge synthetic setStartDelay(J)Landroid/support/transition/Transition;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Landroid/support/transition/TransitionSet;->setStartDelay(J)Landroid/support/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public setStartDelay(J)Landroid/support/transition/TransitionSet;
    .locals 1
    .param p1, "startDelay"    # J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 244
    invoke-super {p0, p1, p2}, Landroid/support/transition/Transition;->setStartDelay(J)Landroid/support/transition/Transition;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionSet;

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "indent"    # Ljava/lang/String;

    .prologue
    .line 630
    invoke-super {p0, p1}, Landroid/support/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 632
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Landroid/support/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 631
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 634
    :cond_0
    return-object v1
.end method
