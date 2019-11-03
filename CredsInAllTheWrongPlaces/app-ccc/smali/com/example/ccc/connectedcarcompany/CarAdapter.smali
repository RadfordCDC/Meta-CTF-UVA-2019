.class public Lcom/example/ccc/connectedcarcompany/CarAdapter;
.super Landroid/widget/BaseAdapter;
.source "CarAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataSource:Ljava/util/ArrayList;
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

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private sActivity:Lcom/example/ccc/connectedcarcompany/ShopActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/example/ccc/connectedcarcompany/ShopActivity;Landroid/view/View$OnTouchListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "activity"    # Lcom/example/ccc/connectedcarcompany/ShopActivity;
    .param p4, "tl"    # Landroid/view/View$OnTouchListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/example/ccc/connectedcarcompany/Car;",
            ">;>;",
            "Lcom/example/ccc/connectedcarcompany/ShopActivity;",
            "Landroid/view/View$OnTouchListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/example/ccc/connectedcarcompany/Car;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/example/ccc/connectedcarcompany/CarAdapter;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/example/ccc/connectedcarcompany/CarAdapter;->mDataSource:Ljava/util/ArrayList;

    .line 26
    iget-object v0, p0, Lcom/example/ccc/connectedcarcompany/CarAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/example/ccc/connectedcarcompany/CarAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 27
    iput-object p3, p0, Lcom/example/ccc/connectedcarcompany/CarAdapter;->sActivity:Lcom/example/ccc/connectedcarcompany/ShopActivity;

    .line 28
    iput-object p4, p0, Lcom/example/ccc/connectedcarcompany/CarAdapter;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 29
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/example/ccc/connectedcarcompany/CarAdapter;->mDataSource:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/example/ccc/connectedcarcompany/CarAdapter;->mDataSource:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 51
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 57
    move-object v0, p0

    .line 60
    .local v0, "adapter":Lcom/example/ccc/connectedcarcompany/CarAdapter;
    iget-object v8, p0, Lcom/example/ccc/connectedcarcompany/CarAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0b001f

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 63
    .local v7, "rowView":Landroid/view/View;
    iget-object v8, p0, Lcom/example/ccc/connectedcarcompany/CarAdapter;->mDataSource:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 64
    const v8, 0x7f080027

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 65
    .local v1, "carName1":Landroid/widget/TextView;
    iget-object v8, v0, Lcom/example/ccc/connectedcarcompany/CarAdapter;->mDataSource:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/example/ccc/connectedcarcompany/Car;

    invoke-virtual {v8}, Lcom/example/ccc/connectedcarcompany/Car;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const v8, 0x7f080024

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 67
    .local v4, "image1":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/example/ccc/connectedcarcompany/CarAdapter;->mDataSource:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/example/ccc/connectedcarcompany/Car;

    invoke-virtual {v8}, Lcom/example/ccc/connectedcarcompany/Car;->getImage()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 68
    iget-object v8, p0, Lcom/example/ccc/connectedcarcompany/CarAdapter;->mDataSource:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    .line 69
    const v8, 0x7f080028

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 70
    .local v2, "carName2":Landroid/widget/TextView;
    iget-object v8, v0, Lcom/example/ccc/connectedcarcompany/CarAdapter;->mDataSource:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/example/ccc/connectedcarcompany/Car;

    invoke-virtual {v8}, Lcom/example/ccc/connectedcarcompany/Car;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v8, 0x7f080025

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 72
    .local v5, "image2":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/example/ccc/connectedcarcompany/CarAdapter;->mDataSource:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/example/ccc/connectedcarcompany/Car;

    invoke-virtual {v8}, Lcom/example/ccc/connectedcarcompany/Car;->getImage()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 73
    iget-object v8, p0, Lcom/example/ccc/connectedcarcompany/CarAdapter;->mDataSource:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x2

    if-le v8, v9, :cond_0

    .line 74
    const v8, 0x7f080029

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 75
    .local v3, "carName3":Landroid/widget/TextView;
    iget-object v8, v0, Lcom/example/ccc/connectedcarcompany/CarAdapter;->mDataSource:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/example/ccc/connectedcarcompany/Car;

    invoke-virtual {v8}, Lcom/example/ccc/connectedcarcompany/Car;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    const v8, 0x7f080026

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 77
    .local v6, "image3":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/example/ccc/connectedcarcompany/CarAdapter;->mDataSource:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/example/ccc/connectedcarcompany/Car;

    invoke-virtual {v8}, Lcom/example/ccc/connectedcarcompany/Car;->getImage()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 81
    .end local v1    # "carName1":Landroid/widget/TextView;
    .end local v2    # "carName2":Landroid/widget/TextView;
    .end local v3    # "carName3":Landroid/widget/TextView;
    .end local v4    # "image1":Landroid/widget/ImageView;
    .end local v5    # "image2":Landroid/widget/ImageView;
    .end local v6    # "image3":Landroid/widget/ImageView;
    :cond_0
    return-object v7
.end method

.method public notifyNewData()V
    .locals 1

    .prologue
    .line 33
    move-object v0, p0

    .line 34
    .local v0, "adapter":Lcom/example/ccc/connectedcarcompany/CarAdapter;
    invoke-virtual {v0}, Lcom/example/ccc/connectedcarcompany/CarAdapter;->notifyDataSetChanged()V

    .line 35
    return-void
.end method
