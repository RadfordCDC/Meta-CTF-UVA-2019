.class Lcom/example/ccc/connectedcarcompany/ShopActivity$1;
.super Ljava/lang/Object;
.source "ShopActivity.java"

# interfaces
.implements Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/ccc/connectedcarcompany/ShopActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/ccc/connectedcarcompany/ShopActivity;


# direct methods
.method constructor <init>(Lcom/example/ccc/connectedcarcompany/ShopActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/ccc/connectedcarcompany/ShopActivity;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity$1;->this$0:Lcom/example/ccc/connectedcarcompany/ShopActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v1, v2

    .line 47
    :goto_0
    :pswitch_1
    return v1

    .line 35
    :pswitch_2
    iget-object v3, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity$1;->this$0:Lcom/example/ccc/connectedcarcompany/ShopActivity;

    iget-object v4, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity$1;->this$0:Lcom/example/ccc/connectedcarcompany/ShopActivity;

    invoke-static {v4}, Lcom/example/ccc/connectedcarcompany/ShopActivity;->access$000(Lcom/example/ccc/connectedcarcompany/ShopActivity;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "admin"

    invoke-virtual {v3, v4, v5}, Lcom/example/ccc/connectedcarcompany/ShopActivity;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity$1;->this$0:Lcom/example/ccc/connectedcarcompany/ShopActivity;

    invoke-virtual {v2}, Lcom/example/ccc/connectedcarcompany/ShopActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/example/ccc/connectedcarcompany/AdminActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "user_token"

    iget-object v3, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity$1;->this$0:Lcom/example/ccc/connectedcarcompany/ShopActivity;

    invoke-static {v3}, Lcom/example/ccc/connectedcarcompany/ShopActivity;->access$100(Lcom/example/ccc/connectedcarcompany/ShopActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v2, "user_roles"

    iget-object v3, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity$1;->this$0:Lcom/example/ccc/connectedcarcompany/ShopActivity;

    invoke-static {v3}, Lcom/example/ccc/connectedcarcompany/ShopActivity;->access$000(Lcom/example/ccc/connectedcarcompany/ShopActivity;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v2, "user_id"

    iget-object v3, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity$1;->this$0:Lcom/example/ccc/connectedcarcompany/ShopActivity;

    invoke-static {v3}, Lcom/example/ccc/connectedcarcompany/ShopActivity;->access$200(Lcom/example/ccc/connectedcarcompany/ShopActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    iget-object v2, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity$1;->this$0:Lcom/example/ccc/connectedcarcompany/ShopActivity;

    invoke-virtual {v2, v0}, Lcom/example/ccc/connectedcarcompany/ShopActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    move v1, v2

    .line 43
    goto :goto_0

    :pswitch_3
    move v1, v2

    .line 45
    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x7f080070
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
