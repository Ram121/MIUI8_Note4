.class public final enum Lcom/sec/epdg/IWlanEnum$IPSecIpType;
.super Ljava/lang/Enum;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IWlanEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IPSecIpType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/IWlanEnum$IPSecIpType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/IWlanEnum$IPSecIpType;

.field public static final enum IP_VERSION_4:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

.field public static final enum IP_VERSION_6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

.field public static final enum IP_VERSION_V4V6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    const-string v1, "IP_VERSION_V4V6"

    invoke-direct {v0, v1, v2}, Lcom/sec/epdg/IWlanEnum$IPSecIpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    const-string v1, "IP_VERSION_4"

    invoke-direct {v0, v1, v3}, Lcom/sec/epdg/IWlanEnum$IPSecIpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    const-string v1, "IP_VERSION_6"

    invoke-direct {v0, v1, v4}, Lcom/sec/epdg/IWlanEnum$IPSecIpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->$VALUES:[Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->$VALUES:[Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    invoke-virtual {v0}, [Lcom/sec/epdg/IWlanEnum$IPSecIpType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    return-object v0
.end method
