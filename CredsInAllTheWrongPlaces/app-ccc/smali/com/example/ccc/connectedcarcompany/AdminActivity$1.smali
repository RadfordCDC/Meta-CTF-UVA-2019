.class Lcom/example/ccc/connectedcarcompany/AdminActivity$1;
.super Ljava/lang/Object;
.source "AdminActivity.java"

# interfaces
.implements Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/ccc/connectedcarcompany/AdminActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/ccc/connectedcarcompany/AdminActivity;


# direct methods
.method constructor <init>(Lcom/example/ccc/connectedcarcompany/AdminActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/ccc/connectedcarcompany/AdminActivity;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/example/ccc/connectedcarcompany/AdminActivity$1;->this$0:Lcom/example/ccc/connectedcarcompany/AdminActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v1, v2

    .line 52
    :goto_0
    :pswitch_1
    return v1

    .line 41
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/example/ccc/connectedcarcompany/AdminActivity$1;->this$0:Lcom/example/ccc/connectedcarcompany/AdminActivity;

    invoke-virtual {v2}, Lcom/example/ccc/connectedcarcompany/AdminActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/example/ccc/connectedcarcompany/ShopActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "user_token"

    iget-object v3, p0, Lcom/example/ccc/connectedcarcompany/AdminActivity$1;->this$0:Lcom/example/ccc/connectedcarcompany/AdminActivity;

    invoke-static {v3}, Lcom/example/ccc/connectedcarcompany/AdminActivity;->access$000(Lcom/example/ccc/connectedcarcompany/AdminActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v2, "user_roles"

    iget-object v3, p0, Lcom/example/ccc/connectedcarcompany/AdminActivity$1;->this$0:Lcom/example/ccc/connectedcarcompany/AdminActivity;

    invoke-static {v3}, Lcom/example/ccc/connectedcarcompany/AdminActivity;->access$100(Lcom/example/ccc/connectedcarcompany/AdminActivity;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v2, "user_id"

    iget-object v3, p0, Lcom/example/ccc/connectedcarcompany/AdminActivity$1;->this$0:Lcom/example/ccc/connectedcarcompany/AdminActivity;

    invoke-static {v3}, Lcom/example/ccc/connectedcarcompany/AdminActivity;->access$200(Lcom/example/ccc/connectedcarcompany/AdminActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    iget-object v2, p0, Lcom/example/ccc/connectedcarcompany/AdminActivity$1;->this$0:Lcom/example/ccc/connectedcarcompany/AdminActivity;

    invoke-virtual {v2, v0}, Lcom/example/ccc/connectedcarcompany/AdminActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_3
    move v1, v2

    .line 50
    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x7f080070
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
