.class public Lcom/ipsec/client/IPsecRelayData;
.super Ljava/lang/Object;
.source "IPsecRelayData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ipsec/client/IPsecRelayData$AuthenticationDialogAttribute;
    }
.end annotation


# static fields
.field public static final IPSEC_RELAY_DIALOG:I = 0x2

.field public static final IPSEC_RELAY_SIGNATURE_DATA:I = 0x1


# instance fields
.field private mDialogAttributes:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecRelayData$AuthenticationDialogAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mDialogMessage:Ljava/lang/String;

.field private mOperationId:I

.field private mSignature:[B

.field private mSignatureInput:[B

.field private mSignatureScheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ipsec/client/IPsecRelayData;->mOperationId:I

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecRelayData;->mDialogAttributes:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addDialogAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "aName"    # Ljava/lang/String;
    .param p2, "aValue"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecRelayData;->mDialogAttributes:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/ipsec/client/IPsecRelayData;->mDialogAttributes:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lcom/ipsec/client/IPsecRelayData;->mDialogAttributes:Ljava/util/Vector;

    new-instance v1, Lcom/ipsec/client/IPsecRelayData$AuthenticationDialogAttribute;

    invoke-direct {v1, p1, p2}, Lcom/ipsec/client/IPsecRelayData$AuthenticationDialogAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearDialogAttributes()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecRelayData;->mDialogAttributes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public getDataType()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecRelayData;->mSignature:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ipsec/client/IPsecRelayData;->mSignatureScheme:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ipsec/client/IPsecRelayData;->mSignatureInput:[B

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/ipsec/client/IPsecRelayData;->mDialogAttributes:Ljava/util/Vector;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDialogAttributes()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecRelayData$AuthenticationDialogAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecRelayData;->mDialogAttributes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/ipsec/client/IPsecRelayData;->mDialogAttributes:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDialogMessage()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecRelayData;->mDialogMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getHashAlgorithm()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOperationId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/ipsec/client/IPsecRelayData;->mOperationId:I

    return v0
.end method

.method protected getSignature()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecRelayData;->mSignature:[B

    return-object v0
.end method

.method public getSignatureData()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignatureInput()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecRelayData;->mSignatureInput:[B

    return-object v0
.end method

.method public getSignatureScheme()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/ipsec/client/IPsecRelayData;->mSignatureScheme:Ljava/lang/String;

    return-object v0
.end method

.method protected setDialogMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "aMessage"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/ipsec/client/IPsecRelayData;->mDialogMessage:Ljava/lang/String;

    return-void
.end method

.method public setOperationId(I)V
    .locals 0
    .param p1, "operationId"    # I

    .prologue
    iput p1, p0, Lcom/ipsec/client/IPsecRelayData;->mOperationId:I

    return-void
.end method

.method public setSignature([B)V
    .locals 0
    .param p1, "aSignature"    # [B

    .prologue
    iput-object p1, p0, Lcom/ipsec/client/IPsecRelayData;->mSignature:[B

    return-void
.end method

.method public setSignatureData([B)V
    .locals 0
    .param p1, "aSignatureData"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    return-void
.end method

.method protected setSignatureInput([B)V
    .locals 0
    .param p1, "aSignatureInput"    # [B

    .prologue
    iput-object p1, p0, Lcom/ipsec/client/IPsecRelayData;->mSignatureInput:[B

    return-void
.end method

.method protected setSignatureScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "aSignatureScheme"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/ipsec/client/IPsecRelayData;->mSignatureScheme:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IPsecRelayData{mOperationId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ipsec/client/IPsecRelayData;->mOperationId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDialogMessage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecRelayData;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDialogAttributes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecRelayData;->mDialogAttributes:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSignatureScheme"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecRelayData;->mSignatureScheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ipsec/client/IPsecRelayData;->mSignatureInput:[B

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSignatureInput=[length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecRelayData;->mSignatureInput:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/ipsec/client/IPsecRelayData;->mSignature:[B

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSignature=[length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecRelayData;->mSignature:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
