.class public Lcom/example/ccc/connectedcarcompany/ShopActivity$GetImage;
.super Landroid/os/AsyncTask;
.source "ShopActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/ccc/connectedcarcompany/ShopActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetImage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final car:Lcom/example/ccc/connectedcarcompany/Car;

.field private final ind:I

.field final synthetic this$0:Lcom/example/ccc/connectedcarcompany/ShopActivity;

.field private final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/example/ccc/connectedcarcompany/ShopActivity;Ljava/lang/String;Lcom/example/ccc/connectedcarcompany/Car;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/ccc/connectedcarcompany/ShopActivity;
    .param p2, "u"    # Ljava/lang/String;
    .param p3, "c"    # Lcom/example/ccc/connectedcarcompany/Car;
    .param p4, "i"    # I

    .prologue
    .line 144
    iput-object p1, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity$GetImage;->this$0:Lcom/example/ccc/connectedcarcompany/ShopActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 145
    iput-object p2, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity$GetImage;->url:Ljava/lang/String;

    .line 146
    iput-object p3, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity$GetImage;->car:Lcom/example/ccc/connectedcarcompany/Car;

    .line 147
    iput p4, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity$GetImage;->ind:I

    .line 148
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity$GetImage;->car:Lcom/example/ccc/connectedcarcompany/Car;

    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity$GetImage;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/ccc/connectedcarcompany/Car;->setImage(Landroid/graphics/Bitmap;)V

    .line 154
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 158
    :goto_0
    return-object v1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 138
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/example/ccc/connectedcarcompany/ShopActivity$GetImage;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 164
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity$GetImage;->this$0:Lcom/example/ccc/connectedcarcompany/ShopActivity;

    invoke-static {v0}, Lcom/example/ccc/connectedcarcompany/ShopActivity;->access$300(Lcom/example/ccc/connectedcarcompany/ShopActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity$GetImage;->ind:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity$GetImage;->car:Lcom/example/ccc/connectedcarcompany/Car;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity$GetImage;->this$0:Lcom/example/ccc/connectedcarcompany/ShopActivity;

    invoke-static {v0}, Lcom/example/ccc/connectedcarcompany/ShopActivity;->access$400(Lcom/example/ccc/connectedcarcompany/ShopActivity;)Lcom/example/ccc/connectedcarcompany/CarAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/ccc/connectedcarcompany/CarAdapter;->notifyNewData()V

    .line 168
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 138
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/example/ccc/connectedcarcompany/ShopActivity$GetImage;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
