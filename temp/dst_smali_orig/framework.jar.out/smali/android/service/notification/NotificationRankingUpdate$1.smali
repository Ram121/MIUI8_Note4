.class final Landroid/service/notification/NotificationRankingUpdate$1;
.super Ljava/lang/Object;
.source "NotificationRankingUpdate.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationRankingUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/service/notification/NotificationRankingUpdate;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/notification/NotificationRankingUpdate;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    new-instance v0, Landroid/service/notification/NotificationRankingUpdate;

    invoke-direct {v0, p1}, Landroid/service/notification/NotificationRankingUpdate;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Landroid/service/notification/NotificationRankingUpdate$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/service/notification/NotificationRankingUpdate;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/service/notification/NotificationRankingUpdate;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/service/notification/NotificationRankingUpdate$1;->newArray(I)[Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v0

    return-object v0
.end method
