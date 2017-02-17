.class final Lcom/android/server/pm/Policy;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Policy$1;,
        Lcom/android/server/pm/Policy$PolicyBuilder;
    }
.end annotation


# instance fields
.field allowCategory:Ljava/lang/String;

.field bbcallowCategory:Ljava/lang/String;

.field bbccategory:I

.field category:I

.field isContainerApp:Z

.field private mCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultStanza:Z

.field mPkgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSeinfo:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 2796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2797
    iput-object v1, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    .line 2798
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    .line 2799
    iput v2, p0, Lcom/android/server/pm/Policy;->category:I

    .line 2800
    iput v2, p0, Lcom/android/server/pm/Policy;->bbccategory:I

    .line 2801
    iput-object v1, p0, Lcom/android/server/pm/Policy;->allowCategory:Ljava/lang/String;

    .line 2802
    iput-object v1, p0, Lcom/android/server/pm/Policy;->bbcallowCategory:Ljava/lang/String;

    .line 2803
    iput-boolean v3, p0, Lcom/android/server/pm/Policy;->isContainerApp:Z

    .line 2804
    iput-boolean v3, p0, Lcom/android/server/pm/Policy;->mDefaultStanza:Z

    .line 2805
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;

    .line 2806
    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/Policy$PolicyBuilder;)V
    .locals 1
    .param p1, "builder"    # Lcom/android/server/pm/Policy$PolicyBuilder;

    .prologue
    .line 2810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2811
    # getter for: Lcom/android/server/pm/Policy$PolicyBuilder;->mSeinfo:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->access$000(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    .line 2812
    # getter for: Lcom/android/server/pm/Policy$PolicyBuilder;->mDefaultStanza:Z
    invoke-static {p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->access$100(Lcom/android/server/pm/Policy$PolicyBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/Policy;->mDefaultStanza:Z

    .line 2813
    # getter for: Lcom/android/server/pm/Policy$PolicyBuilder;->mCerts:Ljava/util/Set;
    invoke-static {p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->access$200(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;

    .line 2814
    # getter for: Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->access$300(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    .line 2815
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/Policy$PolicyBuilder;Lcom/android/server/pm/Policy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/Policy$PolicyBuilder;
    .param p2, "x1"    # Lcom/android/server/pm/Policy$1;

    .prologue
    .line 2784
    invoke-direct {p0, p1}, Lcom/android/server/pm/Policy;-><init>(Lcom/android/server/pm/Policy$PolicyBuilder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/pm/Policy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/Policy;

    .prologue
    .line 2784
    iget-boolean v0, p0, Lcom/android/server/pm/Policy;->mDefaultStanza:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/Policy;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/Policy;

    .prologue
    .line 2784
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method checkPolicy(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2837
    iget-object v1, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2838
    .local v0, "seinfoValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2842
    .end local v0    # "seinfoValue":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "seinfoValue":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    goto :goto_0
.end method

.method public getInnerPackages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2880
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    return-object v0
.end method

.method public getMatchedSeinfo(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;
    .locals 4
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 2947
    iget-boolean v2, p0, Lcom/android/server/pm/Policy;->mDefaultStanza:Z

    if-nez v2, :cond_2

    .line 2949
    iget-object v2, p0, Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/Signature;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    .line 2950
    .local v0, "certs":[Landroid/content/pm/Signature;
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v0, v2}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2951
    const/4 v1, 0x0

    .line 2963
    .end local v0    # "certs":[Landroid/content/pm/Signature;
    :cond_0
    :goto_0
    return-object v1

    .line 2956
    .restart local v0    # "certs":[Landroid/content/pm/Signature;
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2957
    .local v1, "seinfoValue":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2963
    .end local v0    # "certs":[Landroid/content/pm/Signature;
    .end local v1    # "seinfoValue":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    goto :goto_0
.end method

.method getSeinfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2822
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatures()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2852
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;

    return-object v0
.end method

.method public hasGlobalSeinfo()Z
    .locals 1

    .prologue
    .line 2889
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInnerPackages()Z
    .locals 1

    .prologue
    .line 2870
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultStanza()Z
    .locals 1

    .prologue
    .line 2861
    iget-boolean v0, p0, Lcom/android/server/pm/Policy;->mDefaultStanza:Z

    return v0
.end method

.method isValid()Z
    .locals 1

    .prologue
    .line 2832
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method putPkg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "seinfoValue"    # Ljava/lang/String;

    .prologue
    .line 2826
    iget-object v0, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2827
    return-void
.end method

.method putSeinfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "seinfoValue"    # Ljava/lang/String;

    .prologue
    .line 2818
    iput-object p1, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    .line 2819
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 2894
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2895
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-boolean v4, p0, Lcom/android/server/pm/Policy;->mDefaultStanza:Z

    if-eqz v4, :cond_0

    .line 2896
    const-string/jumbo v4, "defaultStanza=true "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2899
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/Policy;->mCerts:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/Signature;

    .line 2900
    .local v0, "cert":Landroid/content/pm/Signature;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cert="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0xb

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2903
    .end local v0    # "cert":Landroid/content/pm/Signature;
    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 2904
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "seinfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/Policy;->mSeinfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2907
    :cond_2
    iget-object v4, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2908
    .local v2, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/android/server/pm/Policy;->mPkgMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2911
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method