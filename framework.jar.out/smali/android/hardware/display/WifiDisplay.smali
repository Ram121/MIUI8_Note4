.class public final Landroid/hardware/display/WifiDisplay;
.super Ljava/lang/Object;
.source "WifiDisplay.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/hardware/display/WifiDisplay;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/display/WifiDisplay;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;


# instance fields
.field private final mCanConnect:Z

.field private mDevInfo:I

.field private final mDeviceAddress:Ljava/lang/String;

.field private final mDeviceAlias:Ljava/lang/String;

.field private final mDeviceName:Ljava/lang/String;

.field private final mIsAvailable:Z

.field private final mIsRemembered:Z

.field private mPrimaryDeviceType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/display/WifiDisplay;

    sput-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    .line 46
    new-instance v0, Landroid/hardware/display/WifiDisplay$1;

    invoke-direct {v0}, Landroid/hardware/display/WifiDisplay$1;-><init>()V

    sput-object v0, Landroid/hardware/display/WifiDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "deviceAlias"    # Ljava/lang/String;
    .param p4, "available"    # Z
    .param p5, "canConnect"    # Z
    .param p6, "remembered"    # Z

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/display/WifiDisplay;->mDevInfo:I

    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceAddress must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    if-nez p2, :cond_1

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    iput-object p1, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAddress:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Landroid/hardware/display/WifiDisplay;->mDeviceName:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    .line 87
    iput-boolean p4, p0, Landroid/hardware/display/WifiDisplay;->mIsAvailable:Z

    .line 88
    iput-boolean p5, p0, Landroid/hardware/display/WifiDisplay;->mCanConnect:Z

    .line 89
    iput-boolean p6, p0, Landroid/hardware/display/WifiDisplay;->mIsRemembered:Z

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "deviceAlias"    # Ljava/lang/String;
    .param p4, "available"    # Z
    .param p5, "canConnect"    # Z
    .param p6, "remembered"    # Z
    .param p7, "primaryDeviceType"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/display/WifiDisplay;->mDevInfo:I

    .line 96
    if-nez p1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceAddress must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    if-nez p2, :cond_1

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    iput-object p1, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAddress:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Landroid/hardware/display/WifiDisplay;->mDeviceName:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    .line 106
    iput-boolean p4, p0, Landroid/hardware/display/WifiDisplay;->mIsAvailable:Z

    .line 107
    iput-boolean p5, p0, Landroid/hardware/display/WifiDisplay;->mCanConnect:Z

    .line 108
    iput-boolean p6, p0, Landroid/hardware/display/WifiDisplay;->mIsRemembered:Z

    .line 110
    iput-object p7, p0, Landroid/hardware/display/WifiDisplay;->mPrimaryDeviceType:Ljava/lang/String;

    .line 111
    return-void
.end method


# virtual methods
.method public canConnect()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Landroid/hardware/display/WifiDisplay;->mCanConnect:Z

    return v0
.end method

.method public compareTo(Landroid/hardware/display/WifiDisplay;)I
    .locals 2
    .param p1, "other"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 302
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 303
    :cond_0
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceName:Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/display/WifiDisplay;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 305
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, Landroid/hardware/display/WifiDisplay;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplay;->compareTo(Landroid/hardware/display/WifiDisplay;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Landroid/hardware/display/WifiDisplay;)Z
    .locals 2
    .param p1, "other"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 239
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/display/WifiDisplay;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceName:Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/display/WifiDisplay;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 230
    instance-of v0, p1, Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/hardware/display/WifiDisplay;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInfo()I
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendlyDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPrimaryDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mPrimaryDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mPrimaryDeviceType:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z
    .locals 2
    .param p1, "other"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 252
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/display/WifiDisplay;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Landroid/hardware/display/WifiDisplay;->mIsAvailable:Z

    return v0
.end method

.method public isRemembered()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Landroid/hardware/display/WifiDisplay;->mIsRemembered:Z

    return v0
.end method

.method public setDeviceInfo(I)V
    .locals 0
    .param p1, "devInfo"    # I

    .prologue
    .line 223
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/hardware/display/WifiDisplay;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", alias "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isAvailable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/display/WifiDisplay;->mIsAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", canConnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/display/WifiDisplay;->mCanConnect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isRemembered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/display/WifiDisplay;->mIsRemembered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPrimaryDeviceType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/WifiDisplay;->mPrimaryDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDevInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/display/WifiDisplay;->mDevInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 265
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    iget-boolean v0, p0, Landroid/hardware/display/WifiDisplay;->mIsAvailable:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget-boolean v0, p0, Landroid/hardware/display/WifiDisplay;->mCanConnect:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget-boolean v0, p0, Landroid/hardware/display/WifiDisplay;->mIsRemembered:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mPrimaryDeviceType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    return-void

    :cond_0
    move v0, v2

    .line 268
    goto :goto_0

    :cond_1
    move v0, v2

    .line 269
    goto :goto_1

    :cond_2
    move v1, v2

    .line 270
    goto :goto_2
.end method
