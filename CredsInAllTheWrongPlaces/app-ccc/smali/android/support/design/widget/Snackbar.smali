.class public final Landroid/support/design/widget/Snackbar;
.super Landroid/support/design/widget/BaseTransientBottomBar;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/Snackbar$SnackbarLayout;,
        Landroid/support/design/widget/Snackbar$Callback;,
        Landroid/support/design/widget/Snackbar$Duration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/BaseTransientBottomBar",
        "<",
        "Landroid/support/design/widget/Snackbar;",
        ">;"
    }
.end annotation


# static fields
.field public static final LENGTH_INDEFINITE:I = -0x2

.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1

.field private static final SNACKBAR_BUTTON_STYLE_ATTR:[I


# instance fields
.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private callback:Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback",
            "<",
            "Landroid/support/design/widget/Snackbar;",
            ">;"
        }
    .end annotation
.end field

.field private hasAction:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 95
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Landroid/support/design/R$attr;->snackbarButtonStyle:I

    aput v2, v0, v1

    sput-object v0, Landroid/support/design/widget/Snackbar;->SNACKBAR_BUTTON_STYLE_ATTR:[I

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/design/snackbar/ContentViewCallback;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "content"    # Landroid/view/View;
    .param p3, "contentViewCallback"    # Landroid/support/design/snackbar/ContentViewCallback;

    .prologue
    .line 134
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/BaseTransientBottomBar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/design/snackbar/ContentViewCallback;)V

    .line 136
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/design/widget/Snackbar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 137
    return-void
.end method

.method private static findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 236
    .local v0, "fallback":Landroid/view/ViewGroup;
    :cond_0
    instance-of v2, p0, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v2, :cond_1

    .line 238
    check-cast p0, Landroid/view/ViewGroup;

    .line 258
    .end local p0    # "view":Landroid/view/View;
    :goto_0
    return-object p0

    .line 239
    .restart local p0    # "view":Landroid/view/View;
    :cond_1
    instance-of v2, p0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    .line 240
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x1020002

    if-ne v2, v3, :cond_2

    .line 243
    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    move-object v0, p0

    .line 246
    check-cast v0, Landroid/view/ViewGroup;

    .line 250
    :cond_3
    if-eqz p0, :cond_4

    .line 252
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 253
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_5

    check-cast v1, Landroid/view/View;

    .end local v1    # "parent":Landroid/view/ViewParent;
    move-object p0, v1

    .line 255
    :cond_4
    :goto_1
    if-nez p0, :cond_0

    move-object p0, v0

    .line 258
    goto :goto_0

    .line 253
    .restart local v1    # "parent":Landroid/view/ViewParent;
    :cond_5
    const/4 p0, 0x0

    goto :goto_1
.end method

