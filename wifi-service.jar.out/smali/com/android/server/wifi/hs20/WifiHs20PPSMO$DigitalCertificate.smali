.class public Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;
.super Ljava/lang/Object;
.source "WifiHs20PPSMO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DigitalCertificate"
.end annotation


# instance fields
.field public certID:I

.field public certSHA256FingerPrint:Ljava/lang/String;

.field public certificateType:Ljava/lang/String;

.field public clientcertHash:Ljava/lang/String;

.field public privateKeyHash:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method