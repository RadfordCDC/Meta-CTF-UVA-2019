.class public Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;
.super Landroid/os/AsyncTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/ccc/connectedcarcompany/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserLoginTask"
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
.field private final mPassword:Ljava/lang/String;

.field private final musername:Ljava/lang/String;

.field final synthetic this$0:Lcom/example/ccc/connectedcarcompany/LoginActivity;


# direct methods
.method constructor <init>(Lcom/example/ccc/connectedcarcompany/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/ccc/connectedcarcompany/LoginActivity;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;->this$0:Lcom/example/ccc/connectedcarcompany/LoginActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 155
    iput-object p2, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;->musername:Ljava/lang/String;

    .line 156
    iput-object p3, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;->mPassword:Ljava/lang/String;

    .line 157
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v11, 0x0

    .line 163
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "https://c3.metacorp.us/androidapp/api/login.php?username="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;->musername:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&password="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;->mPassword:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 164
    .local v8, "url":Ljava/lang/String;
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 165
    .local v2, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 166
    .local v3, "read":Ljava/io/BufferedReader;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .local v7, "str":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask$$Lambda$0;->get$Lambda(Ljava/lang/StringBuilder;)Ljava/util/function/Consumer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 168
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 169
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 170
    .local v4, "reader":Lorg/json/JSONObject;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 171
    const-string v9, "status"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 172
    .local v6, "status":I
    const/16 v9, 0xc8

    if-ne v6, v9, :cond_1

    .line 173
    iget-object v9, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;->this$0:Lcom/example/ccc/connectedcarcompany/LoginActivity;

    const-string v10, "user_id"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v9, v10}, Lcom/example/ccc/connectedcarcompany/LoginActivity;->access$202(Lcom/example/ccc/connectedcarcompany/LoginActivity;I)I

    .line 174
    const-string v9, "roles"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 175
    .local v5, "roles":Lorg/json/JSONArray;
    iget-object v9, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;->this$0:Lcom/example/ccc/connectedcarcompany/LoginActivity;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/example/ccc/connectedcarcompany/LoginActivity;->access$302(Lcom/example/ccc/connectedcarcompany/LoginActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 176
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_0

    .line 177
    iget-object v9, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;->this$0:Lcom/example/ccc/connectedcarcompany/LoginActivity;

    invoke-static {v9}, Lcom/example/ccc/connectedcarcompany/LoginActivity;->access$300(Lcom/example/ccc/connectedcarcompany/LoginActivity;)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    :cond_0
    iget-object v9, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;->this$0:Lcom/example/ccc/connectedcarcompany/LoginActivity;

    const-string v10, "token"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/example/ccc/connectedcarcompany/LoginActivity;->access$402(Lcom/example/ccc/connectedcarcompany/LoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 187
    .end local v1    # "i":I
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "read":Ljava/io/BufferedReader;
    .end local v4    # "reader":Lorg/json/JSONObject;
    .end local v5    # "roles":Lorg/json/JSONArray;
    .end local v6    # "status":I
    .end local v7    # "str":Ljava/lang/StringBuilder;
    .end local v8    # "url":Ljava/lang/String;
    :goto_1
    return-object v9

    .line 183
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "read":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Lorg/json/JSONObject;
    .restart local v6    # "status":I
    .restart local v7    # "str":Ljava/lang/StringBuilder;
    .restart local v8    # "url":Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_1

    .line 185
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "read":Ljava/io/BufferedReader;
    .end local v4    # "reader":Lorg/json/JSONObject;
    .end local v6    # "status":I
    .end local v7    # "str":Ljava/lang/StringBuilder;
    .end local v8    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;->this$0:Lcom/example/ccc/connectedcarcompany/LoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/example/ccc/connectedcarcompany/LoginActivity;->access$502(Lcom/example/ccc/connectedcarcompany/LoginActivity;Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;)Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;

    .line 212
    iget-object v0, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;->this$0:Lcom/example/ccc/connectedcarcompany/LoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/example/ccc/connectedcarcompany/LoginActivity;->access$600(Lcom/example/ccc/connectedcarcompany/LoginActivity;Z)V

    .line 213
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 193
    iget-object v1, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;->this$0:Lcom/example/ccc/connectedcarcompany/LoginActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/example/ccc/connectedcarcompany/LoginActivity;->access$502(Lcom/example/ccc/connectedcarcompany/LoginActivity;Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;)Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;

    .line 194
    iget-object v1, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;->this$0:Lcom/example/ccc/connectedcarcompany/LoginActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/example/ccc/connectedcarcompany/LoginActivity;->access$600(Lcom/example/ccc/connectedcarcompany/LoginActivity;Z)V

    .line 195
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 196
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "HERE"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 198
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;->this$0:Lcom/example/ccc/connectedcarcompany/LoginActivity;

    invoke-virtual {v1}, Lcom/example/ccc/connectedcarcompany/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/example/ccc/connectedcarcompany/ShopActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "user_token"

    iget-object v2, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;->this$0:Lcom/example/ccc/connectedcarcompany/LoginActivity;

    invoke-static {v2}, Lcom/example/ccc/connectedcarcompany/LoginActivity;->access$400(Lcom/example/ccc/connectedcarcompany/LoginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v1, "user_roles"

    iget-object v2, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;->this$0:Lcom/example/ccc/connectedcarcompany/LoginActivity;

    invoke-static {v2}, Lcom/example/ccc/connectedcarcompany/LoginActivity;->access$300(Lcom/example/ccc/connectedcarcompany/LoginActivity;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;->this$0:Lcom/example/ccc/connectedcarcompany/LoginActivity;

    invoke-static {v2}, Lcom/example/ccc/connectedcarcompany/LoginActivity;->access$200(Lcom/example/ccc/connectedcarcompany/LoginActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    iget-object v1, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;->this$0:Lcom/example/ccc/connectedcarcompany/LoginActivity;

    invoke-virtual {v1, v0}, Lcom/example/ccc/connectedcarcompany/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 207
    .end local v0    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;->this$0:Lcom/example/ccc/connectedcarcompany/LoginActivity;

    invoke-static {v1}, Lcom/example/ccc/connectedcarcompany/LoginActivity;->access$700(Lcom/example/ccc/connectedcarcompany/LoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;->this$0:Lcom/example/ccc/connectedcarcompany/LoginActivity;

    const v3, 0x7f0e002f

    invoke-virtual {v2, v3}, Lcom/example/ccc/connectedcarcompany/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v1, p0, Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;->this$0:Lcom/example/ccc/connectedcarcompany/LoginActivity;

    invoke-static {v1}, Lcom/example/ccc/connectedcarcompany/LoginActivity;->access$700(Lcom/example/ccc/connectedcarcompany/LoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 149
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/example/ccc/connectedcarcompany/LoginActivity$UserLoginTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
