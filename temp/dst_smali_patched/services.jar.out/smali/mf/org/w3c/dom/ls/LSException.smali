.class public Lmf/org/w3c/dom/ls/LSException;
.super Ljava/lang/RuntimeException;
.source "LSException.java"


# static fields
.field public static final PARSE_ERR:S = 0x51s

.field public static final SERIALIZE_ERR:S = 0x52s


# instance fields
.field public code:S


# direct methods
.method public constructor <init>(SLjava/lang/String;)V
    .locals 0
    .param p1, "code"    # S
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-short p1, p0, Lmf/org/w3c/dom/ls/LSException;->code:S

    return-void
.end method
