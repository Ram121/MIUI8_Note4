.class public Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
.super Ljava/lang/Object;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MumXmlDataParser"
.end annotation


# static fields
.field private static final APPLICATION:Ljava/lang/String; = "application"

.field private static final APPLICATIONONLY:Ljava/lang/String; = "applicationonly"

.field private static final ATTR_ALLOW:Ljava/lang/String; = "allow"

.field private static final ATTR_DISALLOW:Ljava/lang/String; = "disallow"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_REENABLE:Ljava/lang/String; = "reenable"

.field private static final ATTR_REMOVE:Ljava/lang/String; = "remove"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final BADGEPOLICY:Ljava/lang/String; = "BadgePolicy"

.field private static final CLONE_APPLICATION:Ljava/lang/String; = "cloneapplication"

.field private static final CLONE_DISABLE_PKG:Ljava/lang/String; = "clonedisablePkg"

.field private static final COLUMN:Ljava/lang/String; = "column"

.field private static final DISABLE_PKG:Ljava/lang/String; = "disablePkg"

.field private static final DISALLOW:Ljava/lang/String; = "disallow"

.field private static final FORBIDDEN_STRING:Ljava/lang/String; = "forbiddenString"

.field private static final FOTA_DISABLE_PKG:Ljava/lang/String; = "fotadisablePkg"

.field private static final GROUPPKG:Ljava/lang/String; = "groupPkg"

.field private static final GROUPPREFIX:Ljava/lang/String; = "group_"

.field private static final KNOXCORE:Ljava/lang/String; = "knoxCore"

.field private static final PACKAGE:Ljava/lang/String; = "package"

.field private static final PERSONA:Ljava/lang/String; = "persona"

.field private static final POLICY:Ljava/lang/String; = "policy"

.field private static final PROPERTY:Ljava/lang/String; = "property"

.field private static final PROTECTED_PKG:Ljava/lang/String; = "protectedPkg"

.field private static final PROVIDER_TAG:Ljava/lang/String; = "provider"

.field private static final REPLACE:Ljava/lang/String; = "replace"

.field private static final ROW:Ljava/lang/String; = "row"

.field private static final TABLE:Ljava/lang/String; = "table"

.field private static final TAG:Ljava/lang/String; = "MumXmlDataParser"


# instance fields
.field private final DEBUG:Z

.field fotaCloneAppDisableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fotaCloneAppInstallList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fotaCloneAppReenableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fotaCloneAppRemoveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mParser:Lorg/xmlpull/v1/XmlPullParser;

.field private mTypeListLocal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v1, 0x0

    .line 5440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->DEBUG:Z

    .line 5432
    iput-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    .line 5433
    iput-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    .line 5434
    iput-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppRemoveList:Ljava/util/List;

    .line 5435
    iput-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppReenableList:Ljava/util/List;

    .line 5438
    iput-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    .line 5441
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 5442
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    .line 5443
    return-void
.end method

.method private containsProductName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "productName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 5478
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 5487
    :cond_0
    :goto_0
    return v5

    .line 5481
    :cond_1
    const-string v6, " "

    const-string v7, ""

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 5482
    .local v4, "target":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 5483
    .local v3, "oper":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5484
    const/4 v5, 0x1

    goto :goto_0

    .line 5482
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getFotaCloneDisableApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5448
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    return-object v0
.end method

.method public getFotaCloneInstallApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5454
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    return-object v0
.end method

.method public getFotaCloneReenableApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5466
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppReenableList:Ljava/util/List;

    return-object v0
.end method

.method public getFotaCloneRemoveApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5460
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppRemoveList:Ljava/util/List;

    return-object v0
.end method

.method public getTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5470
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    return-object v0
.end method

