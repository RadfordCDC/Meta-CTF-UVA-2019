.class public Landroid/support/transition/Slide;
.super Landroid/support/transition/Visibility;
.source "Slide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/Slide$CalculateSlideVertical;,
        Landroid/support/transition/Slide$CalculateSlideHorizontal;,
        Landroid/support/transition/Slide$CalculateSlide;,
        Landroid/support/transition/Slide$GravityFlag;
    }
.end annotation


# static fields
.field private static final PROPNAME_SCREEN_POSITION:Ljava/lang/String; = "android:slide:screenPosition"

.field private static final sAccelerate:Landroid/animation/TimeInterpolator;

.field private static final sCalculateBottom:Landroid/support/transition/Slide$CalculateSlide;

.field private static final sCalculateEnd:Landroid/support/transition/Slide$CalculateSlide;

.field private static final sCalculateLeft:Landroid/support/transition/Slide$CalculateSlide;

.field private static final sCalculateRight:Landroid/support/transition/Slide$CalculateSlide;

.field private static final sCalculateStart:Landroid/support/transition/Slide$CalculateSlide;

.field private static final sCalculateTop:Landroid/support/transition/Slide$CalculateSlide;

.field private static final sDecelerate:Landroid/animation/TimeInterpolator;


# instance fields
.field private mSlideCalculator:Landroid/support/transition/Slide$CalculateSlide;

