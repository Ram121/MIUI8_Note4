.class public Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataSmartClip.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    return-void
.end method


# virtual methods
.method public GetSmartClip()Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 1
    .param p1, "format"    # I
    .param p2, "altData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public SetSmartClip(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z
    .locals 1
    .param p1, "smartClip"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public clearData()V
    .locals 0

    .prologue
    return-void
.end method

.method public getBmpImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public isValidData()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    return-void
.end method

.method protected readFromSource(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    return-void
.end method

.method public setBmpImagePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "Path"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    return-void
.end method
