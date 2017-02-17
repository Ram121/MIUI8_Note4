.class public Lcom/android/server/wifi/hs20/WifiHs20Service;
.super Lcom/android/server/SystemService;
.source "WifiHs20Service.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiHs20Service"


# instance fields
.field final mImpl:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const-string v0, "WifiHs20Service"

    const-string v1, "Creating wifihs20"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20Service;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20Service;->mImpl:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20Service;->mImpl:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->systemServiceReady()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    const-string v0, "WifiHs20Service"

    const-string v1, "Registering wifihs20"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "wifihs20"

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20Service;->mImpl:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20Service;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method