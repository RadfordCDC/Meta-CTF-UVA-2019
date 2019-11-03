.class public Lcom/example/ccc/connectedcarcompany/LoginActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;
    }
.end annotation


# instance fields
.field private mAuthTask:Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;

.field private mLoginButton:Landroid/widget/Button;

.field private mLoginFormView:Landroid/view/View;

.field private mPasswordView:Landroid/widget/EditText;

.field private mProgressView:Landroid/view/View;

.field private musernameView:Landroid/widget/EditText;

.field private userID:I

.field private userRoles:[Ljava/lang/String;

.field private userToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity;->mAuthTask:Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;

    return-void
.end method

.method static synthetic access$000(Lcom/example/ccc/connectedcarcompany/LoginActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/example/ccc/connectedcarcompany/LoginActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity;->mLoginFormView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/example/ccc/connectedcarcompany/LoginActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/example/ccc/connectedcarcompany/LoginActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity;->mProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/example/ccc/connectedcarcompany/LoginActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/example/ccc/connectedcarcompany/LoginActivity;

    .prologue
    .line 49
    iget v0, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity;->userID:I

    return v0
.end method

.method static synthetic access$202(Lcom/example/ccc/connectedcarcompany/LoginActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/example/ccc/connectedcarcompany/LoginActivity;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity;->userID:I

    return p1
.end method

.method static synthetic access$300(Lcom/example/ccc/connectedcarcompany/LoginActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/example/ccc/connectedcarcompany/LoginActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity;->userRoles:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/example/ccc/connectedcarcompany/LoginActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/example/ccc/connectedcarcompany/LoginActivity;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity;->userRoles:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/example/ccc/connectedcarcompany/LoginActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/example/ccc/connectedcarcompany/LoginActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity;->userToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/example/ccc/connectedcarcompany/LoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/example/ccc/connectedcarcompany/LoginActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity;->userToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/example/ccc/connectedcarcompany/LoginActivity;Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;)Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;
    .locals 0
    .param p0, "x0"    # Lcom/example/ccc/connectedcarcompany/LoginActivity;
    .param p1, "x1"    # Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity;->mAuthTask:Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;

    return-object p1
.end method

.method static synthetic access$600(Lcom/example/ccc/connectedcarcompany/LoginActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/example/ccc/connectedcarcompany/LoginActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/example/ccc/connectedcarcompany/LoginActivity;->showProgress(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/example/ccc/connectedcarcompany/LoginActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/example/ccc/connectedcarcompany/LoginActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity;->mPasswordView:Landroid/widget/EditText;

    return-object v0
.end method

.method private attemptLogin()V
    .locals 4

    .prologue
    .line 87
    iget-object v2, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity;->musernameView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "username":Ljava/lang/String;
    iget-object v2, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "password":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/example/ccc/connectedcarcompany/LoginActivity;->isusernameValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity;->musernameView:Landroid/widget/EditText;

    const v3, 0x7f0e0031

    invoke-virtual {p0, v3}, Lcom/example/ccc/connectedcarcompany/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 99
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-direct {p0, v0}, Lcom/example/ccc/connectedcarcompany/LoginActivity;->isPasswordValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    iget-object v2, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity;->mPasswordView:Landroid/widget/EditText;

    const v3, 0x7f0e0030

    invoke-virtual {p0, v3}, Lcom/example/ccc/connectedcarcompany/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 96
    :cond_1
    new-instance v2, Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;

    invoke-direct {v2, p0, v1, v0}, Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;-><init>(Lcom/example/ccc/connectedcarcompany/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity;->mAuthTask:Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;

    .line 97
    iget-object v2, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity;->mAuthTask:Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private isPasswordValid(Ljava/lang/String;)Z
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isusernameValid(Ljava/lang/String;)Z
    .locals 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showProgress(Z)V
    .locals 8
    .param p1, "show"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 117
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xd

    if-lt v1, v6, :cond_4

    .line 118
    invoke-virtual {p0}, Lcom/example/ccc/connectedcarcompany/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v6, 0x10e0000

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 120
    .local v0, "shortAnimTime":I
    iget-object v6, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity;->mLoginFormView:Landroid/view/View;

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v1, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity;->mLoginFormView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v6, v0

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    if-eqz p1, :cond_1

    move v1, v4

    :goto_1
    invoke-virtual {v6, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v6, Lcom/example/ccc/connectedcarcompany/LoginActivity$1;

    invoke-direct {v6, p0, p1}, Lcom/example/ccc/connectedcarcompany/LoginActivity$1;-><init>(Lcom/example/ccc/connectedcarcompany/LoginActivity;Z)V

    .line 122
    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 129
    iget-object v1, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity;->mProgressView:Landroid/view/View;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v1, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity;->mProgressView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p1, :cond_3

    :goto_3
    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/example/ccc/connectedcarcompany/LoginActivity$2;

    invoke-direct {v2, p0, p1}, Lcom/example/ccc/connectedcarcompany/LoginActivity$2;-><init>(Lcom/example/ccc/connectedcarcompany/LoginActivity;Z)V

    .line 131
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 143
    .end local v0    # "shortAnimTime":I
    :goto_4
    return-void

    .restart local v0    # "shortAnimTime":I
    :cond_0
    move v1, v3

    .line 120
    goto :goto_0

    :cond_1
    move v1, v5

    .line 121
    goto :goto_1

    :cond_2
    move v3, v2

    .line 129
    goto :goto_2

    :cond_3
    move v5, v4

    .line 130
    goto :goto_3

    .line 140
    .end local v0    # "shortAnimTime":I
    :cond_4
    iget-object v4, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity;->mProgressView:Landroid/view/View;

    if-eqz p1, :cond_5

    move v1, v3

    :goto_5
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v1, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity;->mLoginFormView:Landroid/view/View;

    if-eqz p1, :cond_6

    :goto_6
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_5
    move v1, v2

    .line 140
    goto :goto_5

    :cond_6
    move v2, v3

    .line 141
    goto :goto_6
.end method


# virtual methods
.method final synthetic lambda$onCreate$0$LoginActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/example/ccc/connectedcarcompany/LoginActivity;->attemptLogin()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/example/ccc/connectedcarcompany/LoginActivity;->setContentView(I)V

    .line 71
    const v0, 0x7f0800d0

    invoke-virtual {p0, v0}, Lcom/example/ccc/connectedcarcompany/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity;->musernameView:Landroid/widget/EditText;

    .line 72
    const v0, 0x7f080080

    invoke-virtual {p0, v0}, Lcom/example/ccc/connectedcarcompany/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity;->mPasswordView:Landroid/widget/EditText;

    .line 73
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/example/ccc/connectedcarcompany/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity;->mProgressView:Landroid/view/View;

    .line 74
    const v0, 0x7f080066

    invoke-virtual {p0, v0}, Lcom/example/ccc/connectedcarcompany/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity;->mLoginFormView:Landroid/view/View;

    .line 75
    const v0, 0x7f0800d2

    invoke-virtual {p0, v0}, Lcom/example/ccc/connectedcarcompany/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity;->mLoginButton:Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity;->mLoginButton:Landroid/widget/Button;

    new-instance v1, Lcom/example/ccc/connectedcarcompany/LoginActivity$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/example/ccc/connectedcarcompany/LoginActivity$$Lambda$0;-><init>(Lcom/example/ccc/connectedcarcompany/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method