.field private mSlideEdge:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/transition/Slide;->sDecelerate:Landroid/animation/TimeInterpolator;

    .line 55
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/transition/Slide;->sAccelerate:Landroid/animation/TimeInterpolator;

    .line 92
    new-instance v0, Landroid/support/transition/Slide$1;

    invoke-direct {v0}, Landroid/support/transition/Slide$1;-><init>()V

    sput-object v0, Landroid/support/transition/Slide;->sCalculateLeft:Landroid/support/transition/Slide$CalculateSlide;

    .line 99
    new-instance v0, Landroid/support/transition/Slide$2;

    invoke-direct {v0}, Landroid/support/transition/Slide$2;-><init>()V

    sput-object v0, Landroid/support/transition/Slide;->sCalculateStart:Landroid/support/transition/Slide$CalculateSlide;

    .line 114
    new-instance v0, Landroid/support/transition/Slide$3;

    invoke-direct {v0}, Landroid/support/transition/Slide$3;-><init>()V

    sput-object v0, Landroid/support/transition/Slide;->sCalculateTop:Landroid/support/transition/Slide$CalculateSlide;

    .line 121
    new-instance v0, Landroid/support/transition/Slide$4;

    invoke-direct {v0}, Landroid/support/transition/Slide$4;-><init>()V

    sput-object v0, Landroid/support/transition/Slide;->sCalculateRight:Landroid/support/transition/Slide$CalculateSlide;

    .line 128
    new-instance v0, Landroid/support/transition/Slide$5;

    invoke-direct {v0}, Landroid/support/transition/Slide$5;-><init>()V

    sput-object v0, Landroid/support/transition/Slide;->sCalculateEnd:Landroid/support/transition/Slide$CalculateSlide;

    .line 143
    new-instance v0, Landroid/support/transition/Slide$6;

    invoke-direct {v0}, Landroid/support/transition/Slide$6;-><init>()V

    sput-object v0, Landroid/support/transition/Slide;->sCalculateBottom:Landroid/support/transition/Slide$CalculateSlide;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x50

    .line 154
    invoke-direct {p0}, Landroid/support/transition/Visibility;-><init>()V

    .line 57
    sget-object v0, Landroid/support/transition/Slide;->sCalculateBottom:Landroid/support/transition/Slide$CalculateSlide;

    iput-object v0, p0, Landroid/support/transition/Slide;->mSlideCalculator:Landroid/support/transition/Slide$CalculateSlide;

    .line 58
    iput v1, p0, Landroid/support/transition/Slide;->mSlideEdge:I

    .line 155
    invoke-virtual {p0, v1}, Landroid/support/transition/Slide;->setSlideEdge(I)V

    .line 156
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "slideEdge"    # I

    .prologue
    .line 161
    invoke-direct {p0}, Landroid/support/transition/Visibility;-><init>()V

    .line 57
    sget-object v0, Landroid/support/transition/Slide;->sCalculateBottom:Landroid/support/transition/Slide$CalculateSlide;

    iput-object v0, p0, Landroid/support/transition/Slide;->mSlideCalculator:Landroid/support/transition/Slide$CalculateSlide;

    .line 58
    const/16 v0, 0x50

    iput v0, p0, Landroid/support/transition/Slide;->mSlideEdge:I

    .line 162
    invoke-virtual {p0, p1}, Landroid/support/transition/Slide;->setSlideEdge(I)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v4, 0x50

    .line 166
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    sget-object v2, Landroid/support/transition/Slide;->sCalculateBottom:Landroid/support/transition/Slide$CalculateSlide;

    iput-object v2, p0, Landroid/support/transition/Slide;->mSlideCalculator:Landroid/support/transition/Slide$CalculateSlide;

    .line 58
    iput v4, p0, Landroid/support/transition/Slide;->mSlideEdge:I

    .line 167
    sget-object v2, Landroid/support/transition/Styleable;->SLIDE:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 168
    .local v0, "a":Landroid/content/res/TypedArray;
    check-cast p2, Lorg/xmlpull/v1/XmlPullParser;

    .end local p2    # "attrs":Landroid/util/AttributeSet;
    const-string v2, "slideEdge"

    const/4 v3, 0x0

    invoke-static {v0, p2, v2, v3, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    .line 170
    .local v1, "edge":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    invoke-virtual {p0, v1}, Landroid/support/transition/Slide;->setSlideEdge(I)V

    .line 173
    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .locals 4
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 176
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 177
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 178
    .local v0, "position":[I
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 179
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:slide:screenPosition"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/support/transition/Visibility;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    .line 191
    invoke-direct {p0, p1}, Landroid/support/transition/Slide;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 192
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/support/transition/Visibility;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    .line 185
    invoke-direct {p0, p1}, Landroid/support/transition/Slide;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 186
    return-void
.end method

.method public getSlideEdge()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Landroid/support/transition/Slide;->mSlideEdge:I

    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 10
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 247
    if-nez p4, :cond_0

    .line 248
    const/4 v0, 0x0

    .line 256
    :goto_0
    return-object v0

    .line 250
    :cond_0
    iget-object v0, p4, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:slide:screenPosition"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move-object v9, v0

    check-cast v9, [I

    .line 251
    .local v9, "position":[I
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v6

    .line 252
    .local v6, "endX":F
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v7

    .line 253
    .local v7, "endY":F
    iget-object v0, p0, Landroid/support/transition/Slide;->mSlideCalculator:Landroid/support/transition/Slide$CalculateSlide;

    invoke-interface {v0, p1, p2}, Landroid/support/transition/Slide$CalculateSlide;->getGoneX(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v4

    .line 254
    .local v4, "startX":F
    iget-object v0, p0, Landroid/support/transition/Slide;->mSlideCalculator:Landroid/support/transition/Slide$CalculateSlide;

    invoke-interface {v0, p1, p2}, Landroid/support/transition/Slide$CalculateSlide;->getGoneY(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v5

    .line 255
    .local v5, "startY":F
    const/4 v0, 0x0

    aget v2, v9, v0

    const/4 v0, 0x1

    aget v3, v9, v0

    sget-object v8, Landroid/support/transition/Slide;->sDecelerate:Landroid/animation/TimeInterpolator;

    move-object v0, p2

    move-object v1, p4

    .line 256
    invoke-static/range {v0 .. v8}, Landroid/support/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/support/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 10
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 263
    if-nez p3, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 272
    :goto_0
    return-object v0

    .line 266
    :cond_0
    iget-object v0, p3, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:slide:screenPosition"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move-object v9, v0

    check-cast v9, [I

    .line 267
    .local v9, "position":[I
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v4

    .line 268
    .local v4, "startX":F
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v5

    .line 269
    .local v5, "startY":F
    iget-object v0, p0, Landroid/support/transition/Slide;->mSlideCalculator:Landroid/support/transition/Slide$CalculateSlide;

    invoke-interface {v0, p1, p2}, Landroid/support/transition/Slide$CalculateSlide;->getGoneX(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v6

    .line 270
    .local v6, "endX":F
    iget-object v0, p0, Landroid/support/transition/Slide;->mSlideCalculator:Landroid/support/transition/Slide$CalculateSlide;

    invoke-interface {v0, p1, p2}, Landroid/support/transition/Slide$CalculateSlide;->getGoneY(Landroid/view/ViewGroup;Landroid/view/View;)F

    move-result v7

    .line 271
    .local v7, "endY":F
    const/4 v0, 0x0

    aget v2, v9, v0

    const/4 v0, 0x1

    aget v3, v9, v0

    sget-object v8, Landroid/support/transition/Slide;->sAccelerate:Landroid/animation/TimeInterpolator;

    move-object v0, p2

    move-object v1, p3

    .line 272
    invoke-static/range {v0 .. v8}, Landroid/support/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/support/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0
.end method

.method public setSlideEdge(I)V
    .locals 3
    .param p1, "slideEdge"    # I

    .prologue
    .line 203
    sparse-switch p1, :sswitch_data_0

    .line 223
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid slide direction"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :sswitch_0
    sget-object v1, Landroid/support/transition/Slide;->sCalculateLeft:Landroid/support/transition/Slide$CalculateSlide;

    iput-object v1, p0, Landroid/support/transition/Slide;->mSlideCalculator:Landroid/support/transition/Slide$CalculateSlide;

    .line 225
    :goto_0
    iput p1, p0, Landroid/support/transition/Slide;->mSlideEdge:I

    .line 226
    new-instance v0, Landroid/support/transition/SidePropagation;

    invoke-direct {v0}, Landroid/support/transition/SidePropagation;-><init>()V

    .line 227
    .local v0, "propagation":Landroid/support/transition/SidePropagation;
    invoke-virtual {v0, p1}, Landroid/support/transition/SidePropagation;->setSide(I)V

    .line 228
    invoke-virtual {p0, v0}, Landroid/support/transition/Slide;->setPropagation(Landroid/support/transition/TransitionPropagation;)V

    .line 229
    return-void

    .line 208
    .end local v0    # "propagation":Landroid/support/transition/SidePropagation;
    :sswitch_1
    sget-object v1, Landroid/support/transition/Slide;->sCalculateTop:Landroid/support/transition/Slide$CalculateSlide;

    iput-object v1, p0, Landroid/support/transition/Slide;->mSlideCalculator:Landroid/support/transition/Slide$CalculateSlide;

    goto :goto_0

    .line 211
    :sswitch_2
    sget-object v1, Landroid/support/transition/Slide;->sCalculateRight:Landroid/support/transition/Slide$CalculateSlide;

    iput-object v1, p0, Landroid/support/transition/Slide;->mSlideCalculator:Landroid/support/transition/Slide$CalculateSlide;

    goto :goto_0

    .line 214
    :sswitch_3
    sget-object v1, Landroid/support/transition/Slide;->sCalculateBottom:Landroid/support/transition/Slide$CalculateSlide;

    iput-object v1, p0, Landroid/support/transition/Slide;->mSlideCalculator:Landroid/support/transition/Slide$CalculateSlide;

    goto :goto_0

    .line 217
    :sswitch_4
    sget-object v1, Landroid/support/transition/Slide;->sCalculateStart:Landroid/support/transition/Slide$CalculateSlide;

    iput-object v1, p0, Landroid/support/transition/Slide;->mSlideCalculator:Landroid/support/transition/Slide$CalculateSlide;

    goto :goto_0

    .line 220
    :sswitch_5
    sget-object v1, Landroid/support/transition/Slide;->sCalculateEnd:Landroid/support/transition/Slide$CalculateSlide;

    iput-object v1, p0, Landroid/support/transition/Slide;->mSlideCalculator:Landroid/support/transition/Slide$CalculateSlide;

    goto :goto_0

    .line 203
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_2
        0x30 -> :sswitch_1
        0x50 -> :sswitch_3
        0x800003 -> :sswitch_4
        0x800005 -> :sswitch_5
    .end sparse-switch
.end method
