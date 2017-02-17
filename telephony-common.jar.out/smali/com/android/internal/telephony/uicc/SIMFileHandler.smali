.class public final Lcom/android/internal/telephony/uicc/SIMFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "SIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SIMFileHandler"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected getEFPath(I)Ljava/lang/String;
    .locals 11
    .param p1, "efid"    # I

    .prologue
    const/16 v10, 0x6f22

    const/16 v9, 0x4f22

    const/16 v8, 0x4f21

    const/16 v7, 0x4f20

    const/4 v6, 0x1

    .line 52
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-le v3, v6, :cond_f

    .line 53
    const-string v3, "CTC"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMFileHandler;->getPhoneId()I

    move-result v3

    if-nez v3, :cond_6

    .line 55
    const-string v3, "ril.IsCSIM"

    const/4 v4, 0x0

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 56
    .local v1, "isCsim":I
    const/16 v3, 0x6f3c

    if-ne p1, v3, :cond_2

    .line 57
    invoke-static {}, Landroid/telephony/TelephonyManager;->isSelectTelecomDF()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    const-string v3, "3F007F10"

    .line 162
    .end local v1    # "isCsim":I
    :goto_0
    return-object v3

    .line 60
    .restart local v1    # "isCsim":I
    :cond_0
    if-ne v1, v6, :cond_1

    .line 61
    const-string v3, "3F007FFF"

    goto :goto_0

    .line 63
    :cond_1
    const-string v3, "3F007F25"

    goto :goto_0

    .line 66
    :cond_2
    if-ne p1, v10, :cond_4

    .line 67
    if-ne v1, v6, :cond_3

    .line 68
    const-string v3, "3F007FFF"

    goto :goto_0

    .line 70
    :cond_3
    const-string v3, "3F007F25"

    goto :goto_0

    .line 72
    :cond_4
    if-eq p1, v7, :cond_5

    if-eq p1, v8, :cond_5

    if-ne p1, v9, :cond_f

    .line 73
    :cond_5
    const-string v3, "3F007F105F3C"

    goto :goto_0

    .line 75
    .end local v1    # "isCsim":I
    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 78
    :cond_7
    const-string v3, "ril.ICC_TYPE"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMFileHandler;->getPhoneId()I

    move-result v4

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 79
    .local v0, "icctype":I
    const/4 v3, 0x4

    if-eq v0, v3, :cond_8

    const/4 v3, 0x3

    if-ne v0, v3, :cond_f

    .line 80
    :cond_8
    const-string v3, "ril.IsCSIM"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMFileHandler;->getPhoneId()I

    move-result v4

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 81
    .restart local v1    # "isCsim":I
    const/16 v3, 0x6f3c

    if-ne p1, v3, :cond_b

    .line 82
    invoke-static {}, Landroid/telephony/TelephonyManager;->isSelectTelecomDF()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 83
    const-string v3, "3F007F10"

    goto :goto_0

    .line 85
    :cond_9
    if-ne v1, v6, :cond_a

    .line 86
    const-string v3, "3F007FFF"

    goto :goto_0

    .line 88
    :cond_a
    const-string v3, "3F007F25"

    goto :goto_0

    .line 91
    :cond_b
    if-ne p1, v10, :cond_d

    .line 92
    if-ne v1, v6, :cond_c

    .line 93
    const-string v3, "3F007FFF"

    goto :goto_0

    .line 95
    :cond_c
    const-string v3, "3F007F25"

    goto :goto_0

    .line 97
    :cond_d
    if-eq p1, v7, :cond_e

    if-eq p1, v8, :cond_e

    if-ne p1, v9, :cond_f

    .line 98
    :cond_e
    const-string v3, "3F007F105F3C"

    goto/16 :goto_0

    .line 103
    .end local v0    # "icctype":I
    .end local v1    # "isCsim":I
    :cond_f
    sparse-switch p1, :sswitch_data_0

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "path":Ljava/lang/String;
    if-nez v2, :cond_10

    .line 160
    const-string v3, "SIMFileHandler"

    const-string v4, "Error: EF Path being returned in null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move-object v3, v2

    .line 162
    goto/16 :goto_0

    .line 106
    .end local v2    # "path":Ljava/lang/String;
    :sswitch_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->isSelectTelecomDF()Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "3F007F25"

    goto/16 :goto_0

    :cond_11
    const-string v3, "3F007F10"

    goto/16 :goto_0

    .line 109
    :sswitch_1
    const-string v3, "3F007F10"

    goto/16 :goto_0

    .line 127
    :sswitch_2
    const-string v3, "3F007F20"

    goto/16 :goto_0

    .line 136
    :sswitch_3
    const-string v3, "3F007F20"

    goto/16 :goto_0

    .line 141
    :sswitch_4
    const-string v3, "3F007FFF5F3D"

    goto/16 :goto_0

    .line 147
    :sswitch_5
    const-string v3, "3F007F105F3A"

    goto/16 :goto_0

    .line 152
    :sswitch_6
    const-string v3, "3F007F43"

    goto/16 :goto_0

    .line 103
    :sswitch_data_0
    .sparse-switch
        0x4f22 -> :sswitch_4
        0x4f30 -> :sswitch_5
        0x4f55 -> :sswitch_4
        0x6f02 -> :sswitch_6
        0x6f11 -> :sswitch_3
        0x6f13 -> :sswitch_3
        0x6f14 -> :sswitch_3
        0x6f15 -> :sswitch_3
        0x6f16 -> :sswitch_3
        0x6f17 -> :sswitch_3
        0x6f18 -> :sswitch_3
        0x6f38 -> :sswitch_2
        0x6f3c -> :sswitch_0
        0x6f3e -> :sswitch_2
        0x6f3f -> :sswitch_2
        0x6f42 -> :sswitch_1
        0x6f46 -> :sswitch_2
        0x6fad -> :sswitch_2
        0x6fc5 -> :sswitch_2
        0x6fc6 -> :sswitch_2
        0x6fc7 -> :sswitch_2
        0x6fc8 -> :sswitch_2
        0x6fc9 -> :sswitch_2
        0x6fca -> :sswitch_2
        0x6fcb -> :sswitch_2
        0x6fcd -> :sswitch_2
        0x6fe5 -> :sswitch_1
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 167
    const-string v0, "SIMFileHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 172
    const-string v0, "SIMFileHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void
.end method