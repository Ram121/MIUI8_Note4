.class public final enum Lcom/sec/epdg/IWlanEnum$WfcErrorCode;
.super Ljava/lang/Enum;
.source "IWlanEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IWlanEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WfcErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/IWlanEnum$WfcErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

.field public static final enum ER04:Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

.field public static final enum ER041:Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

.field public static final enum ER081:Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

.field public static final enum ER082:Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

.field public static final enum ER101:Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

.field public static final enum ER111:Lcom/sec/epdg/IWlanEnum$WfcErrorCode;


# instance fields
.field private final wfcErrorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    new-instance v0, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

    const-string v1, "ER04"

    invoke-direct {v0, v1, v5, v4}, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->ER04:Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

    const-string v1, "ER041"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v6, v2}, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->ER041:Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

    const-string v1, "ER081"

    const/16 v2, 0x51

    invoke-direct {v0, v1, v7, v2}, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->ER081:Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

    const-string v1, "ER082"

    const/16 v2, 0x52

    invoke-direct {v0, v1, v8, v2}, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->ER082:Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

    const-string v1, "ER101"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v4, v2}, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->ER101:Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

    new-instance v0, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

    const-string v1, "ER111"

    const/4 v2, 0x5

    const/16 v3, 0x6f

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->ER111:Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

    sget-object v1, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->ER04:Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->ER041:Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->ER081:Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->ER082:Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->ER101:Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->ER111:Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->$VALUES:[Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "c"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->wfcErrorCode:I

    return-void
.end method

.method public static getWFCErrorCode(Lcom/sec/epdg/IWlanError;)I
    .locals 3
    .param p0, "error"    # Lcom/sec/epdg/IWlanError;

    .prologue
    const/4 v0, 0x0

    .local v0, "ikeErrorCode":I
    invoke-virtual {p0}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/epdg/IWlanError;->getIkeError()Lcom/sec/epdg/IWlanError$IkeError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanError$IkeError;->getIkeErrorCode()I

    move-result v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/epdg/IWlanError;->getError()Lcom/sec/epdg/IWlanError$EpdgError;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/IWlanError$EpdgError;->IKE_NEGOTIATION_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    if-ne v1, v2, :cond_1

    const/16 v1, 0x18

    if-ne v0, v1, :cond_5

    sget-object v1, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->ER101:Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->getCode()I

    move-result v1

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/epdg/IWlanError;->getError()Lcom/sec/epdg/IWlanError$EpdgError;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/IWlanError$EpdgError;->TIMEOUT_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->ER081:Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->getCode()I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/epdg/IWlanError;->getError()Lcom/sec/epdg/IWlanError$EpdgError;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/IWlanError$EpdgError;->CERTIFICATION_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->ER111:Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->getCode()I

    move-result v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/epdg/IWlanError;->getError()Lcom/sec/epdg/IWlanError$EpdgError;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/IWlanError$EpdgError;->DNS_RESOLUTION_FAILED_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->ER041:Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->getCode()I

    move-result v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/epdg/IWlanError;->getError()Lcom/sec/epdg/IWlanError$EpdgError;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/IWlanError$EpdgError;->DNS_A_QUERY_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    if-ne v1, v2, :cond_5

    sget-object v1, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->ER04:Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->getCode()I

    move-result v1

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->ER082:Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

    invoke-virtual {v1}, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->getCode()I

    move-result v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/IWlanEnum$WfcErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/IWlanEnum$WfcErrorCode;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->$VALUES:[Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

    invoke-virtual {v0}, [Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/IWlanEnum$WfcErrorCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->wfcErrorCode:I

    return v0
.end method
