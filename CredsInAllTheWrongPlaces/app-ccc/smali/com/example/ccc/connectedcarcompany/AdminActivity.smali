.class public Lcom/example/ccc/connectedcarcompany/AdminActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AdminActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/ccc/connectedcarcompany/AdminActivity$GetProjects;
    }
.end annotation


# instance fields
.field private mOnNavigationItemSelectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

.field private mTextMessage:Landroid/widget/TextView;

.field private message:Ljava/lang/String;

.field private userID:I

.field private userRoles:[Ljava/lang/String;

.field private userToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/example/ccc/connectedcarcompany/AdminActivity;->message:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/example/ccc/connectedcarcompany/AdminActivity$1;

    invoke-direct {v0, p0}, Lcom/example/ccc/connectedcarcompany/AdminActivity$1;-><init>(Lcom/example/ccc/connectedcarcompany/AdminActivity;)V

    iput-object v0, p0, Lcom/example/ccc/connectedcarcompany/AdminActivity;->mOnNavigationItemSelectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/example/ccc/connectedcarcompany/AdminActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/example/ccc/connectedcarcompany/AdminActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/example/ccc/connectedcarcompany/AdminActivity;->userToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/example/ccc/connectedcarcompany/AdminActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/example/ccc/connectedcarcompany/AdminActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/example/ccc/connectedcarcompany/AdminActivity;->userRoles:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/example/ccc/connectedcarcompany/AdminActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/example/ccc/connectedcarcompany/AdminActivity;

    .prologue
    .line 25
    iget v0, p0, Lcom/example/ccc/connectedcarcompany/AdminActivity;->userID:I

    return v0
.end method

.method static synthetic access$300(Lcom/example/ccc/connectedcarcompany/AdminActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/example/ccc/connectedcarcompany/AdminActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/example/ccc/connectedcarcompany/AdminActivity;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/example/ccc/connectedcarcompany/AdminActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/example/ccc/connectedcarcompany/AdminActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/example/ccc/connectedcarcompany/AdminActivity;->message:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/example/ccc/connectedcarcompany/AdminActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/example/ccc/connectedcarcompany/AdminActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/example/ccc/connectedcarcompany/AdminActivity;->mTextMessage:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v3, 0x7f0b001c

    invoke-virtual {p0, v3}, Lcom/example/ccc/connectedcarcompany/AdminActivity;->setContentView(I)V

    .line 61
    const v3, 0x7f080069

    invoke-virtual {p0, v3}, Lcom/example/ccc/connectedcarcompany/AdminActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/example/ccc/connectedcarcompany/AdminActivity;->mTextMessage:Landroid/widget/TextView;

    .line 62
    invoke-virtual {p0}, Lcom/example/ccc/connectedcarcompany/AdminActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 63
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "user_id"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/example/ccc/connectedcarcompany/AdminActivity;->userID:I

    .line 64
    const-string v3, "user_token"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/example/ccc/connectedcarcompany/AdminActivity;->userToken:Ljava/lang/String;

    .line 65
    const-string v3, "user_roles"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/example/ccc/connectedcarcompany/AdminActivity;->userRoles:[Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/example/ccc/connectedcarcompany/AdminActivity$GetProjects;

    invoke-direct {v0, p0}, Lcom/example/ccc/connectedcarcompany/AdminActivity$GetProjects;-><init>(Lcom/example/ccc/connectedcarcompany/AdminActivity;)V

    .line 68
    .local v0, "getProjects":Lcom/example/ccc/connectedcarcompany/AdminActivity$GetProjects;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v3}, Lcom/example/ccc/connectedcarcompany/AdminActivity$GetProjects;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 69
    iget-object v3, p0, Lcom/example/ccc/connectedcarcompany/AdminActivity;->mTextMessage:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/example/ccc/connectedcarcompany/AdminActivity;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v3, 0x7f08006f

    invoke-virtual {p0, v3}, Lcom/example/ccc/connectedcarcompany/AdminActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/BottomNavigationView;

    .line 72
    .local v2, "navigation":Landroid/support/design/widget/BottomNavigationView;
    iget-object v3, p0, Lcom/example/ccc/connectedcarcompany/AdminActivity;->mOnNavigationItemSelectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/BottomNavigationView;->setOnNavigationItemSelectedListener(Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 73
    return-void
.end method