.method protected static hasSnackbarButtonStyleAttr(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 206
    sget-object v3, Landroid/support/design/widget/Snackbar;->SNACKBAR_BUTTON_STYLE_ATTR:[I

    invoke-virtual {p0, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 207
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 208
    .local v1, "snackbarButtonStyleResId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 209
    if-eq v1, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "duration"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 230
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public static make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;
    .locals 6
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "duration"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 179
    invoke-static {p0}, Landroid/support/design/widget/Snackbar;->findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 180
    .local v2, "parent":Landroid/view/ViewGroup;
    if-nez v2, :cond_0

    .line 181
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "No suitable parent found from the given view. Please provide a valid view."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 185
    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 189
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/design/widget/Snackbar;->hasSnackbarButtonStyleAttr(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget v4, Landroid/support/design/R$layout;->mtrl_layout_snackbar_include:I

    :goto_0
    const/4 v5, 0x0

    .line 188
    invoke-virtual {v1, v4, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/SnackbarContentLayout;

    .line 194
    .local v0, "content":Landroid/support/design/widget/SnackbarContentLayout;
    new-instance v3, Landroid/support/design/widget/Snackbar;

    invoke-direct {v3, v2, v0, v0}, Landroid/support/design/widget/Snackbar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/design/snackbar/ContentViewCallback;)V

    .line 195
    .local v3, "snackbar":Landroid/support/design/widget/Snackbar;
    invoke-virtual {v3, p1}, Landroid/support/design/widget/Snackbar;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/Snackbar;

    .line 196
    invoke-virtual {v3, p2}, Landroid/support/design/widget/Snackbar;->setDuration(I)Landroid/support/design/widget/BaseTransientBottomBar;

    .line 197
    return-object v3

    .line 189
    .end local v0    # "content":Landroid/support/design/widget/SnackbarContentLayout;
    .end local v3    # "snackbar":Landroid/support/design/widget/Snackbar;
    :cond_1
    sget v4, Landroid/support/design/R$layout;->design_layout_snackbar_include:I

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 150
    invoke-super {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->dismiss()V

    .line 151
    return-void
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Landroid/support/design/widget/Snackbar;->hasAction:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    return v0

    .line 331
    :cond_0
    invoke-super {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->getDuration()I

    move-result v0

    goto :goto_0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->isShown()Z

    move-result v0

    return v0
.end method

.method public setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/view/View$OnClickListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 292
    invoke-virtual {p0}, Landroid/support/design/widget/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/support/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 303
    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/SnackbarContentLayout;

    .line 304
    .local v0, "contentLayout":Landroid/support/design/widget/SnackbarContentLayout;
    invoke-virtual {v0}, Landroid/support/design/widget/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v1

    .line 305
    .local v1, "tv":Landroid/widget/TextView;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p2, :cond_1

    .line 306
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iput-boolean v3, p0, Landroid/support/design/widget/Snackbar;->hasAction:Z

    .line 323
    :goto_0
    return-object p0

    .line 310
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/design/widget/Snackbar;->hasAction:Z

    .line 311
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    new-instance v2, Landroid/support/design/widget/Snackbar$1;

    invoke-direct {v2, p0, p2}, Landroid/support/design/widget/Snackbar$1;-><init>(Landroid/support/design/widget/Snackbar;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setActionTextColor(I)Landroid/support/design/widget/Snackbar;
    .locals 4
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 352
    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/SnackbarContentLayout;

    .line 353
    .local v0, "contentLayout":Landroid/support/design/widget/SnackbarContentLayout;
    invoke-virtual {v0}, Landroid/support/design/widget/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v1

    .line 354
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 355
    return-object p0
.end method

.method public setActionTextColor(Landroid/content/res/ColorStateList;)Landroid/support/design/widget/Snackbar;
    .locals 4
    .param p1, "colors"    # Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 340
    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/SnackbarContentLayout;

    .line 341
    .local v0, "contentLayout":Landroid/support/design/widget/SnackbarContentLayout;
    invoke-virtual {v0}, Landroid/support/design/widget/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v1

    .line 342
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 343
    return-object p0
.end method

.method public setCallback(Landroid/support/design/widget/Snackbar$Callback;)Landroid/support/design/widget/Snackbar;
    .locals 1
    .param p1, "callback"    # Landroid/support/design/widget/Snackbar$Callback;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->callback:Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->callback:Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/Snackbar;->removeCallback(Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;)Landroid/support/design/widget/BaseTransientBottomBar;

    .line 377
    :cond_0
    if-eqz p1, :cond_1

    .line 378
    invoke-virtual {p0, p1}, Landroid/support/design/widget/Snackbar;->addCallback(Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;)Landroid/support/design/widget/BaseTransientBottomBar;

    .line 382
    :cond_1
    iput-object p1, p0, Landroid/support/design/widget/Snackbar;->callback:Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    .line 383
    return-object p0
.end method

.method public setText(I)Landroid/support/design/widget/Snackbar;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 281
    invoke-virtual {p0}, Landroid/support/design/widget/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/Snackbar;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/Snackbar;
    .locals 4
    .param p1, "message"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 268
    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->view:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/SnackbarContentLayout;

    .line 269
    .local v0, "contentLayout":Landroid/support/design/widget/SnackbarContentLayout;
    invoke-virtual {v0}, Landroid/support/design/widget/SnackbarContentLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v1

    .line 270
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    return-object p0
.end method

.method public show()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->show()V

    .line 144
    return-void
.end method
