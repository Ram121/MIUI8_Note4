.class Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;
.super Ljava/lang/Object;
.source "IPSecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IPSecServiceStatus"
.end annotation


# instance fields
.field data:Lcom/ipsec/client/IPsecEventData;

.field error:Lcom/ipsec/client/IPsecError;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/IPSecAdapter$1;

    .prologue
    .line 1878
    invoke-direct {p0}, Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;-><init>()V

    return-void
.end method
