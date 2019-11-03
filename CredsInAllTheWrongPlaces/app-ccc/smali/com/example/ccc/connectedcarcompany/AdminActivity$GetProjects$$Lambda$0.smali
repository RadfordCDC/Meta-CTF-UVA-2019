.class final synthetic Lcom/example/ccc/connectedcarcompany/AdminActivity$GetProjects$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final arg$1:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/ccc/connectedcarcompany/AdminActivity$GetProjects$$Lambda$0;->arg$1:Ljava/lang/StringBuilder;

    return-void
.end method

.method static get$Lambda(Ljava/lang/StringBuilder;)Ljava/util/function/Consumer;
    .locals 1

    new-instance v0, Lcom/example/ccc/connectedcarcompany/AdminActivity$GetProjects$$Lambda$0;

    invoke-direct {v0, p0}, Lcom/example/ccc/connectedcarcompany/AdminActivity$GetProjects$$Lambda$0;-><init>(Ljava/lang/StringBuilder;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/example/ccc/connectedcarcompany/AdminActivity$GetProjects$$Lambda$0;->arg$1:Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
