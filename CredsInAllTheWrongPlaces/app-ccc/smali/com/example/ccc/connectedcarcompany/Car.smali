.class public Lcom/example/ccc/connectedcarcompany/Car;
.super Ljava/lang/Object;
.source "Car.java"


# instance fields
.field private image:Landroid/graphics/Bitmap;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "n"    # Ljava/lang/String;
    .param p2, "p"    # Landroid/graphics/Bitmap;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/example/ccc/connectedcarcompany/Car;->name:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/example/ccc/connectedcarcompany/Car;->image:Landroid/graphics/Bitmap;

    .line 16
    return-void
.end method


# virtual methods
.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/example/ccc/connectedcarcompany/Car;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/example/ccc/connectedcarcompany/Car;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "i"    # Landroid/graphics/Bitmap;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/example/ccc/connectedcarcompany/Car;->image:Landroid/graphics/Bitmap;

    .line 28
    return-void
.end method
