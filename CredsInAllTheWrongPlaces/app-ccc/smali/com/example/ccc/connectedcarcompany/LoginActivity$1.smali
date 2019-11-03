.class Lcom/example/ccc/connectedcarcompany/LoginActivity$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/ccc/connectedcarcompany/LoginActivity;->showProgress(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/ccc/connectedcarcompany/LoginActivity;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/example/ccc/connectedcarcompany/LoginActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/ccc/connectedcarcompany/LoginActivity;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity$1;->this$0:Lcom/example/ccc/connectedcarcompany/LoginActivity;

    iput-boolean p2, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity$1;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity$1;->this$0:Lcom/example/ccc/connectedcarcompany/LoginActivity;

    invoke-static {v0}, Lcom/example/ccc/connectedcarcompany/LoginActivity;->access$000(Lcom/example/ccc/connectedcarcompany/LoginActivity;)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity$1;->val$show:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 126
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
