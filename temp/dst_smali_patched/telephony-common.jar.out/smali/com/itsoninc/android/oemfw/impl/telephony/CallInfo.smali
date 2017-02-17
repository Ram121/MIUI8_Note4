.class public Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;
.super Ljava/lang/Object;
.source "CallInfo.java"


# instance fields
.field final address:Ljava/lang/String;

.field final direction:I

.field final phoneId:I

.field started:Z

.field final subId:I

.field final uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "newCall"    # Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->uuid:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->address:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->getDirection()I

    move-result v0

    iput v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->direction:I

    invoke-virtual {p2}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->phoneId:I

    invoke-virtual {p2}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->getSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->subId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->started:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "direction"    # I
    .param p4, "phoneId"    # I
    .param p5, "subId"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->uuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->address:Ljava/lang/String;

    iput p3, p0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->direction:I

    iput p4, p0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->phoneId:I

    iput p5, p0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->subId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->started:Z

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->direction:I

    return v0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->phoneId:I

    return v0
.end method

.method public getSubscriptionId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->subId:I

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public isSame(Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;)Z
    .locals 2
    .param p1, "other"    # Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;

    .prologue
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->address:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->direction:I

    invoke-virtual {p1}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->getDirection()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->phoneId:I

    invoke-virtual {p1}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->getPhoneId()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->subId:I

    invoke-virtual {p1}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->getSubscriptionId()I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->address:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->started:Z

    return v0
.end method

.method public setStarted(Z)V
    .locals 0
    .param p1, "started"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->started:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->direction:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const-string v0, "MT"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sub="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->subId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "started="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/CallInfo;->started:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "MO"

    goto :goto_0
.end method