.class public Lmf/org/apache/xml/resolver/Resolver;
.super Lmf/org/apache/xml/resolver/Catalog;
.source "Resolver.java"


# static fields
.field public static final RESOLVER:I

.field public static final SYSTEMREVERSE:I

.field public static final SYSTEMSUFFIX:I

.field public static final URISUFFIX:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const-string v0, "URISUFFIX"

    invoke-static {v0, v2}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Resolver;->URISUFFIX:I

    const-string v0, "SYSTEMSUFFIX"

    invoke-static {v0, v2}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Resolver;->SYSTEMSUFFIX:I

    const-string v0, "RESOLVER"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Resolver;->RESOLVER:I

    const-string v0, "SYSTEMREVERSE"

    invoke-static {v0, v1}, Lmf/org/apache/xml/resolver/CatalogEntry;->addEntryType(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmf/org/apache/xml/resolver/Resolver;->SYSTEMREVERSE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmf/org/apache/xml/resolver/Catalog;-><init>()V

    return-void
.end method

.method private appendVector(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 2
    .param p1, "vec"    # Ljava/util/Vector;
    .param p2, "appvec"    # Ljava/util/Vector;

    .prologue
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .local v0, "count":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .end local v0    # "count":I
    :cond_0
    return-object p1

    .restart local v0    # "count":I
    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private resolveAllLocalSystem(Ljava/lang/String;)Ljava/util/Vector;
    .locals 9
    .param p1, "systemId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .local v2, "map":Ljava/util/Vector;
    const-string v7, "os.name"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "osname":Ljava/lang/String;
    const-string v7, "Windows"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_2

    move v4, v5

    .local v4, "windows":Z
    :goto_0
    iget-object v7, p0, Lmf/org/apache/xml/resolver/Resolver;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    if-nez v5, :cond_1

    const/4 v2, 0x0

    .end local v2    # "map":Ljava/util/Vector;
    :cond_1
    return-object v2

    .end local v1    # "en":Ljava/util/Enumeration;
    .end local v4    # "windows":Z
    .restart local v2    # "map":Ljava/util/Vector;
    :cond_2
    move v4, v6

    goto :goto_0

    .restart local v1    # "en":Ljava/util/Enumeration;
    .restart local v4    # "windows":Z
    :cond_3
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xml/resolver/CatalogEntry;

    .local v0, "e":Lmf/org/apache/xml/resolver/CatalogEntry;
    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v7

    sget v8, Lmf/org/apache/xml/resolver/Resolver;->SYSTEM:I

    if-ne v7, v8, :cond_0

    invoke-virtual {v0, v6}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v6}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_4
    invoke-virtual {v0, v5}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private declared-synchronized resolveAllSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;
    .locals 16
    .param p1, "entityType"    # I
    .param p2, "entityName"    # Ljava/lang/String;
    .param p3, "publicId"    # Ljava/lang/String;
    .param p4, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .local v11, "resolutions":Ljava/util/Vector;
    const/4 v4, 0x0

    .local v4, "catPos":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xml/resolver/Resolver;->catalogs:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    if-lt v4, v13, :cond_0

    :goto_1
    if-eqz v11, :cond_8

    move-object v13, v11

    :goto_2
    monitor-exit p0

    return-object v13

    :cond_0
    const/4 v3, 0x0

    .local v3, "c":Lmf/org/apache/xml/resolver/Resolver;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xml/resolver/Resolver;->catalogs:Ljava/util/Vector;

    invoke-virtual {v13, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "c":Lmf/org/apache/xml/resolver/Resolver;
    check-cast v3, Lmf/org/apache/xml/resolver/Resolver;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v3    # "c":Lmf/org/apache/xml/resolver/Resolver;
    :goto_3
    const/4 v12, 0x0

    .local v12, "resolved":Ljava/lang/String;
    :try_start_2
    sget v13, Lmf/org/apache/xml/resolver/Resolver;->DOCTYPE:I

    move/from16 v0, p1

    if-ne v0, v13, :cond_1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v3, v0, v1, v2}, Lmf/org/apache/xml/resolver/Resolver;->resolveDoctype(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v11, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object v13, v11

    goto :goto_2

    .end local v3    # "c":Lmf/org/apache/xml/resolver/Resolver;
    .end local v12    # "resolved":Ljava/lang/String;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/ClassCastException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xml/resolver/Resolver;->catalogs:Ljava/util/Vector;

    invoke-virtual {v13, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "catfile":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xml/resolver/Resolver;->newCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xml/resolver/Resolver;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v3    # "c":Lmf/org/apache/xml/resolver/Resolver;
    :try_start_3
    invoke-virtual {v3, v5}, Lmf/org/apache/xml/resolver/Resolver;->parseCatalog(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xml/resolver/Resolver;->catalogs:Ljava/util/Vector;

    invoke-virtual {v13, v3, v4}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .end local v3    # "c":Lmf/org/apache/xml/resolver/Resolver;
    .end local v4    # "catPos":I
    .end local v5    # "catfile":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/ClassCastException;
    .end local v11    # "resolutions":Ljava/util/Vector;
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .restart local v3    # "c":Lmf/org/apache/xml/resolver/Resolver;
    .restart local v4    # "catPos":I
    .restart local v5    # "catfile":Ljava/lang/String;
    .restart local v6    # "e":Ljava/lang/ClassCastException;
    .restart local v11    # "resolutions":Ljava/util/Vector;
    :catch_1
    move-exception v10

    .local v10, "mue":Ljava/net/MalformedURLException;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xml/resolver/Resolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v13, v13, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v14, 0x1

    const-string v15, "Malformed Catalog URL"

    invoke-virtual {v13, v14, v15, v5}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .end local v10    # "mue":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v7

    .local v7, "fnfe":Ljava/io/FileNotFoundException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xml/resolver/Resolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v13, v13, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v14, 0x1

    const-string v15, "Failed to load catalog, file not found"

    invoke-virtual {v13, v14, v15, v5}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .end local v7    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v8

    .local v8, "ioe":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xml/resolver/Resolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v13, v13, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v14, 0x1

    const-string v15, "Failed to load catalog, I/O error"

    invoke-virtual {v13, v14, v15, v5}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .end local v5    # "catfile":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/ClassCastException;
    .end local v8    # "ioe":Ljava/io/IOException;
    .restart local v12    # "resolved":Ljava/lang/String;
    :cond_1
    sget v13, Lmf/org/apache/xml/resolver/Resolver;->DOCUMENT:I

    move/from16 v0, p1

    if-ne v0, v13, :cond_2

    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/Resolver;->resolveDocument()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v11, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object v13, v11

    goto :goto_2

    :cond_2
    sget v13, Lmf/org/apache/xml/resolver/Resolver;->ENTITY:I

    move/from16 v0, p1

    if-ne v0, v13, :cond_3

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v3, v0, v1, v2}, Lmf/org/apache/xml/resolver/Resolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v11, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object v13, v11

    goto/16 :goto_2

    :cond_3
    sget v13, Lmf/org/apache/xml/resolver/Resolver;->NOTATION:I

    move/from16 v0, p1

    if-ne v0, v13, :cond_4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v3, v0, v1, v2}, Lmf/org/apache/xml/resolver/Resolver;->resolveNotation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v11, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object v13, v11

    goto/16 :goto_2

    :cond_4
    sget v13, Lmf/org/apache/xml/resolver/Resolver;->PUBLIC:I

    move/from16 v0, p1

    if-ne v0, v13, :cond_5

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v3, v0, v1}, Lmf/org/apache/xml/resolver/Resolver;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v11, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object v13, v11

    goto/16 :goto_2

    :cond_5
    sget v13, Lmf/org/apache/xml/resolver/Resolver;->SYSTEM:I

    move/from16 v0, p1

    if-ne v0, v13, :cond_6

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lmf/org/apache/xml/resolver/Resolver;->resolveAllSystem(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v9

    .local v9, "localResolutions":Ljava/util/Vector;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v9}, Lmf/org/apache/xml/resolver/Resolver;->appendVector(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v11

    goto/16 :goto_1

    .end local v9    # "localResolutions":Ljava/util/Vector;
    :cond_6
    sget v13, Lmf/org/apache/xml/resolver/Resolver;->SYSTEMREVERSE:I

    move/from16 v0, p1

    if-ne v0, v13, :cond_7

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lmf/org/apache/xml/resolver/Resolver;->resolveAllSystemReverse(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v9

    .restart local v9    # "localResolutions":Ljava/util/Vector;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v9}, Lmf/org/apache/xml/resolver/Resolver;->appendVector(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v11

    .end local v9    # "localResolutions":Ljava/util/Vector;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .end local v3    # "c":Lmf/org/apache/xml/resolver/Resolver;
    .end local v12    # "resolved":Ljava/lang/String;
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_2
.end method

.method private resolveLocalSystemReverse(Ljava/lang/String;)Ljava/util/Vector;
    .locals 9
    .param p1, "systemId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .local v2, "map":Ljava/util/Vector;
    const-string v7, "os.name"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "osname":Ljava/lang/String;
    const-string v7, "Windows"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_2

    move v4, v5

    .local v4, "windows":Z
    :goto_0
    iget-object v7, p0, Lmf/org/apache/xml/resolver/Resolver;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    if-nez v5, :cond_1

    const/4 v2, 0x0

    .end local v2    # "map":Ljava/util/Vector;
    :cond_1
    return-object v2

    .end local v1    # "en":Ljava/util/Enumeration;
    .end local v4    # "windows":Z
    .restart local v2    # "map":Ljava/util/Vector;
    :cond_2
    move v4, v6

    goto :goto_0

    .restart local v1    # "en":Ljava/util/Enumeration;
    .restart local v4    # "windows":Z
    :cond_3
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xml/resolver/CatalogEntry;

    .local v0, "e":Lmf/org/apache/xml/resolver/CatalogEntry;
    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v7

    sget v8, Lmf/org/apache/xml/resolver/Resolver;->SYSTEM:I

    if-ne v7, v8, :cond_0

    invoke-virtual {v0, v5}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v5}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_4
    invoke-virtual {v0, v6}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    .locals 7
    .param p1, "entry"    # Lmf/org/apache/xml/resolver/CatalogEntry;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v2

    .local v2, "type":I
    sget v3, Lmf/org/apache/xml/resolver/Resolver;->URISUFFIX:I

    if-ne v2, v3, :cond_1

    invoke-virtual {p1, v5}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/resolver/Resolver;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "suffix":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/resolver/Resolver;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/resolver/Resolver;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "fsi":Ljava/lang/String;
    invoke-virtual {p1, v4, v0}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xml/resolver/Resolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v3, v3, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v4, "URISUFFIX"

    invoke-virtual {v3, v6, v4, v1, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "fsi":Ljava/lang/String;
    .end local v1    # "suffix":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V

    return-void

    :cond_1
    sget v3, Lmf/org/apache/xml/resolver/Resolver;->SYSTEMSUFFIX:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p1, v5}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/resolver/Resolver;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "suffix":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/resolver/Resolver;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/resolver/Resolver;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "fsi":Ljava/lang/String;
    invoke-virtual {p1, v4, v0}, Lmf/org/apache/xml/resolver/CatalogEntry;->setEntryArg(ILjava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xml/resolver/Resolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v3, v3, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string v4, "SYSTEMSUFFIX"

    invoke-virtual {v3, v6, v4, v1, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected queryResolver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xml/resolver/Resolver;
    .locals 15
    .param p1, "resolver"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/String;
    .param p4, "arg2"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .local v4, "iStream":Ljava/io/InputStream;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "?command="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&format=tr9401&uri="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&uri2="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "RFC2483":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "line":Ljava/lang/String;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    .local v10, "urlCon":Ljava/net/URLConnection;
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/Resolver;->newCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xml/resolver/Resolver;

    .local v8, "r":Lmf/org/apache/xml/resolver/Resolver;
    invoke-virtual {v10}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    .local v2, "cType":Ljava/lang/String;
    const-string v11, ";"

    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_0

    const/4 v11, 0x0

    const-string v12, ";"

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v10}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual {v8, v2, v11}, Lmf/org/apache/xml/resolver/Resolver;->parseCatalog(Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v2    # "cType":Ljava/lang/String;
    .end local v8    # "r":Lmf/org/apache/xml/resolver/Resolver;
    .end local v9    # "url":Ljava/net/URL;
    .end local v10    # "urlCon":Ljava/net/URLConnection;
    :goto_0
    return-object v8

    :catch_0
    move-exception v3

    .local v3, "cex":Lmf/org/apache/xml/resolver/CatalogException;
    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_2

    iget-object v11, p0, Lmf/org/apache/xml/resolver/Resolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v11, v11, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v12, 0x1

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Unparseable catalog: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    :cond_1
    :goto_1
    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_1

    iget-object v11, p0, Lmf/org/apache/xml/resolver/Resolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v11, v11, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v12, 0x1

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Unknown catalog format: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_1

    .end local v3    # "cex":Lmf/org/apache/xml/resolver/CatalogException;
    :catch_1
    move-exception v7

    .local v7, "mue":Ljava/net/MalformedURLException;
    iget-object v11, p0, Lmf/org/apache/xml/resolver/Resolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v11, v11, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v12, 0x1

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Malformed resolver URL: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_0

    .end local v7    # "mue":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v5

    .local v5, "ie":Ljava/io/IOException;
    iget-object v11, p0, Lmf/org/apache/xml/resolver/Resolver;->catalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v11, v11, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v12, 0x1

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "I/O Exception opening resolver: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_0
.end method

.method public resolveAllSystem(Ljava/lang/String;)Ljava/util/Vector;
    .locals 5
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .local v1, "resolutions":Ljava/util/Vector;
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lmf/org/apache/xml/resolver/Resolver;->resolveAllLocalSystem(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    .local v0, "localResolutions":Ljava/util/Vector;
    invoke-direct {p0, v1, v0}, Lmf/org/apache/xml/resolver/Resolver;->appendVector(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v1

    .end local v0    # "localResolutions":Ljava/util/Vector;
    :cond_0
    sget v4, Lmf/org/apache/xml/resolver/Resolver;->SYSTEM:I

    invoke-direct {p0, v4, v3, v3, p1}, Lmf/org/apache/xml/resolver/Resolver;->resolveAllSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    .local v2, "subResolutions":Ljava/util/Vector;
    invoke-direct {p0, v1, v2}, Lmf/org/apache/xml/resolver/Resolver;->appendVector(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_1

    .end local v1    # "resolutions":Ljava/util/Vector;
    :goto_0
    return-object v1

    .restart local v1    # "resolutions":Ljava/util/Vector;
    :cond_1
    move-object v1, v3

    goto :goto_0
.end method

.method public resolveAllSystemReverse(Ljava/lang/String;)Ljava/util/Vector;
    .locals 5
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .local v1, "resolved":Ljava/util/Vector;
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lmf/org/apache/xml/resolver/Resolver;->resolveLocalSystemReverse(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    .local v0, "localResolved":Ljava/util/Vector;
    invoke-direct {p0, v1, v0}, Lmf/org/apache/xml/resolver/Resolver;->appendVector(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v1

    .end local v0    # "localResolved":Ljava/util/Vector;
    :cond_0
    sget v3, Lmf/org/apache/xml/resolver/Resolver;->SYSTEMREVERSE:I

    invoke-direct {p0, v3, v4, v4, p1}, Lmf/org/apache/xml/resolver/Resolver;->resolveAllSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    .local v2, "subResolved":Ljava/util/Vector;
    invoke-direct {p0, v1, v2}, Lmf/org/apache/xml/resolver/Resolver;->appendVector(Ljava/util/Vector;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v3

    return-object v3
.end method

.method protected resolveExternalPublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "resolver"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string v2, "fpi2l"

    invoke-virtual {p0, p2, v2, p1, v1}, Lmf/org/apache/xml/resolver/Resolver;->queryResolver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xml/resolver/Resolver;

    move-result-object v0

    .local v0, "r":Lmf/org/apache/xml/resolver/Resolver;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xml/resolver/Resolver;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method protected resolveExternalSystem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "systemId"    # Ljava/lang/String;
    .param p2, "resolver"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string v2, "i2l"

    invoke-virtual {p0, p2, v2, p1, v1}, Lmf/org/apache/xml/resolver/Resolver;->queryResolver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xml/resolver/Resolver;

    move-result-object v0

    .local v0, "r":Lmf/org/apache/xml/resolver/Resolver;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/resolver/Resolver;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "publicId"    # Ljava/lang/String;
    .param p2, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    invoke-super {p0, p1, p2}, Lmf/org/apache/xml/resolver/Catalog;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "resolved":Ljava/lang/String;
    if-eqz v2, :cond_0

    move-object v3, v2

    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xml/resolver/Resolver;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_2

    sget v3, Lmf/org/apache/xml/resolver/Catalog;->PUBLIC:I

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, p1, p2}, Lmf/org/apache/xml/resolver/Resolver;->resolveSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xml/resolver/CatalogEntry;

    .local v0, "e":Lmf/org/apache/xml/resolver/CatalogEntry;
    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v3

    sget v4, Lmf/org/apache/xml/resolver/Resolver;->RESOLVER:I

    if-ne v3, v4, :cond_1

    if-eqz p2, :cond_3

    invoke-virtual {v0, v5}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lmf/org/apache/xml/resolver/Resolver;->resolveExternalSystem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v3, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v5}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lmf/org/apache/xml/resolver/Resolver;->resolveExternalPublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v3, v2

    goto :goto_0
.end method

.method public resolveSystem(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lmf/org/apache/xml/resolver/Catalog;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "resolved":Ljava/lang/String;
    if-eqz v2, :cond_0

    move-object v3, v2

    :goto_0
    return-object v3

    :cond_0
    iget-object v5, p0, Lmf/org/apache/xml/resolver/Resolver;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_2

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM:I

    invoke-virtual {p0, v5, v8, v8, p1}, Lmf/org/apache/xml/resolver/Resolver;->resolveSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xml/resolver/CatalogEntry;

    .local v0, "e":Lmf/org/apache/xml/resolver/CatalogEntry;
    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v5

    sget v6, Lmf/org/apache/xml/resolver/Resolver;->RESOLVER:I

    if-ne v5, v6, :cond_3

    invoke-virtual {v0, v7}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lmf/org/apache/xml/resolver/Resolver;->resolveExternalSystem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v5

    sget v6, Lmf/org/apache/xml/resolver/Resolver;->SYSTEMSUFFIX:I

    if-ne v5, v6, :cond_1

    invoke-virtual {v0, v7}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "suffix":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "result":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v5, v6, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0
.end method

.method public resolveSystemReverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/resolver/Resolver;->resolveAllSystemReverse(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    .local v0, "resolved":Ljava/util/Vector;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resolveURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lmf/org/apache/xml/resolver/Catalog;->resolveURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "resolved":Ljava/lang/String;
    if-eqz v2, :cond_0

    move-object v3, v2

    :goto_0
    return-object v3

    :cond_0
    iget-object v5, p0, Lmf/org/apache/xml/resolver/Resolver;->catalogEntries:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_2

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->URI:I

    invoke-virtual {p0, v5, v8, v8, p1}, Lmf/org/apache/xml/resolver/Resolver;->resolveSubordinateCatalogs(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xml/resolver/CatalogEntry;

    .local v0, "e":Lmf/org/apache/xml/resolver/CatalogEntry;
    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v5

    sget v6, Lmf/org/apache/xml/resolver/Resolver;->RESOLVER:I

    if-ne v5, v6, :cond_3

    invoke-virtual {v0, v7}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lmf/org/apache/xml/resolver/Resolver;->resolveExternalSystem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType()I

    move-result v5

    sget v6, Lmf/org/apache/xml/resolver/Resolver;->URISUFFIX:I

    if-ne v5, v6, :cond_1

    invoke-virtual {v0, v7}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "suffix":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArg(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "result":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v5, v6, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0
.end method

.method public setupReaders()V
    .locals 6

    .prologue
    invoke-static {}, Lmf/javax/xml/parsers/SAXParserFactory;->newInstance()Lmf/javax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .local v1, "spf":Lmf/javax/xml/parsers/SAXParserFactory;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lmf/javax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lmf/javax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    new-instance v0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;

    invoke-direct {v0, v1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;-><init>(Lmf/javax/xml/parsers/SAXParserFactory;)V

    .local v0, "saxReader":Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;
    const/4 v3, 0x0

    const-string v4, "XCatalog"

    const-string v5, "org.apache.xml.resolver.readers.XCatalogReader"

    invoke-virtual {v0, v3, v4, v5}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->setCatalogParser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    const-string v4, "catalog"

    const-string v5, "org.apache.xml.resolver.readers.ExtendedXMLCatalogReader"

    invoke-virtual {v0, v3, v4, v5}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->setCatalogParser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "application/xml"

    invoke-virtual {p0, v3, v0}, Lmf/org/apache/xml/resolver/Resolver;->addReader(Ljava/lang/String;Lmf/org/apache/xml/resolver/readers/CatalogReader;)V

    new-instance v2, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;

    invoke-direct {v2}, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;-><init>()V

    .local v2, "textReader":Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;
    const-string v3, "text/plain"

    invoke-virtual {p0, v3, v2}, Lmf/org/apache/xml/resolver/Resolver;->addReader(Ljava/lang/String;Lmf/org/apache/xml/resolver/readers/CatalogReader;)V

    return-void
.end method
