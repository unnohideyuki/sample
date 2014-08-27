.class public Lcom/example/sample/SampleActivity;
.super Landroid/app/Activity;
.source "SampleActivity.java"


# static fields
.field static tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static print(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 53
    sget-object v0, Lcom/example/sample/SampleActivity;->tv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method

.method public static sample()V
    .registers 2

    .prologue
    .line 25
    sget-object v0, Lcom/example/sample/SampleActivity;->tv:Landroid/widget/TextView;

    const-string v1, "Hello, World!\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    return-void
.end method

.method public static sample2()V
    .registers 4

    .prologue
    const/16 v3, 0xa

    .line 30
    new-array v0, v3, [Ljava/lang/Object;

    .line 32
    .local v0, "a":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v3, :cond_11

    .line 33
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 36
    :cond_11
    invoke-static {v0}, Lcom/example/sample/SampleActivity;->sample3([Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public static sample3([Ljava/lang/Object;)V
    .registers 6
    .param p0, "a"    # [Ljava/lang/Object;

    .prologue
    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v3, 0x64

    if-ge v0, v3, :cond_9

    .line 43
    const/16 v3, 0x8

    if-ne v0, v3, :cond_a

    .line 49
    :cond_9
    return-void

    .line 45
    :cond_a
    aget-object v2, p0, v0

    check-cast v2, Ljava/lang/Integer;

    .line 46
    .local v2, "o":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 47
    .local v1, "n":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/example/sample/SampleActivity;->print(Ljava/lang/String;)V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/example/sample/SampleActivity;->setContentView(I)V

    .line 18
    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0}, Lcom/example/sample/SampleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/example/sample/SampleActivity;->tv:Landroid/widget/TextView;

    .line 19
    invoke-static {}, Lcom/example/sample/SampleActivity;->sample()V

    .line 20
    invoke-static {}, Lcom/example/sample/SampleActivity;->sample2()V

    .line 21
    return-void
.end method
