.class public Lcom/example/ccc/connectedcarcompany/ShopActivity$GetCars;
.super Landroid/os/AsyncTask;
.source "ShopActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/ccc/connectedcarcompany/ShopActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetCars"
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
.field final synthetic this$0:Lcom/example/ccc/connectedcarcompany/ShopActivity;


# direct methods
.method public constructor <init>(Lcom/example/ccc/connectedcarcompany/ShopActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/ccc/connectedcarcompany/ShopActivity;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/example/ccc/connectedcarcompany/ShopActivity$GetCars;->this$0:Lcom/example/ccc/connectedcarcompany/ShopActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 17
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 98
    :try_start_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "https://c3.metacorp.us/androidapp/api/cars.php?token="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/example/ccc/connectedcarcompany/ShopActivity$GetCars;->this$0:Lcom/example/ccc/connectedcarcompany/ShopActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/example/ccc/connectedcarcompany/ShopActivity;->access$100(Lcom/example/ccc/connectedcarcompany/ShopActivity;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 99
    .local v13, "url":Ljava/lang/String;
    new-instance v15, Ljava/net/URL;

    invoke-direct {v15, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 100
    .local v7, "in":Ljava/io/InputStream;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 101
    .local v9, "read":Ljava/io/BufferedReader;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, ""

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .local v12, "str":Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v15

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Lcom/example/ccc/connectedcarcompany/ShopActivity$GetCars$$Lambda$0;->get$Lambda(Ljava/lang/StringBuilder;)Ljava/util/function/Consumer;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 103
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v10, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 104
    .local v10, "reader":Lorg/json/JSONObject;
    const-string v15, "status"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 105
    .local v11, "status":I
    const/16 v15, 0xc9

    if-ne v11, v15, :cond_2

    .line 106
    const-string v15, "cars"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 107
    .local v3, "cs":Lorg/json/JSONObject;
    const/4 v14, 0x0

    .line 108
    .local v14, "z":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v15

    if-gt v6, v15, :cond_1

    .line 109
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/example/ccc/connectedcarcompany/ShopActivity$GetCars;->this$0:Lcom/example/ccc/connectedcarcompany/ShopActivity;

    invoke-static {v15}, Lcom/example/ccc/connectedcarcompany/ShopActivity;->access$300(Lcom/example/ccc/connectedcarcompany/ShopActivity;)Ljava/util/ArrayList;

    move-result-object v15

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    const/4 v15, 0x3

    if-ge v8, v15, :cond_0

    .line 111
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    add-int v16, v6, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 112
    .local v2, "car":Lorg/json/JSONObject;
    new-instance v1, Lcom/example/ccc/connectedcarcompany/Car;

    const-string v15, "name"

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v1, v15, v0}, Lcom/example/ccc/connectedcarcompany/Car;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 113
    .local v1, "c":Lcom/example/ccc/connectedcarcompany/Car;
    new-instance v5, Lcom/example/ccc/connectedcarcompany/ShopActivity$GetImage;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/example/ccc/connectedcarcompany/ShopActivity$GetCars;->this$0:Lcom/example/ccc/connectedcarcompany/ShopActivity;

    const-string v16, "picture_url"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v5, v15, v0, v1, v14}, Lcom/example/ccc/connectedcarcompany/ShopActivity$GetImage;-><init>(Lcom/example/ccc/connectedcarcompany/ShopActivity;Ljava/lang/String;Lcom/example/ccc/connectedcarcompany/Car;I)V

    .line 114
    .local v5, "g":Lcom/example/ccc/connectedcarcompany/ShopActivity$GetImage;
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Void;

    invoke-virtual {v5, v15}, Lcom/example/ccc/connectedcarcompany/ShopActivity$GetImage;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 110
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 116
    .end local v1    # "c":Lcom/example/ccc/connectedcarcompany/Car;
    .end local v2    # "car":Lorg/json/JSONObject;
    .end local v5    # "g":Lcom/example/ccc/connectedcarcompany/ShopActivity$GetImage;
    :cond_0
    add-int/lit8 v14, v14, 0x1

    .line 108
    add-int/lit8 v6, v6, 0x3

    goto :goto_0

    .line 118
    .end local v8    # "j":I
    :cond_1
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 126
    .end local v3    # "cs":Lorg/json/JSONObject;
    .end local v6    # "i":I
    .end local v7    # "in":Ljava/io/InputStream;
    .end local v9    # "read":Ljava/io/BufferedReader;
    .end local v10    # "reader":Lorg/json/JSONObject;
    .end local v11    # "status":I
    .end local v12    # "str":Ljava/lang/StringBuilder;
    .end local v13    # "url":Ljava/lang/String;
    .end local v14    # "z":I
    :goto_2
    return-object v15

    .line 121
    .restart local v7    # "in":Ljava/io/InputStream;
    .restart local v9    # "read":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Lorg/json/JSONObject;
    .restart local v11    # "status":I
    .restart local v12    # "str":Ljava/lang/StringBuilder;
    .restart local v13    # "url":Ljava/lang/String;
    :cond_2
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    goto :goto_2

    .line 124
    .end local v7    # "in":Ljava/io/InputStream;
    .end local v9    # "read":Ljava/io/BufferedReader;
    .end local v10    # "reader":Lorg/json/JSONObject;
    .end local v11    # "status":I
    .end local v12    # "str":Ljava/lang/StringBuilder;
    .end local v13    # "url":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 125
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/example/ccc/connectedcarcompany/ShopActivity$GetCars;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 132
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 94
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/example/ccc/connectedcarcompany/ShopActivity$GetCars;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
