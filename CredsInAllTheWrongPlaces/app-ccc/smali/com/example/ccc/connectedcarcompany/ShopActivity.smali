.class public Lcom/example/ccc/connectedcarcompany/ShopActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ShopActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/ccc/connectedcarcompany/ShopActivity$GetImage;,
        Lcom/example/ccc/connectedcarcompany/ShopActivity$GetCars;
    }
.end annotation


# instance fields
.field private carAdapter:Lcom/example/ccc/connectedcarcompany/CarAdapter;

.field private cars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/example/ccc/connectedcarcompany/Car;",
            ">;>;"
        }
    .end annotation
.end field

.field private carsList:Landroid/widget/ListView;

.field private mOnNavigationItemSelectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

.field private userID:I

.field private userRoles:[Ljava/lang/String;

.field private userToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 26
    new-instance v0, Lcom/example/ccc/connectedcarcompany/ShopActivity$1;

    invoke-direct {v0, p0}, Lcom/example/ccc/connectedcarcompany/ShopActivity$1;-><init>(Lcom/example/ccc/connectedcarcompany/ShopActivity;)V

    iput-object v0, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity;->mOnNavigationItemSelectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/example/ccc/connectedcarcompany/ShopActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/example/ccc/connectedcarcompany/ShopActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity;->userRoles:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/example/ccc/connectedcarcompany/ShopActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/example/ccc/connectedcarcompany/ShopActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity;->userToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/example/ccc/connectedcarcompany/ShopActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/example/ccc/connectedcarcompany/ShopActivity;

    .prologue
    .line 24
    iget v0, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity;->userID:I

    return v0
.end method

.method static synthetic access$300(Lcom/example/ccc/connectedcarcompany/ShopActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/example/ccc/connectedcarcompany/ShopActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity;->cars:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/example/ccc/connectedcarcompany/ShopActivity;)Lcom/example/ccc/connectedcarcompany/CarAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/example/ccc/connectedcarcompany/ShopActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity;->carAdapter:Lcom/example/ccc/connectedcarcompany/CarAdapter;

    return-object v0
.end method

.method private updateList()V
    .locals 4

    .prologue
    .line 91
    new-instance v0, Lcom/example/ccc/connectedcarcompany/CarAdapter;

    invoke-virtual {p0}, Lcom/example/ccc/connectedcarcompany/ShopActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity;->cars:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/example/ccc/connectedcarcompany/CarAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/example/ccc/connectedcarcompany/ShopActivity;Landroid/view/View$OnTouchListener;)V

    iput-object v0, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity;->carAdapter:Lcom/example/ccc/connectedcarcompany/CarAdapter;

    .line 92
    iget-object v0, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity;->carsList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity;->carAdapter:Lcom/example/ccc/connectedcarcompany/CarAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    return-void
.end method


# virtual methods
.method public arrayContains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "arr"    # [Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 52
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 53
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 55
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    return v1

    .line 52
    .restart local v0    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v3, 0x7f0b001e

    invoke-virtual {p0, v3}, Lcom/example/ccc/connectedcarcompany/ShopActivity;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/example/ccc/connectedcarcompany/ShopActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 73
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "user_id"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity;->userID:I

    .line 74
    const-string v3, "user_token"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity;->userToken:Ljava/lang/String;

    .line 75
    const-string v3, "user_roles"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity;->userRoles:[Ljava/lang/String;

    .line 77
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity;->cars:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Lcom/example/ccc/connectedcarcompany/ShopActivity$GetCars;

    invoke-direct {v0, p0}, Lcom/example/ccc/connectedcarcompany/ShopActivity$GetCars;-><init>(Lcom/example/ccc/connectedcarcompany/ShopActivity;)V

    .line 80
    .local v0, "getCars":Lcom/example/ccc/connectedcarcompany/ShopActivity$GetCars;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v3}, Lcom/example/ccc/connectedcarcompany/ShopActivity$GetCars;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 83
    const v3, 0x7f080063

    invoke-virtual {p0, v3}, Lcom/example/ccc/connectedcarcompany/ShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity;->carsList:Landroid/widget/ListView;

    .line 85
    const v3, 0x7f08006f

    invoke-virtual {p0, v3}, Lcom/example/ccc/connectedcarcompany/ShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/BottomNavigationView;

    .line 86
    .local v2, "navigation":Landroid/support/design/widget/BottomNavigationView;
    iget-object v3, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity;->mOnNavigationItemSelectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/BottomNavigationView;->setOnNavigationItemSelectedListener(Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 87
    invoke-direct {p0}, Lcom/example/ccc/connectedcarcompany/ShopActivity;->updateList()V

    .line 88
    return-void
.end method
