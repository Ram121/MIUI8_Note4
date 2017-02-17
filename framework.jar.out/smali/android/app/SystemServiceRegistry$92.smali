.class final Landroid/app/SystemServiceRegistry$92;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Lcom/samsung/android/quickconnect/QuickConnectManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1128
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Lcom/samsung/android/quickconnect/QuickConnectManager;
    .locals 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 1130
    const-string/jumbo v2, "quickconnect"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1131
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/quickconnect/IQuickConnectManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/quickconnect/IQuickConnectManager;

    move-result-object v1

    .line 1132
    .local v1, "service":Lcom/samsung/android/quickconnect/IQuickConnectManager;
    new-instance v2, Lcom/samsung/android/quickconnect/QuickConnectManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/quickconnect/QuickConnectManager;-><init>(Landroid/content/Context;Lcom/samsung/android/quickconnect/IQuickConnectManager;)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/app/ContextImpl;

    .prologue
    .line 1128
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$92;->createService(Landroid/app/ContextImpl;)Lcom/samsung/android/quickconnect/QuickConnectManager;

    move-result-object v0

    return-object v0
.end method
