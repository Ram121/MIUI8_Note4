.class public final enum Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;
.super Ljava/lang/Enum;
.source "MapconConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/mapcon/MapconConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IfomAppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

.field public static final enum APP_TYPE_E911:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

.field public static final enum APP_TYPE_VIDEO:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

.field public static final enum APP_TYPE_VIDEO_VOICE:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

.field public static final enum APP_TYPE_VOICE:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

.field public static final enum BLOCK_HO:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

.field public static final enum NO_APP_IDLE:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;


# instance fields
.field private final mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    const-string v1, "APP_TYPE_VOICE"

    const-string v2, "imsvoicecall"

    invoke-direct {v0, v1, v4, v2}, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;->APP_TYPE_VOICE:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    const-string v1, "APP_TYPE_VIDEO"

    const-string v2, "imsvideocall"

    invoke-direct {v0, v1, v5, v2}, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;->APP_TYPE_VIDEO:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    const-string v1, "APP_TYPE_E911"

    const-string v2, "e911call"

    invoke-direct {v0, v1, v6, v2}, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;->APP_TYPE_E911:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    const-string v1, "NO_APP_IDLE"

    const-string v2, "idle"

    invoke-direct {v0, v1, v7, v2}, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;->NO_APP_IDLE:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    const-string v1, "BLOCK_HO"

    const-string v2, "blockhandoff"

    invoke-direct {v0, v1, v8, v2}, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;->BLOCK_HO:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    const-string v1, "APP_TYPE_VIDEO_VOICE"

    const/4 v2, 0x5

    const-string v3, "imsvideovoicecall"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;->APP_TYPE_VIDEO_VOICE:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    sget-object v1, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;->APP_TYPE_VOICE:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;->APP_TYPE_VIDEO:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;->APP_TYPE_E911:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;->NO_APP_IDLE:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;->BLOCK_HO:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;->APP_TYPE_VIDEO_VOICE:Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;->$VALUES:[Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;->mText:Ljava/lang/String;

    return-void
.end method

.method public static getIfomAppType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;
    .locals 8
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    if-nez p0, :cond_1

    move-object v0, v4

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;->values()[Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    move-result-object v1

    .local v1, "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .local v0, "appType":Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;
    invoke-virtual {v0}, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "appType":Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;
    :cond_2
    const-string v5, "[MAPCON]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getIfomAppType Invalid key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;->$VALUES:[Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    invoke-virtual {v0}, [Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;->mText:Ljava/lang/String;

    return-object v0
.end method