.method public isDefaultLWCModel()Z
    .locals 4

    .prologue
    .line 5491
    const/4 v1, 0x0

    .line 5493
    .local v1, "result":Z
    :try_start_0
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v2

    .line 5494
    .local v2, "version":Landroid/os/PersonaManager$KnoxContainerVersion;
    sget-object v3, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v2, v3}, Landroid/os/PersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ltz v3, :cond_1

    const/4 v0, 0x1

    .line 5495
    .local v0, "isKnoxVersionPostZero":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 5496
    const/4 v1, 0x1

    .line 5501
    .end local v0    # "isKnoxVersionPostZero":Z
    .end local v2    # "version":Landroid/os/PersonaManager$KnoxContainerVersion;
    :cond_0
    :goto_1
    return v1

    .line 5494
    .restart local v2    # "version":Landroid/os/PersonaManager$KnoxContainerVersion;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 5499
    .end local v2    # "version":Landroid/os/PersonaManager$KnoxContainerVersion;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public mergeKnoxConfigurationTypes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6335
    .local p1, "origTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    .local p2, "customTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    const/4 v4, 0x0

    .line 6336
    .local v4, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 6338
    .local v1, "customName":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 6339
    :cond_0
    const-string v6, "MumXmlDataParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mergeKnoxConfigurationTypes: customTypeList == null or empty: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6366
    :cond_1
    return-object p1

    .line 6343
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 6344
    .local v5, "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 6345
    .local v0, "custRow":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v4

    .line 6346
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v1

    .line 6347
    if-eqz v4, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 6350
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 6352
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6355
    :cond_5
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 6357
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6360
    :cond_6
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 6362
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public readFromCustomXml()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6198
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 6201
    .local v11, "rowsList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 6202
    .local v4, "event":I
    const/4 v10, 0x0

    .line 6203
    .local v10, "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    const/4 v13, 0x0

    .local v13, "value":Ljava/lang/String;
    const/4 v6, 0x0

    .line 6204
    .local v6, "nameAttribute":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 6206
    .local v7, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v14, "ro.product.name"

    const-string v15, "NONE"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 6207
    .local v8, "productName":Ljava/lang/String;
    :goto_0
    const/4 v14, 0x1

    if-eq v4, v14, :cond_2

    .line 6208
    packed-switch v4, :pswitch_data_0

    .line 6325
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    .line 6210
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 6211
    .local v12, "tag":Ljava/lang/String;
    const-string/jumbo v14, "row"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 6214
    new-instance v10, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .end local v10    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct {v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;-><init>()V

    .restart local v10    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    goto :goto_1

    .line 6216
    :cond_1
    const-string v14, "column"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 6217
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string/jumbo v16, "value"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 6218
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string/jumbo v16, "name"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6221
    const-string v14, "Name"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    if-eqz v10, :cond_3

    .line 6223
    invoke-virtual {v10, v13}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6327
    .end local v1    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "event":I
    .end local v5    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "nameAttribute":Ljava/lang/String;
    .end local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "productName":Ljava/lang/String;
    .end local v9    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v12    # "tag":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 6328
    .local v3, "e":Ljava/lang/Exception;
    const-string v14, "MumXmlDataParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "readFromCustomXml EX:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6331
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v11

    .line 6225
    .restart local v1    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "event":I
    .restart local v5    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "nameAttribute":Ljava/lang/String;
    .restart local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "productName":Ljava/lang/String;
    .restart local v9    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v12    # "tag":Ljava/lang/String;
    .restart local v13    # "value":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v14, "AppInstallList"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 6227
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 6229
    :cond_4
    const-string v14, "ProtectedPkgList"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 6231
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .restart local v9    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 6233
    :cond_5
    const-string v14, "GoogleAppsPkgList"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 6235
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .restart local v5    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 6239
    :cond_6
    const-string v14, "application"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 6240
    if-eqz v1, :cond_0

    .line 6241
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string/jumbo v16, "name"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 6245
    const-string v14, "DCM"

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->readOMCSalesCode()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    const-string v14, "com.android.contacts"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 6246
    const-string v13, "com.samsung.contacts"

    .line 6248
    :cond_7
    if-eqz v13, :cond_0

    .line 6249
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6252
    :cond_8
    const-string/jumbo v14, "protectedPkg"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 6254
    if-eqz v9, :cond_0

    .line 6255
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string/jumbo v16, "name"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 6258
    if-eqz v13, :cond_0

    .line 6259
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6262
    :cond_9
    const-string/jumbo v14, "disablePkg"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 6264
    if-eqz v5, :cond_0

    .line 6265
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string/jumbo v16, "name"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 6268
    if-eqz v13, :cond_0

    .line 6269
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6272
    :cond_a
    const-string/jumbo v14, "knoxCore"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 6274
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .restart local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 6276
    :cond_b
    const-string/jumbo v14, "package"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 6278
    if-eqz v7, :cond_0

    .line 6279
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string/jumbo v16, "name"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 6282
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 6283
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string v16, "allow"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6284
    .local v2, "content":Ljava/lang/String;
    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 6285
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v15, 0x0

    const-string/jumbo v16, "disallow"

    invoke-interface/range {v14 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6286
    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 6287
    :cond_d
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6296
    .end local v2    # "content":Ljava/lang/String;
    .end local v12    # "tag":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 6297
    .restart local v12    # "tag":Ljava/lang/String;
    const-string/jumbo v14, "row"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11

    if-eqz v10, :cond_11

    .line 6299
    if-eqz v1, :cond_e

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_e

    .line 6300
    invoke-virtual {v10, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAppInstallationList(Ljava/util/List;)V

    .line 6302
    :cond_e
    if-eqz v9, :cond_f

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_f

    .line 6303
    invoke-virtual {v10, v9}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setProtectedPackageList(Ljava/util/List;)V

    .line 6305
    :cond_f
    if-eqz v5, :cond_10

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_10

    .line 6306
    invoke-virtual {v10, v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setGoogleAppsList(Ljava/util/List;)V

    .line 6308
    :cond_10
    invoke-virtual {v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->dumpState()V

    .line 6309
    const/4 v1, 0x0

    .line 6310
    const/4 v9, 0x0

    .line 6311
    const/4 v5, 0x0

    .line 6312
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6314
    :cond_11
    const-string/jumbo v14, "knoxCore"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 6316
    if-eqz v7, :cond_12

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_12

    .line 6317
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2700()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6319
    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 6208
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public readFromXml()V
    .locals 43

    .prologue
    .line 5507
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v13

    .line 5508
    .local v13, "event":I
    const/16 v35, 0x0

    .line 5509
    .local v35, "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    const/16 v19, 0x0

    .line 5510
    .local v19, "intVal":I
    const/4 v10, 0x0

    .line 5511
    .local v10, "booleanVal":Z
    const/16 v21, 0x0

    .line 5512
    .local v21, "isRCPDataSettings":Z
    const/16 v39, 0x0

    .local v39, "value":Ljava/lang/String;
    const/16 v24, 0x0

    .line 5513
    .local v24, "nameAttribute":Ljava/lang/String;
    const/16 v28, 0x0

    .line 5514
    .local v28, "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    .local v14, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 5515
    .local v7, "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v23, 0x0

    .local v23, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v32, 0x0

    .local v32, "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .local v15, "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 5516
    .local v4, "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 5517
    .local v5, "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v27, 0x0

    .line 5518
    .local v27, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/16 v29, 0x0

    .line 5519
    .local v29, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 5520
    .local v9, "badgePolicylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v40, "ro.product.name"

    const-string v41, "NONE"

    invoke-static/range {v40 .. v41}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 5521
    .local v30, "productName":Ljava/lang/String;
    :goto_0
    const/16 v40, 0x1

    move/from16 v0, v40

    if-eq v13, v0, :cond_7

    .line 5522
    packed-switch v13, :pswitch_data_0

    .line 6190
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    goto :goto_0

    .line 5524
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v36

    .line 5525
    .local v36, "tag":Ljava/lang/String;
    const-string/jumbo v40, "row"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_6

    .line 5528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "type"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5529
    sget-object v40, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->LIGHTWEIGHT:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v40 .. v40}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_1

    .line 5530
    new-instance v35, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    .end local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;-><init>()V

    .restart local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    goto :goto_1

    .line 5531
    :cond_1
    sget-object v40, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->KIOSK:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v40 .. v40}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_2

    .line 5532
    new-instance v35, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    .end local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;-><init>()V

    .restart local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    goto :goto_1

    .line 5533
    :cond_2
    sget-object v40, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->BBC:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v40 .. v40}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_3

    .line 5534
    new-instance v35, Lcom/sec/enterprise/knox/container/BBCConfigurationType;

    .end local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/BBCConfigurationType;-><init>()V

    .restart local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    goto :goto_1

    .line 5535
    :cond_3
    sget-object v40, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->LAUNCHER:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v40 .. v40}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_4

    .line 5536
    new-instance v35, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .end local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;-><init>()V

    .restart local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    goto/16 :goto_1

    .line 5538
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->isDefaultLWCModel()Z

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_5

    .line 5539
    new-instance v35, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    .end local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;-><init>()V

    .restart local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    goto/16 :goto_1

    .line 5542
    :cond_5
    new-instance v35, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .end local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;-><init>()V

    .restart local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    goto/16 :goto_1

    .line 5545
    :cond_6
    const-string v40, "column"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_4f

    .line 5546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "value"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 5550
    const-string v40, "Name"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_8

    if-eqz v35, :cond_8

    .line 5552
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 6192
    .end local v4    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "badgePolicylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "booleanVal":Z
    .end local v13    # "event":I
    .end local v14    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "intVal":I
    .end local v21    # "isRCPDataSettings":Z
    .end local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "nameAttribute":Ljava/lang/String;
    .end local v27    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v28    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v29    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v30    # "productName":Ljava/lang/String;
    .end local v32    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v36    # "tag":Ljava/lang/String;
    .end local v39    # "value":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 6193
    .local v12, "e":Ljava/lang/Exception;
    const-string v40, "MumXmlDataParser"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "readFromXml EX:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6195
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_7
    return-void

    .line 5554
    .restart local v4    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "badgePolicylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "booleanVal":Z
    .restart local v13    # "event":I
    .restart local v14    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "intVal":I
    .restart local v21    # "isRCPDataSettings":Z
    .restart local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "nameAttribute":Ljava/lang/String;
    .restart local v27    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v28    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v29    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v30    # "productName":Ljava/lang/String;
    .restart local v32    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v35    # "row":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v36    # "tag":Ljava/lang/String;
    .restart local v39    # "value":Ljava/lang/String;
    :cond_8
    :try_start_1
    const-string v40, "UID"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_9

    .line 5556
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5557
    if-ltz v19, :cond_0

    if-eqz v35, :cond_0

    .line 5558
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAdminUid(I)V

    goto/16 :goto_1

    .line 5560
    :cond_9
    const-string v40, "UserID"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_a

    .line 5562
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5563
    const/16 v40, -0x1

    move/from16 v0, v19

    move/from16 v1, v40

    if-lt v0, v1, :cond_0

    if-eqz v35, :cond_0

    .line 5564
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setUserId(I)V

    goto/16 :goto_1

    .line 5566
    :cond_a
    const-string v40, "PersonaIDs"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_b

    .line 5568
    new-instance v28, Ljava/util/ArrayList;

    .end local v28    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .restart local v28    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto/16 :goto_1

    .line 5570
    :cond_b
    const-string v40, "Version"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_c

    .line 5571
    if-eqz v35, :cond_0

    .line 5572
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5573
    :cond_c
    const-string v40, "MaximumTimeToLock"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_d

    .line 5575
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5576
    if-lez v19, :cond_0

    if-eqz v35, :cond_0

    .line 5577
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setMaximumTimeToLock(I)V

    goto/16 :goto_1

    .line 5579
    :cond_d
    const-string v40, "KeyguardDisabledFeatures"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_e

    .line 5580
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5581
    if-ltz v19, :cond_0

    if-eqz v35, :cond_0

    .line 5582
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setKeyguardDisabledFeatures(I)V

    goto/16 :goto_1

    .line 5584
    :cond_e
    const-string v40, "DefaultContainerLayout"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_f

    .line 5585
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5587
    if-lez v19, :cond_0

    if-eqz v35, :cond_0

    .line 5588
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setContainerLayout(I)V

    goto/16 :goto_1

    .line 5590
    :cond_f
    const-string v40, "LayoutSwitchingAllowed"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_10

    .line 5591
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5593
    if-eqz v35, :cond_0

    .line 5594
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->allowLayoutSwitching(Z)V

    goto/16 :goto_1

    .line 5596
    :cond_10
    const-string v40, "DefaultConfigType"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_11

    .line 5597
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5599
    if-eqz v35, :cond_0

    .line 5600
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setDefaultConfigType(Z)V

    goto/16 :goto_1

    .line 5603
    :cond_11
    const-string v40, "PasswordMinimumLength"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_12

    .line 5605
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5606
    if-lez v19, :cond_0

    if-eqz v35, :cond_0

    .line 5607
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumLength(I)V

    goto/16 :goto_1

    .line 5609
    :cond_12
    const-string v40, "PasswordMinimumNonLetters"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_13

    .line 5611
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5612
    if-lez v19, :cond_0

    if-eqz v35, :cond_0

    .line 5613
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumNonLetters(I)V

    goto/16 :goto_1

    .line 5615
    :cond_13
    const-string v40, "PasswordMinimumLetters"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_14

    .line 5617
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5618
    if-lez v19, :cond_0

    if-eqz v35, :cond_0

    .line 5619
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumLetters(I)V

    goto/16 :goto_1

    .line 5621
    :cond_14
    const-string v40, "PasswordMinimumNumeric"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_15

    .line 5623
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5624
    if-lez v19, :cond_0

    if-eqz v35, :cond_0

    .line 5625
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumNumeric(I)V

    goto/16 :goto_1

    .line 5627
    :cond_15
    const-string v40, "PasswordMinimumUpperCase"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_16

    .line 5629
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5630
    if-lez v19, :cond_0

    if-eqz v35, :cond_0

    .line 5631
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumUpperCase(I)V

    goto/16 :goto_1

    .line 5633
    :cond_16
    const-string v40, "PasswordMinimumLowerCase"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_17

    .line 5635
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5636
    if-lez v19, :cond_0

    if-eqz v35, :cond_0

    .line 5637
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumLowerCase(I)V

    goto/16 :goto_1

    .line 5639
    :cond_17
    const-string v40, "PasswordMinimumSymbols"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_18

    .line 5641
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5642
    if-lez v19, :cond_0

    if-eqz v35, :cond_0

    .line 5643
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordMinimumSymbols(I)V

    goto/16 :goto_1

    .line 5645
    :cond_18
    const-string v40, "PasswordQuality"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_19

    .line 5647
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5648
    if-ltz v19, :cond_0

    if-eqz v35, :cond_0

    .line 5649
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPasswordQuality(I)V

    goto/16 :goto_1

    .line 5651
    :cond_19
    const-string v40, "MaximumFailedPasswordsForWipe"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_1a

    .line 5653
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5654
    if-lez v19, :cond_0

    if-eqz v35, :cond_0

    .line 5655
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setMaximumFailedPasswordsForWipe(I)V

    goto/16 :goto_1

    .line 5657
    :cond_1a
    const-string v40, "MaximumCharacterOccurences"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_1b

    .line 5659
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5660
    if-lez v19, :cond_0

    if-eqz v35, :cond_0

    .line 5661
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setMaximumCharacterOccurences(I)V

    goto/16 :goto_1

    .line 5663
    :cond_1b
    const-string v40, "MaximumCharacterSequenceLength"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_1c

    .line 5665
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5666
    if-lez v19, :cond_0

    if-eqz v35, :cond_0

    .line 5667
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setMaximumCharacterSequenceLength(I)V

    goto/16 :goto_1

    .line 5669
    :cond_1c
    const-string v40, "MaximumNumericSequenceLength"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_1d

    .line 5671
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5672
    if-lez v19, :cond_0

    if-eqz v35, :cond_0

    .line 5673
    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setMaximumNumericSequenceLength(I)V

    goto/16 :goto_1

    .line 5675
    :cond_1d
    const-string v40, "SimplePasswordEnabled"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_1e

    if-eqz v35, :cond_1e

    .line 5677
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5678
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setSimplePasswordEnabled(Z)V

    goto/16 :goto_1

    .line 5680
    :cond_1e
    const-string v40, "MultifactorAuthEnabled"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_1f

    if-eqz v35, :cond_1f

    .line 5682
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5683
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->enforceMultifactorAuthentication(Z)V

    goto/16 :goto_1

    .line 5685
    :cond_1f
    const-string v40, "UserManaged"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_20

    if-eqz v35, :cond_20

    .line 5687
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5688
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setManagedType(Z)V

    goto/16 :goto_1

    .line 5690
    :cond_20
    const-string v40, "ForbiddenStrings"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_21

    .line 5692
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .restart local v14    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 5694
    :cond_21
    const-string v40, "AppInstallList"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_22

    .line 5696
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5698
    .restart local v6    # "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .restart local v7    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 5701
    :cond_22
    const-string v40, "ProtectedPkgList"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_23

    .line 5703
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .restart local v32    # "protectedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 5705
    :cond_23
    const-string v40, "GoogleAppsPkgList"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_24

    .line 5707
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .restart local v15    # "googleAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 5709
    :cond_24
    const-string v40, "FOTADisableAppsPkgList"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_25

    .line 5711
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5712
    .restart local v4    # "FOTADisableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .restart local v5    # "FOTAReenableAppsPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 5714
    :cond_25
    const-string v40, "AppInstallListForFotaClone"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_26

    .line 5717
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    .line 5718
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppRemoveList:Ljava/util/List;

    goto/16 :goto_1

    .line 5720
    :cond_26
    const-string v40, "AppDisableListForFotaClone"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_27

    .line 5723
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    .line 5724
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppReenableList:Ljava/util/List;

    goto/16 :goto_1

    .line 5726
    :cond_27
    const-string v40, "PatternRestriction"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_2a

    if-eqz v35, :cond_2a

    .line 5728
    if-eqz v39, :cond_28

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_29

    .line 5729
    :cond_28
    const/16 v39, 0x0

    .line 5731
    :cond_29
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setRequiredPasswordPattern(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5733
    :cond_2a
    const-string v40, "CustomBadgeIcon"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_2d

    if-eqz v35, :cond_2d

    .line 5735
    if-eqz v39, :cond_2b

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_2c

    .line 5736
    :cond_2b
    const/16 v39, 0x0

    .line 5738
    :cond_2c
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomBadgeIcon(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5740
    :cond_2d
    const-string v40, "CustomHomeScreenWallpaper"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_30

    if-eqz v35, :cond_30

    .line 5742
    if-eqz v39, :cond_2e

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_2f

    .line 5743
    :cond_2e
    const/16 v39, 0x0

    .line 5745
    :cond_2f
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomHomeScreenWallpaper(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5747
    :cond_30
    const-string v40, "CustomLockScreenWallpaper"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_33

    if-eqz v35, :cond_33

    .line 5749
    if-eqz v39, :cond_31

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_32

    .line 5750
    :cond_31
    const/16 v39, 0x0

    .line 5752
    :cond_32
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomLockScreenWallpaper(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5754
    :cond_33
    const-string v40, "CustomStatusLabel"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_36

    if-eqz v35, :cond_36

    .line 5756
    if-eqz v39, :cond_34

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_35

    .line 5757
    :cond_34
    const/16 v39, 0x0

    .line 5759
    :cond_35
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomStatusLabel(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5761
    :cond_36
    const-string v40, "CustomStatusIcon"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_39

    if-eqz v35, :cond_39

    .line 5763
    if-eqz v39, :cond_37

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_38

    .line 5764
    :cond_37
    const/16 v39, 0x0

    .line 5766
    :cond_38
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomStatusIcon(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5768
    :cond_39
    const-string v40, "FolderHeaderTitle"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_3c

    if-eqz v35, :cond_3c

    .line 5770
    if-eqz v39, :cond_3a

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_3b

    .line 5771
    :cond_3a
    const/16 v39, 0x0

    .line 5773
    :cond_3b
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_0

    .line 5774
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->setFolderHeaderTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5776
    :cond_3c
    const-string v40, "FolderHeaderIcon"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_3f

    if-eqz v35, :cond_3f

    .line 5778
    if-eqz v39, :cond_3d

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_3e

    .line 5779
    :cond_3d
    const/16 v39, 0x0

    .line 5781
    :cond_3e
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_0

    .line 5782
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->setFolderHeaderIcon(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5784
    :cond_3f
    const-string v40, "FolderDisabledChangeLayout"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_42

    if-eqz v35, :cond_42

    .line 5786
    if-eqz v39, :cond_40

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_41

    .line 5787
    :cond_40
    const/16 v39, 0x0

    .line 5789
    :cond_41
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_0

    .line 5790
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->setFolderDisabledChangeLayout(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5792
    :cond_42
    const-string v40, "RCPDataSettings"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_43

    .line 5794
    const/16 v21, 0x1

    .line 5795
    if-nez v23, :cond_0

    .line 5796
    new-instance v23, Ljava/util/ArrayList;

    .end local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .restart local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 5799
    :cond_43
    const-string v40, "RCPAllowChangeDataSettings"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_44

    .line 5801
    const/16 v21, 0x0

    .line 5802
    if-nez v23, :cond_0

    .line 5803
    new-instance v23, Ljava/util/ArrayList;

    .end local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .restart local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 5806
    :cond_44
    const-string v40, "RCPNotifSettings"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_45

    .line 5808
    if-nez v23, :cond_0

    .line 5809
    new-instance v23, Ljava/util/ArrayList;

    .end local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .restart local v23    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 5812
    :cond_45
    const-string v40, "AllowMultiwindowMode"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_46

    if-eqz v35, :cond_46

    .line 5814
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5815
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->allowMultiwindowMode(Z)V

    goto/16 :goto_1

    .line 5817
    :cond_46
    const-string v40, "AllowTaskManager"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_47

    if-eqz v35, :cond_47

    .line 5819
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5820
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->allowTaskManager(Z)V

    goto/16 :goto_1

    .line 5822
    :cond_47
    const-string v40, "AllowSettingsChanges"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_48

    if-eqz v35, :cond_48

    .line 5824
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5825
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_0

    .line 5826
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->allowSettingsChanges(Z)V

    goto/16 :goto_1

    .line 5828
    :cond_48
    const-string v40, "AllowStatusBarExpansion"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_49

    if-eqz v35, :cond_49

    .line 5830
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5831
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_0

    .line 5832
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->allowStatusBarExpansion(Z)V

    goto/16 :goto_1

    .line 5834
    :cond_49
    const-string v40, "AllowHomeKey"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_4a

    if-eqz v35, :cond_4a

    .line 5836
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5837
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_0

    .line 5838
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->allowHomeKey(Z)V

    goto/16 :goto_1

    .line 5840
    :cond_4a
    const-string v40, "AllowClearAllNotification"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_4b

    if-eqz v35, :cond_4b

    .line 5842
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5843
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_0

    .line 5844
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->allowClearAllNotification(Z)V

    goto/16 :goto_1

    .line 5846
    :cond_4b
    const-string v40, "HideSystemBar"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_4c

    if-eqz v35, :cond_4c

    .line 5848
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5849
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_0

    .line 5850
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->setHideSystemBar(Z)V

    goto/16 :goto_1

    .line 5852
    :cond_4c
    const-string v40, "WipeRecentTasks"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_4d

    if-eqz v35, :cond_4d

    .line 5854
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5855
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v40, v0

    if-eqz v40, :cond_0

    .line 5856
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->setWipeRecentTasks(Z)V

    goto/16 :goto_1

    .line 5858
    :cond_4d
    const-string v40, "BiometricAuthEnabled"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_4e

    if-eqz v35, :cond_4e

    .line 5859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "type"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5860
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5861
    if-eqz v10, :cond_0

    if-lez v19, :cond_0

    .line 5862
    const/16 v40, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v19

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setBiometricAuthenticationEnabled(IZ)V

    goto/16 :goto_1

    .line 5864
    :cond_4e
    const-string v40, "USBDebuggingAllowed"

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_0

    if-eqz v35, :cond_0

    .line 5866
    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 5867
    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->allowUSBDebugging(Z)V

    goto/16 :goto_1

    .line 5870
    :cond_4f
    const-string/jumbo v40, "persona"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_50

    .line 5872
    if-eqz v28, :cond_0

    .line 5873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "id"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5875
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 5876
    if-lez v19, :cond_0

    .line 5877
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 5880
    :cond_50
    const-string/jumbo v40, "forbiddenString"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_51

    .line 5882
    if-eqz v14, :cond_0

    .line 5883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "value"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5885
    if-eqz v39, :cond_0

    .line 5886
    move-object/from16 v0, v39

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 5888
    :cond_51
    const-string v40, "cloneapplication"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_53

    .line 5890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    move-object/from16 v40, v0

    if-eqz v40, :cond_0

    .line 5891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5894
    if-eqz v39, :cond_0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 5895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "remove"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 5896
    .local v34, "remove":Ljava/lang/String;
    if-eqz v34, :cond_52

    const-string/jumbo v40, "true"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_52

    .line 5898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppRemoveList:Ljava/util/List;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 5903
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppInstallList:Ljava/util/List;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 5909
    .end local v34    # "remove":Ljava/lang/String;
    :cond_53
    const-string v40, "clonedisablePkg"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_55

    .line 5911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    move-object/from16 v40, v0

    if-eqz v40, :cond_0

    .line 5912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5914
    if-eqz v39, :cond_0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 5915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "reenable"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 5916
    .local v33, "re_enable_attr":Ljava/lang/String;
    if-eqz v33, :cond_54

    const-string/jumbo v40, "true"

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_54

    .line 5918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppReenableList:Ljava/util/List;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 5921
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->fotaCloneAppDisableList:Ljava/util/List;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 5925
    .end local v33    # "re_enable_attr":Ljava/lang/String;
    :cond_55
    const-string v40, "application"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_5b

    .line 5926
    if-eqz v6, :cond_0

    .line 5927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5930
    const-string v40, "DCM"

    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->readOMCSalesCode()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_56

    const-string v40, "com.android.contacts"

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_56

    .line 5931
    const-string v39, "com.samsung.contacts"

    .line 5933
    :cond_56
    if-eqz v39, :cond_0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 5935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "remove"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 5936
    .restart local v34    # "remove":Ljava/lang/String;
    if-eqz v34, :cond_57

    const-string/jumbo v40, "true"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_57

    .line 5937
    move-object/from16 v0, v39

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 5939
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string v42, "allow"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5940
    .local v11, "content":Ljava/lang/String;
    if-eqz v11, :cond_58

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_5a

    .line 5941
    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "disallow"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5942
    if-eqz v11, :cond_59

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_0

    .line 5943
    :cond_59
    move-object/from16 v0, v39

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 5945
    :cond_5a
    const-string/jumbo v40, "systemAppOnly"

    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_0

    .line 5946
    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isSystemApp(Ljava/lang/String;)Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2500(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_0

    .line 5947
    move-object/from16 v0, v39

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 5954
    .end local v11    # "content":Ljava/lang/String;
    .end local v34    # "remove":Ljava/lang/String;
    :cond_5b
    const-string/jumbo v40, "replace"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_5d

    .line 5955
    if-eqz v6, :cond_0

    .line 5957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "value"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5959
    const-string v40, " "

    const-string v41, ""

    invoke-virtual/range {v39 .. v41}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    const-string v41, ","

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v37

    .line 5960
    .local v37, "target":[Ljava/lang/String;
    move-object/from16 v8, v37

    .local v8, "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    aget-object v25, v8, v17

    .line 5961
    .local v25, "oper":Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_5c

    .line 5962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5964
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v40

    add-int/lit8 v40, v40, -0x1

    move/from16 v0, v40

    move-object/from16 v1, v39

    invoke-interface {v6, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5960
    :cond_5c
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 5968
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v22    # "len$":I
    .end local v25    # "oper":Ljava/lang/String;
    .end local v37    # "target":[Ljava/lang/String;
    :cond_5d
    const-string/jumbo v40, "groupPkg"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_5f

    .line 5969
    if-eqz v6, :cond_0

    .line 5970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "value"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5972
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_5e
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 5973
    .local v18, "installPkg":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_5e

    .line 5974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 5979
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "installPkg":Ljava/lang/String;
    :cond_5f
    const-string/jumbo v40, "provider"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_61

    .line 5981
    if-eqz v23, :cond_0

    .line 5982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5984
    if-eqz v39, :cond_60

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_60

    .line 5985
    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5986
    :cond_60
    new-instance v27, Ljava/util/ArrayList;

    .end local v27    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .restart local v27    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    goto/16 :goto_1

    .line 5989
    :cond_61
    const-string/jumbo v40, "package"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_66

    .line 5991
    if-eqz v29, :cond_64

    .line 5992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5994
    if-eqz v39, :cond_0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 5995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string v42, "allow"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5996
    .restart local v11    # "content":Ljava/lang/String;
    if-eqz v11, :cond_62

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_0

    .line 5997
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "disallow"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5998
    if-eqz v11, :cond_63

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->containsProductName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_0

    .line 5999
    :cond_63
    move-object/from16 v0, v29

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6003
    .end local v11    # "content":Ljava/lang/String;
    :cond_64
    if-eqz v23, :cond_0

    .line 6004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6006
    if-eqz v39, :cond_65

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_65

    .line 6007
    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6008
    :cond_65
    new-instance v27, Ljava/util/ArrayList;

    .end local v27    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .restart local v27    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    goto/16 :goto_1

    .line 6010
    :cond_66
    const-string/jumbo v40, "policy"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_68

    .line 6011
    if-nez v9, :cond_67

    .line 6012
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "badgePolicylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 6014
    .restart local v9    # "badgePolicylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6015
    if-eqz v39, :cond_0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 6016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "value"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 6018
    .restart local v11    # "content":Ljava/lang/String;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "/"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6020
    .end local v11    # "content":Ljava/lang/String;
    :cond_68
    const-string/jumbo v40, "property"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_69

    .line 6021
    if-eqz v27, :cond_0

    .line 6022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 6024
    .local v31, "property":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "value"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6026
    if-eqz v31, :cond_0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    if-eqz v39, :cond_0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 6028
    new-instance v40, Landroid/util/Pair;

    move-object/from16 v0, v40

    move-object/from16 v1, v31

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6032
    .end local v31    # "property":Ljava/lang/String;
    :cond_69
    const-string/jumbo v40, "protectedPkg"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_6a

    .line 6034
    if-eqz v32, :cond_0

    .line 6035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6037
    if-eqz v39, :cond_0

    .line 6038
    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6041
    :cond_6a
    const-string/jumbo v40, "disablePkg"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_6e

    .line 6043
    if-eqz v15, :cond_0

    .line 6044
    const/16 v20, 0x1

    .line 6047
    .local v20, "isDisabled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "value"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6048
    if-eqz v39, :cond_6c

    .line 6049
    const-string v40, " "

    const-string v41, ""

    invoke-virtual/range {v39 .. v41}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    const-string v41, ","

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v37

    .line 6050
    .restart local v37    # "target":[Ljava/lang/String;
    move-object/from16 v8, v37

    .restart local v8    # "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v22, v0

    .restart local v22    # "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_6c

    aget-object v25, v8, v17

    .line 6051
    .restart local v25    # "oper":Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_6b

    .line 6052
    const/16 v20, 0x0

    .line 6050
    :cond_6b
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 6056
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v22    # "len$":I
    .end local v25    # "oper":Ljava/lang/String;
    .end local v37    # "target":[Ljava/lang/String;
    :cond_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6058
    const-string v40, "com.android.chrome"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_6d

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isNoteVzwProject()Z
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2600()Z

    move-result v40

    if-eqz v40, :cond_6d

    .line 6059
    const/16 v20, 0x1

    .line 6060
    :cond_6d
    if-eqz v39, :cond_0

    if-eqz v20, :cond_0

    .line 6061
    move-object/from16 v0, v39

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6063
    .end local v20    # "isDisabled":Z
    :cond_6e
    const-string/jumbo v40, "fotadisablePkg"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_70

    .line 6064
    if-eqz v4, :cond_0

    .line 6065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "name"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6069
    if-eqz v39, :cond_0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 6071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, "reenable"

    invoke-interface/range {v40 .. v42}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 6073
    .restart local v33    # "re_enable_attr":Ljava/lang/String;
    if-eqz v33, :cond_6f

    const-string/jumbo v40, "true"

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_6f

    .line 6074
    move-object/from16 v0, v39

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6076
    :cond_6f
    move-object/from16 v0, v39

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6081
    .end local v33    # "re_enable_attr":Ljava/lang/String;
    :cond_70
    const-string/jumbo v40, "knoxCore"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_0

    .line 6083
    new-instance v29, Ljava/util/ArrayList;

    .end local v29    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .restart local v29    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_1

    .line 6089
    .end local v36    # "tag":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v36

    .line 6090
    .restart local v36    # "tag":Ljava/lang/String;
    const-string/jumbo v40, "row"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_7b

    if-eqz v35, :cond_7b

    .line 6091
    if-eqz v6, :cond_72

    .line 6092
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v40

    move/from16 v0, v16

    move/from16 v1, v40

    if-ge v0, v1, :cond_72

    .line 6093
    move/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    const-string/jumbo v41, "group_"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_71

    .line 6095
    move/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6092
    :cond_71
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 6099
    .end local v16    # "i":I
    :cond_72
    if-eqz v28, :cond_73

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_73

    .line 6100
    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPersonaList(Ljava/util/List;)V

    .line 6102
    :cond_73
    if-eqz v14, :cond_74

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_74

    .line 6103
    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setForbiddenStrings(Ljava/util/List;)V

    .line 6105
    :cond_74
    if-eqz v6, :cond_75

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_75

    .line 6106
    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAppInstallationList(Ljava/util/List;)V

    .line 6109
    :cond_75
    if-eqz v7, :cond_76

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_76

    .line 6110
    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAppRemoveList(Ljava/util/List;)V

    .line 6113
    :cond_76
    if-eqz v32, :cond_77

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_77

    .line 6114
    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setProtectedPackageList(Ljava/util/List;)V

    .line 6115
    :cond_77
    if-eqz v15, :cond_78

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_78

    .line 6116
    move-object/from16 v0, v35

    invoke-virtual {v0, v15}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setGoogleAppsList(Ljava/util/List;)V

    .line 6118
    :cond_78
    if-eqz v4, :cond_79

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_79

    .line 6119
    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setFOTADisableList(Ljava/util/List;)V

    .line 6123
    :cond_79
    if-eqz v5, :cond_7a

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_7a

    .line 6124
    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setFOTAReenableList(Ljava/util/List;)V

    .line 6129
    :cond_7a
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->dumpState()V

    .line 6130
    const/16 v28, 0x0

    .line 6131
    const/4 v14, 0x0

    .line 6132
    const/4 v6, 0x0

    .line 6134
    const/4 v7, 0x0

    .line 6136
    const/16 v32, 0x0

    .line 6137
    const/4 v15, 0x0

    .line 6138
    const/4 v4, 0x0

    .line 6139
    const/4 v5, 0x0

    .line 6140
    const/16 v23, 0x0

    .line 6141
    const/16 v27, 0x0

    .line 6142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 6144
    :cond_7b
    const-string/jumbo v40, "provider"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_7e

    .line 6146
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    if-eqz v27, :cond_0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 6148
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_7d

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/util/Pair;

    .line 6149
    .local v26, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v21, :cond_7c

    .line 6150
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setDataSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 6152
    :cond_7c
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    invoke-static/range {v40 .. v40}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 6153
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2, v10}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAllowChangeDataSyncPolicy(Ljava/util/List;Ljava/lang/String;Z)V

    goto :goto_5

    .line 6156
    .end local v26    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7d
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->clear()V

    .line 6157
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 6160
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_7e
    const-string/jumbo v40, "package"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_80

    .line 6162
    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    if-eqz v27, :cond_0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_0

    .line 6164
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_7f

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/util/Pair;

    .line 6165
    .restart local v26    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/lang/String;

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setNotificationSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 6167
    .end local v26    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7f
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->clear()V

    .line 6168
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 6171
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_80
    const-string/jumbo v40, "knoxCore"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_83

    .line 6173
    if-eqz v29, :cond_81

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_81

    .line 6174
    # setter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;
    invoke-static/range {v29 .. v29}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2702(Ljava/util/List;)Ljava/util/List;

    .line 6176
    :cond_81
    const/16 v29, 0x0

    .line 6178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17    # "i$":Ljava/util/Iterator;
    :cond_82
    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 6179
    .local v38, "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    move-object/from16 v0, v38

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/BBCConfigurationType;

    move/from16 v40, v0

    if-nez v40, :cond_82

    .line 6180
    invoke-virtual/range {v38 .. v38}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v40

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2700()Ljava/util/List;

    move-result-object v41

    invoke-interface/range {v40 .. v41}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    .line 6183
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v38    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_83
    const-string v40, "BadgePolicy"

    move-object/from16 v0, v40

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_0

    .line 6184
    # setter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mbadgePolicylist:Ljava/util/List;
    invoke-static {v9}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2802(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6185
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 5522
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTypeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5474
    .local p1, "type":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    .line 5475
    return-void
.end method

.method public writeToXml()V
    .locals 39

    .prologue
    .line 6370
    new-instance v10, Ljava/io/File;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TYPE_FILE_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2900()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "enterprisedata.xml"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6371
    .local v10, "file":Ljava/io/File;
    const/16 v31, 0x0

    .line 6373
    .local v31, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v32, Ljava/io/FileOutputStream;

    const/16 v36, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v36

    invoke-direct {v0, v10, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 6374
    .end local v31    # "stream":Ljava/io/FileOutputStream;
    .local v32, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v20, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 6375
    .local v20, "out":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v15, 0x0

    .line 6376
    .local v15, "intVal":I
    const/16 v30, 0x0

    .line 6377
    .local v30, "strVal":Ljava/lang/String;
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6378
    .local v6, "booleanVal":Ljava/lang/Boolean;
    const-string/jumbo v36, "utf-8"

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 6379
    const/16 v36, 0x0

    const/16 v37, 0x1

    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 6380
    const-string v36, "\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6382
    const/16 v36, 0x0

    const-string/jumbo v37, "table"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6383
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "MUMContainerType"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->mTypeListLocal:Ljava/util/List;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_44

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 6385
    .local v35, "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    const-string v36, "\n\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6386
    const/16 v36, 0x0

    const-string/jumbo v37, "row"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6387
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move/from16 v36, v0

    if-eqz v36, :cond_3

    .line 6388
    const/16 v36, 0x0

    const-string/jumbo v37, "type"

    sget-object v38, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->LIGHTWEIGHT:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6397
    :goto_1
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v15

    .line 6398
    if-ltz v15, :cond_0

    .line 6399
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6400
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6401
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "UID"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6402
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6403
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6405
    :cond_0
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getUserId()I

    move-result v15

    .line 6406
    const/16 v36, -0x1

    move/from16 v0, v36

    if-lt v15, v0, :cond_1

    .line 6407
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6408
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6409
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "UserID"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6410
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6411
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6413
    :cond_1
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v24

    .line 6414
    .local v24, "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v24, :cond_7

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v36

    if-lez v36, :cond_7

    .line 6415
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6416
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6417
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "PersonaIDs"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6418
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    .line 6419
    .local v23, "personaId":Ljava/lang/Integer;
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6420
    const/16 v36, 0x0

    const-string/jumbo v37, "persona"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6421
    const/16 v36, 0x0

    const-string/jumbo v37, "id"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6422
    const/16 v36, 0x0

    const-string/jumbo v37, "persona"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 6981
    .end local v6    # "booleanVal":Ljava/lang/Boolean;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "intVal":I
    .end local v20    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v23    # "personaId":Ljava/lang/Integer;
    .end local v24    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v30    # "strVal":Ljava/lang/String;
    .end local v35    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catch_0
    move-exception v9

    move-object/from16 v31, v32

    .line 6983
    .end local v32    # "stream":Ljava/io/FileOutputStream;
    .local v9, "e":Ljava/io/IOException;
    .restart local v31    # "stream":Ljava/io/FileOutputStream;
    :goto_3
    if-eqz v31, :cond_2

    .line 6984
    :try_start_2
    invoke-virtual/range {v31 .. v31}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 6990
    .end local v9    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    return-void

    .line 6389
    .end local v31    # "stream":Ljava/io/FileOutputStream;
    .restart local v6    # "booleanVal":Ljava/lang/Boolean;
    .restart local v15    # "intVal":I
    .restart local v20    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v30    # "strVal":Ljava/lang/String;
    .restart local v32    # "stream":Ljava/io/FileOutputStream;
    .restart local v35    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_3
    :try_start_3
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v36, v0

    if-eqz v36, :cond_4

    .line 6390
    const/16 v36, 0x0

    const-string/jumbo v37, "type"

    sget-object v38, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->KIOSK:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 6391
    :cond_4
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/BBCConfigurationType;

    move/from16 v36, v0

    if-eqz v36, :cond_5

    .line 6392
    const/16 v36, 0x0

    const-string/jumbo v37, "type"

    sget-object v38, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->BBC:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 6394
    :cond_5
    const/16 v36, 0x0

    const-string/jumbo v37, "type"

    sget-object v38, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->LAUNCHER:Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/enterprise/knox/container/KnoxContainerManager$ConfigType;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 6424
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v24    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_6
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6425
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6427
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v30

    .line 6428
    if-eqz v30, :cond_8

    .line 6429
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6430
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6431
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "Name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6432
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6433
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6437
    :cond_8
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isDefaultConfigType()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6438
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6439
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6440
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "DefaultConfigType"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6441
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6442
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6444
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getContainerLayout()I

    move-result v15

    .line 6445
    if-ltz v15, :cond_9

    .line 6446
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6447
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6448
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "DefaultContainerLayout"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6449
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6450
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6453
    :cond_9
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isLayoutSwitchingAllowed()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6454
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6455
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6456
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "LayoutSwitchingAllowed"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6457
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6458
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6461
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getVersion()Ljava/lang/String;

    move-result-object v30

    .line 6462
    if-eqz v30, :cond_a

    .line 6463
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6464
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6465
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "Version"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6466
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6467
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6469
    :cond_a
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumTimeToLock()I

    move-result v15

    .line 6470
    if-eqz v15, :cond_b

    .line 6471
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6472
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6473
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "MaximumTimeToLock"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6474
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6475
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6478
    :cond_b
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLength()I

    move-result v15

    .line 6479
    if-eqz v15, :cond_c

    .line 6480
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6481
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6482
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "PasswordMinimumLength"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6483
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6484
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6486
    :cond_c
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumNonLetters()I

    move-result v15

    .line 6487
    if-eqz v15, :cond_d

    .line 6488
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6489
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6490
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "PasswordMinimumNonLetters"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6491
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6492
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6494
    :cond_d
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLetters()I

    move-result v15

    .line 6495
    if-eqz v15, :cond_e

    .line 6496
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6497
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6498
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "PasswordMinimumLetters"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6499
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6500
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6502
    :cond_e
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumNumeric()I

    move-result v15

    .line 6503
    if-eqz v15, :cond_f

    .line 6504
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6505
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6506
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "PasswordMinimumNumeric"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6507
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6508
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6510
    :cond_f
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumUpperCase()I

    move-result v15

    .line 6511
    if-eqz v15, :cond_10

    .line 6512
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6513
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6514
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "PasswordMinimumUpperCase"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6515
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6516
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6518
    :cond_10
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLowerCase()I

    move-result v15

    .line 6519
    if-eqz v15, :cond_11

    .line 6520
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6521
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6522
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "PasswordMinimumLowerCase"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6523
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6524
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6526
    :cond_11
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumSymbols()I

    move-result v15

    .line 6527
    if-eqz v15, :cond_12

    .line 6528
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6529
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6530
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "PasswordMinimumSymbols"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6531
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6532
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6534
    :cond_12
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordQuality()I

    move-result v15

    .line 6535
    if-eqz v15, :cond_13

    .line 6536
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6537
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6538
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "PasswordQuality"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6539
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6540
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6542
    :cond_13
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumFailedPasswordsForWipe()I

    move-result v15

    .line 6543
    if-eqz v15, :cond_14

    .line 6544
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6545
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6546
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "MaximumFailedPasswordsForWipe"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6547
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6548
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6550
    :cond_14
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumCharacterOccurences()I

    move-result v15

    .line 6551
    if-eqz v15, :cond_15

    .line 6552
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6553
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6554
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "MaximumCharacterOccurences"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6555
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6556
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6558
    :cond_15
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumCharacterSequenceLength()I

    move-result v15

    .line 6559
    if-eqz v15, :cond_16

    .line 6560
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6561
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6562
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "MaximumCharacterSequenceLength"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6563
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6564
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6566
    :cond_16
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumNumericSequenceLength()I

    move-result v15

    .line 6567
    if-eqz v15, :cond_17

    .line 6568
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6569
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6570
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "MaximumNumericSequenceLength"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6571
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6572
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6574
    :cond_17
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getKeyguardDisabledFeatures()I

    move-result v15

    .line 6575
    if-ltz v15, :cond_18

    .line 6576
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6577
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6578
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "KeyguardDisabledFeatures"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6579
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6580
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6582
    :cond_18
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getSimplePasswordEnabled()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6583
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-nez v36, :cond_19

    .line 6584
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6585
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6586
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "SimplePasswordEnabled"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6587
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6588
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6590
    :cond_19
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isMultifactorAuthenticationEnforced()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6591
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-eqz v36, :cond_1a

    .line 6592
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6593
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6594
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "MultifactorAuthEnabled"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6595
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6596
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6598
    :cond_1a
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getManagedType()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6599
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-eqz v36, :cond_1b

    .line 6600
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6601
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6602
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "UserManaged"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6603
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6604
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6606
    :cond_1b
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getBiometricAuthenticationEnabledValue()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6607
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getBiometricAuthenticationEnabledType()I

    move-result v15

    .line 6608
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-eqz v36, :cond_1c

    if-lez v15, :cond_1c

    .line 6609
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6610
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6611
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "BiometricAuthEnabled"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6612
    const/16 v36, 0x0

    const-string/jumbo v37, "type"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6613
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6614
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6616
    :cond_1c
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getForbiddenStrings()Ljava/util/List;

    move-result-object v11

    .line 6617
    .local v11, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v11, :cond_1e

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v36

    if-lez v36, :cond_1e

    .line 6618
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6619
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6620
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "ForbiddenStrings"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6621
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_1d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 6622
    .local v33, "string":Ljava/lang/String;
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6623
    const/16 v36, 0x0

    const-string/jumbo v37, "forbiddenString"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6624
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6625
    const/16 v36, 0x0

    const-string/jumbo v37, "forbiddenString"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5

    .line 6627
    .end local v33    # "string":Ljava/lang/String;
    :cond_1d
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6628
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6630
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_1e
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getRequiredPwdPatternRestrictions()Ljava/lang/String;

    move-result-object v30

    .line 6631
    if-eqz v30, :cond_1f

    .line 6632
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6633
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6634
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "PatternRestriction"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6635
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6636
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6638
    :cond_1f
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v30

    .line 6639
    if-eqz v30, :cond_20

    .line 6640
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6641
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6642
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "CustomBadgeIcon"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6643
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6644
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6646
    :cond_20
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v30

    .line 6647
    if-eqz v30, :cond_21

    .line 6648
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6649
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6650
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "CustomHomeScreenWallpaper"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6651
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6652
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6654
    :cond_21
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v30

    .line 6655
    if-eqz v30, :cond_22

    .line 6656
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6657
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6658
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "CustomLockScreenWallpaper"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6659
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6660
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6662
    :cond_22
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusLabel()Ljava/lang/String;

    move-result-object v30

    .line 6663
    if-eqz v30, :cond_23

    .line 6664
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6665
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6666
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "CustomStatusLabel"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6667
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6668
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6670
    :cond_23
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v30

    .line 6671
    if-eqz v30, :cond_24

    .line 6672
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6673
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6674
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "CustomStatusIcon"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6675
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6676
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6678
    :cond_24
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isMultiwindowModeAllowed()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6679
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_25

    .line 6680
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6681
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6682
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "AllowMultiwindowMode"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6683
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6684
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6686
    :cond_25
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isTaskManagerAllowed()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6687
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_26

    .line 6688
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6689
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6690
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "AllowTaskManager"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6691
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6692
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6695
    :cond_26
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isUSBDebuggingAllowed()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6696
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-eqz v36, :cond_27

    .line 6697
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6698
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6699
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "USBDebuggingAllowed"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6700
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6701
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6703
    :cond_27
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v36, v0

    if-eqz v36, :cond_2d

    .line 6704
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v17, v0

    .line 6705
    .local v17, "kiosktype":Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;
    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isSettingChangesAllowed()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6706
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-eqz v36, :cond_28

    .line 6707
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6708
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6709
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "AllowSettingsChanges"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6710
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6711
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6713
    :cond_28
    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isStatusBarExpansionAllowed()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6714
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_29

    .line 6715
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6716
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6717
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "AllowStatusBarExpansion"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6718
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6719
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6721
    :cond_29
    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isHomeKeyAllowed()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6722
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-eqz v36, :cond_2a

    .line 6723
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6724
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6725
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "AllowHomeKey"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6726
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6727
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6729
    :cond_2a
    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isClearAllNotificationAllowed()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6730
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-eqz v36, :cond_2b

    .line 6731
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6732
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6733
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "AllowClearAllNotification"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6734
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6735
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6738
    :cond_2b
    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isHideSystemBarEnabled()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6739
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-eqz v36, :cond_2c

    .line 6740
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6741
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6742
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "HideSystemBar"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6743
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6744
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6746
    :cond_2c
    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isWipeRecentTasksEnabled()Z

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 6747
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-eqz v36, :cond_2d

    .line 6748
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6749
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6750
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "WipeRecentTasks"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6751
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6752
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6755
    .end local v17    # "kiosktype":Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;
    :cond_2d
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move/from16 v36, v0

    if-eqz v36, :cond_30

    .line 6756
    move-object/from16 v0, v35

    check-cast v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move-object/from16 v19, v0

    .line 6757
    .local v19, "lwctype":Lcom/sec/enterprise/knox/container/LightweightConfigurationType;
    invoke-virtual/range {v19 .. v19}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->getFolderHeaderTitle()Ljava/lang/String;

    move-result-object v30

    .line 6758
    if-eqz v30, :cond_2e

    .line 6759
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6760
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6761
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "FolderHeaderTitle"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6762
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6763
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6765
    :cond_2e
    invoke-virtual/range {v19 .. v19}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->getFolderHeaderIcon()Ljava/lang/String;

    move-result-object v30

    .line 6766
    if-eqz v30, :cond_2f

    .line 6767
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6768
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6769
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "FolderHeaderIcon"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6770
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6771
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6774
    :cond_2f
    invoke-virtual/range {v19 .. v19}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->getFolderDisabledChangeLayout()Ljava/lang/String;

    move-result-object v30

    .line 6775
    if-eqz v30, :cond_30

    .line 6776
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6777
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6778
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "FolderDisabledChangeLayout"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6779
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6780
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6783
    .end local v19    # "lwctype":Lcom/sec/enterprise/knox/container/LightweightConfigurationType;
    :cond_30
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v18

    .line 6784
    .local v18, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v18, :cond_33

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v36

    if-lez v36, :cond_33

    .line 6785
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6786
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6787
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "AppInstallList"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6788
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_31

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6789
    .local v4, "application":Ljava/lang/String;
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6790
    const/16 v36, 0x0

    const-string v37, "application"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6791
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6792
    const/16 v36, 0x0

    const-string v37, "application"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_6

    .line 6795
    .end local v4    # "application":Ljava/lang/String;
    :cond_31
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppRemoveList()Ljava/util/List;

    move-result-object v28

    .line 6796
    .local v28, "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v28, :cond_32

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v36

    if-lez v36, :cond_32

    .line 6797
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_32

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6798
    .restart local v4    # "application":Ljava/lang/String;
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6799
    const/16 v36, 0x0

    const-string v37, "application"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6800
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6801
    const/16 v36, 0x0

    const-string/jumbo v37, "remove"

    const-string/jumbo v38, "true"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6802
    const/16 v36, 0x0

    const-string v37, "application"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7

    .line 6806
    .end local v4    # "application":Ljava/lang/String;
    :cond_32
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6807
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6809
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v28    # "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_33
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v18

    .line 6810
    if-eqz v18, :cond_35

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v36

    if-lez v36, :cond_35

    .line 6811
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6812
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6813
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "ProtectedPkgList"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6814
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_34

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 6815
    .local v25, "protectedPkg":Ljava/lang/String;
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6816
    const/16 v36, 0x0

    const-string/jumbo v37, "protectedPkg"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6817
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6818
    const/16 v36, 0x0

    const-string/jumbo v37, "protectedPkg"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8

    .line 6820
    .end local v25    # "protectedPkg":Ljava/lang/String;
    :cond_34
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6821
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6824
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_35
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v18

    .line 6825
    if-eqz v18, :cond_37

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v36

    if-lez v36, :cond_37

    .line 6826
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6827
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6828
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "GoogleAppsPkgList"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6829
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_36

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 6830
    .local v8, "disablePkg":Ljava/lang/String;
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6831
    const/16 v36, 0x0

    const-string/jumbo v37, "disablePkg"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6832
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6833
    const/16 v36, 0x0

    const-string/jumbo v37, "disablePkg"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_9

    .line 6835
    .end local v8    # "disablePkg":Ljava/lang/String;
    :cond_36
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6836
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6839
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_37
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTADisableList()Ljava/util/List;

    move-result-object v18

    .line 6840
    if-eqz v18, :cond_3a

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v36

    if-lez v36, :cond_3a

    .line 6841
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6842
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6843
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "FOTADisableAppsPkgList"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6844
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_38

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 6845
    .restart local v8    # "disablePkg":Ljava/lang/String;
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6846
    const/16 v36, 0x0

    const-string/jumbo v37, "fotadisablePkg"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6847
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6848
    const/16 v36, 0x0

    const-string/jumbo v37, "fotadisablePkg"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_a

    .line 6851
    .end local v8    # "disablePkg":Ljava/lang/String;
    :cond_38
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTAReenableList()Ljava/util/List;

    move-result-object v26

    .line 6852
    .local v26, "reenableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v26, :cond_39

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_39

    .line 6853
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_39

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 6854
    .local v27, "reenablePkg":Ljava/lang/String;
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6855
    const/16 v36, 0x0

    const-string/jumbo v37, "fotadisablePkg"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6856
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6857
    const/16 v36, 0x0

    const-string/jumbo v37, "reenable"

    const-string/jumbo v38, "true"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6858
    const/16 v36, 0x0

    const-string/jumbo v37, "fotadisablePkg"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_b

    .line 6862
    .end local v27    # "reenablePkg":Ljava/lang/String;
    :cond_39
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6863
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6867
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v26    # "reenableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3a
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getDataSyncPolicy()Ljava/util/HashMap;

    move-result-object v29

    .line 6868
    .local v29, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    if-eqz v29, :cond_3d

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_3d

    .line 6869
    const/16 v22, 0x0

    .line 6870
    .local v22, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6871
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6872
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "RCPDataSettings"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6873
    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_3c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 6874
    .local v16, "key":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    check-cast v22, Ljava/util/List;

    .line 6875
    .restart local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6876
    const/16 v36, 0x0

    const-string/jumbo v37, "provider"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6877
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6878
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_3b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/Pair;

    .line 6879
    .local v21, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v36, "\n\t\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6880
    const/16 v36, 0x0

    const-string/jumbo v37, "property"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6881
    const/16 v37, 0x0

    const-string/jumbo v38, "name"

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6882
    const/16 v37, 0x0

    const-string/jumbo v38, "value"

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6883
    const/16 v36, 0x0

    const-string/jumbo v37, "property"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_d

    .line 6885
    .end local v21    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3b
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6886
    const/16 v36, 0x0

    const-string/jumbo v37, "provider"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_c

    .line 6888
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "key":Ljava/lang/String;
    :cond_3c
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6889
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6891
    .end local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_3d
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAllowChangeDataSyncPolicy()Ljava/util/HashMap;

    move-result-object v29

    .line 6892
    if-eqz v29, :cond_40

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_40

    .line 6893
    const/16 v22, 0x0

    .line 6894
    .restart local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6895
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6896
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "RCPAllowChangeDataSettings"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6897
    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_3f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 6898
    .restart local v16    # "key":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    check-cast v22, Ljava/util/List;

    .line 6899
    .restart local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6900
    const/16 v36, 0x0

    const-string/jumbo v37, "provider"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6901
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6902
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_3e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/Pair;

    .line 6903
    .restart local v21    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v36, "\n\t\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6904
    const/16 v36, 0x0

    const-string/jumbo v37, "property"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6905
    const/16 v37, 0x0

    const-string/jumbo v38, "name"

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6906
    const/16 v37, 0x0

    const-string/jumbo v38, "value"

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6907
    const/16 v36, 0x0

    const-string/jumbo v37, "property"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_f

    .line 6909
    .end local v21    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3e
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6910
    const/16 v36, 0x0

    const-string/jumbo v37, "provider"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_e

    .line 6912
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "key":Ljava/lang/String;
    :cond_3f
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6913
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6915
    .end local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_40
    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getNotificationSyncPolicy()Ljava/util/HashMap;

    move-result-object v29

    .line 6916
    if-eqz v29, :cond_43

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_43

    .line 6917
    const/16 v22, 0x0

    .line 6918
    .restart local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6919
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6920
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const-string v38, "RCPNotifSettings"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6921
    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_10
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_42

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 6922
    .restart local v16    # "key":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    check-cast v22, Ljava/util/List;

    .line 6923
    .restart local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6924
    const/16 v36, 0x0

    const-string/jumbo v37, "package"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6925
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6926
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_41

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/Pair;

    .line 6927
    .restart local v21    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v36, "\n\t\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6928
    const/16 v36, 0x0

    const-string/jumbo v37, "property"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6929
    const/16 v37, 0x0

    const-string/jumbo v38, "name"

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6930
    const/16 v37, 0x0

    const-string/jumbo v38, "value"

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v36

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6931
    const/16 v36, 0x0

    const-string/jumbo v37, "property"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_11

    .line 6933
    .end local v21    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_41
    const-string v36, "\n\t\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6934
    const/16 v36, 0x0

    const-string/jumbo v37, "package"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_10

    .line 6936
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "key":Ljava/lang/String;
    :cond_42
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6937
    const/16 v36, 0x0

    const-string v37, "column"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6940
    .end local v22    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_43
    const-string v36, "\n\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6941
    const/16 v36, 0x0

    const-string/jumbo v37, "row"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    .line 6943
    .end local v11    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "personaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v29    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .end local v35    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_44
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2700()Ljava/util/List;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_46

    .line 6944
    const-string v36, "\n\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6945
    const/16 v36, 0x0

    const-string/jumbo v37, "knoxCore"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6946
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mDefaultPkgList:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2700()Ljava/util/List;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_45

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 6947
    .local v7, "corePkg":Ljava/lang/String;
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6948
    const/16 v36, 0x0

    const-string/jumbo v37, "package"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6949
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6950
    const/16 v36, 0x0

    const-string/jumbo v37, "package"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_12

    .line 6952
    .end local v7    # "corePkg":Ljava/lang/String;
    :cond_45
    const-string v36, "\n\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6953
    const/16 v36, 0x0

    const-string/jumbo v37, "knoxCore"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6956
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_46
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mbadgePolicylist:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2800()Ljava/util/List;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_48

    .line 6957
    const-string v36, "\n\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6958
    const/16 v36, 0x0

    const-string v37, "BadgePolicy"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6959
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mbadgePolicylist:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$2800()Ljava/util/List;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_47

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 6960
    .local v5, "badgePolicylist":Ljava/lang/String;
    const-string v36, "/"

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v34

    .line 6961
    .local v34, "temp":[Ljava/lang/String;
    const-string v36, "\n\t\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6962
    const/16 v36, 0x0

    const-string/jumbo v37, "policy"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6963
    const/16 v36, 0x0

    const-string/jumbo v37, "name"

    const/16 v38, 0x0

    aget-object v38, v34, v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6964
    const/16 v36, 0x0

    const-string/jumbo v37, "value"

    const/16 v38, 0x1

    aget-object v38, v34, v38

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6965
    const/16 v36, 0x0

    const-string/jumbo v37, "policy"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_13

    .line 6967
    .end local v5    # "badgePolicylist":Ljava/lang/String;
    .end local v34    # "temp":[Ljava/lang/String;
    :cond_47
    const-string v36, "\n\t"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6968
    const/16 v36, 0x0

    const-string v37, "BadgePolicy"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6970
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_48
    const-string v36, "\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6971
    const/16 v36, 0x0

    const-string/jumbo v37, "table"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6973
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 6974
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 6976
    :try_start_4
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 6980
    :goto_14
    :try_start_5
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileOutputStream;->close()V

    move-object/from16 v31, v32

    .line 6989
    .end local v32    # "stream":Ljava/io/FileOutputStream;
    .restart local v31    # "stream":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 6977
    .end local v31    # "stream":Ljava/io/FileOutputStream;
    .restart local v32    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v9

    .line 6978
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v36, "MumXmlDataParser"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Error in Write to XML sync FD "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_14

    .line 6986
    .end local v6    # "booleanVal":Ljava/lang/Boolean;
    .end local v15    # "intVal":I
    .end local v20    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v30    # "strVal":Ljava/lang/String;
    .end local v32    # "stream":Ljava/io/FileOutputStream;
    .restart local v31    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v36

    goto/16 :goto_4

    .line 6981
    .end local v9    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v9

    goto/16 :goto_3
.end method
