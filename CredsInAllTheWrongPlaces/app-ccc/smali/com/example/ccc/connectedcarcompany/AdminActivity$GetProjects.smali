.class public Lcom/example/ccc/connectedcarcompany/AdminActivity$GetProjects;
.super Landroid/os/AsyncTask;
.source "AdminActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/ccc/connectedcarcompany/AdminActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetProjects"
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
.field final synthetic this$0:Lcom/example/ccc/connectedcarcompany/AdminActivity;


# direct methods
.method public constructor <init>(Lcom/example/ccc/connectedcarcompany/AdminActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/ccc/connectedcarcompany/AdminActivity;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/example/ccc/connectedcarcompany/AdminActivity$GetProjects;->this$0:Lcom/example/ccc/connectedcarcompany/AdminActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 18
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 79
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v10, "roles":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/example/ccc/connectedcarcompany/AdminActivity$GetProjects;->this$0:Lcom/example/ccc/connectedcarcompany/AdminActivity;

    invoke-static {v14}, Lcom/example/ccc/connectedcarcompany/AdminActivity;->access$100(Lcom/example/ccc/connectedcarcompany/AdminActivity;)[Ljava/lang/String;

    move-result-object v15

    array-length v0, v15

    move/from16 v16, v0

    const/4 v14, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_0

    aget-object v9, v15, v14

    .line 81
    .local v9, "role":Ljava/lang/String;
    const-string v17, "&roles[]="

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 83
    .end local v9    # "role":Ljava/lang/String;
    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "https://c3.metacorp.us/androidapp/api/active_experiments.php?token="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/example/ccc/connectedcarcompany/AdminActivity$GetProjects;->this$0:Lcom/example/ccc/connectedcarcompany/AdminActivity;

    invoke-static {v15}, Lcom/example/ccc/connectedcarcompany/AdminActivity;->access$000(Lcom/example/ccc/connectedcarcompany/AdminActivity;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 84
    .local v13, "url":Ljava/lang/String;
    new-instance v14, Ljava/net/URL;

    invoke-direct {v14, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 85
    .local v6, "in":Ljava/io/InputStream;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 86
    .local v7, "read":Ljava/io/BufferedReader;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, ""

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .local v12, "str":Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Lcom/example/ccc/connectedcarcompany/AdminActivity$GetProjects$$Lambda$0;->get$Lambda(Ljava/lang/StringBuilder;)Ljava/util/function/Consumer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 88
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v8, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 89
    .local v8, "reader":Lorg/json/JSONObject;
    const-string v14, "status"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 90
    .local v11, "status":I
    const/16 v14, 0xc9

    if-ne v11, v14, :cond_2

    .line 91
    const-string v14, "experiments"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 92
    .local v4, "experiments":Lorg/json/JSONObject;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v14, ""

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .local v2, "exp":Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v14

    if-gt v5, v14, :cond_1

    .line 94
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 95
    .local v3, "experiment":Lorg/json/JSONObject;
    const-string v14, "description"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 97
    .end local v3    # "experiment":Lorg/json/JSONObject;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/example/ccc/connectedcarcompany/AdminActivity$GetProjects;->this$0:Lcom/example/ccc/connectedcarcompany/AdminActivity;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/example/ccc/connectedcarcompany/AdminActivity;->access$302(Lcom/example/ccc/connectedcarcompany/AdminActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 106
    .end local v2    # "exp":Ljava/lang/StringBuilder;
    .end local v4    # "experiments":Lorg/json/JSONObject;
    .end local v5    # "i":I
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v7    # "read":Ljava/io/BufferedReader;
    .end local v8    # "reader":Lorg/json/JSONObject;
    .end local v10    # "roles":Ljava/lang/StringBuilder;
    .end local v11    # "status":I
    .end local v12    # "str":Ljava/lang/StringBuilder;
    .end local v13    # "url":Ljava/lang/String;
    :goto_2
    return-object v14

    .line 101
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v7    # "read":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Lorg/json/JSONObject;
    .restart local v10    # "roles":Ljava/lang/StringBuilder;
    .restart local v11    # "status":I
    .restart local v12    # "str":Ljava/lang/StringBuilder;
    .restart local v13    # "url":Ljava/lang/String;
    :cond_2
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    goto :goto_2

    .line 104
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v7    # "read":Ljava/io/BufferedReader;
    .end local v8    # "reader":Lorg/json/JSONObject;
    .end local v10    # "roles":Ljava/lang/StringBuilder;
    .end local v11    # "status":I
    .end local v12    # "str":Ljava/lang/StringBuilder;
    .end local v13    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/example/ccc/connectedcarcompany/AdminActivity$GetProjects;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 112
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/ccc/connectedcarcompany/AdminActivity$GetProjects;->this$0:Lcom/example/ccc/connectedcarcompany/AdminActivity;

    invoke-static {v0}, Lcom/example/ccc/connectedcarcompany/AdminActivity;->access$400(Lcom/example/ccc/connectedcarcompany/AdminActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/example/ccc/connectedcarcompany/AdminActivity$GetProjects;->this$0:Lcom/example/ccc/connectedcarcompany/AdminActivity;

    invoke-static {v1}, Lcom/example/ccc/connectedcarcompany/AdminActivity;->access$300(Lcom/example/ccc/connectedcarcompany/AdminActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 75
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/example/ccc/connectedcarcompany/AdminActivity$GetProjects;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
