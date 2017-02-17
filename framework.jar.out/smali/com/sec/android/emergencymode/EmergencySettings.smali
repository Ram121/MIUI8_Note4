.class public Lcom/sec/android/emergencymode/EmergencySettings;
.super Ljava/lang/Object;
.source "EmergencySettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EmergencySettings"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private static get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 65
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-object v8

    .line 68
    :cond_1
    const/4 v8, 0x0

    .line 69
    .local v8, "ret":Ljava/lang/String;
    const/4 v6, 0x0

    .line 71
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pref=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Lcom/sec/android/emergencymode/EmergencyConstants;->URI_PREFSETTINGS:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 73
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 74
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 75
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 76
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_2
    if-eqz v6, :cond_0

    .line 82
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 78
    .end local v3    # "selection":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 79
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "EmergencySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    if-eqz v6, :cond_0

    .line 82
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 81
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 82
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 114
    invoke-static {p0, p1}, Lcom/sec/android/emergencymode/EmergencySettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 118
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0
.end method

.method public static getDouble(Landroid/content/ContentResolver;Ljava/lang/String;D)D
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 164
    invoke-static {p0, p1}, Lcom/sec/android/emergencymode/EmergencySettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "ret":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 169
    .end local p2    # "defaultValue":D
    :goto_0
    return-wide p2

    .line 167
    .restart local p2    # "defaultValue":D
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getEmergencyNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 188
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 189
    :cond_0
    const/4 v15, 0x0

    .line 230
    :cond_1
    :goto_0
    return-object v15

    .line 191
    :cond_2
    const/4 v15, 0x0

    .line 192
    .local v15, "ret":Ljava/lang/String;
    const/4 v8, 0x0

    .line 193
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 194
    .local v11, "isReady":Z
    const/4 v12, 0x1

    .line 196
    .local v12, "mState":I
    const/4 v14, 0x0

    .line 197
    .local v14, "mccmnc":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v1

    if-ge v10, v1, :cond_6

    .line 199
    if-eqz v14, :cond_3

    const-string v1, ""

    if-eq v14, v1, :cond_3

    const/4 v1, 0x1

    if-ne v12, v1, :cond_4

    .line 200
    :cond_3
    invoke-static {v10}, Lcom/samsung/android/telephony/MultiSimManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v14

    .line 202
    :cond_4
    invoke-static {v10}, Lcom/samsung/android/telephony/MultiSimManager;->getSimState(I)I

    move-result v12

    .line 203
    const/4 v1, 0x5

    if-ne v12, v1, :cond_5

    .line 204
    const/4 v11, 0x1

    .line 197
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 206
    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v14, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 207
    .local v13, "mcc":Ljava/lang/String;
    const-string v1, "EmergencySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEmergencyNumber requested Country : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sim ready = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mcc=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, "selection":Ljava/lang/String;
    sget-object v2, Lcom/sec/android/emergencymode/EmergencyConstants;->URI_ECCLIST:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 211
    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    .line 212
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 213
    move-object/from16 v0, p1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/sec/android/emergencymode/EmergencySettings;->makeEmergencyNumber(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    .line 218
    :cond_7
    if-eqz v8, :cond_8

    .line 219
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_8
    if-nez v15, :cond_1

    .line 221
    const-string v1, "EmergencySettings"

    const-string v2, "getEmergencyNumber not found emergency number!"

    invoke-static {v1, v2}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 223
    .local v7, "countryCode":Ljava/lang/String;
    const-string v1, "China"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 224
    const-string v15, "119"

    goto/16 :goto_0

    .line 226
    :cond_9
    const-string v15, "911"

    goto/16 :goto_0

    .line 215
    .end local v4    # "selection":Ljava/lang/String;
    .end local v7    # "countryCode":Ljava/lang/String;
    .end local v13    # "mcc":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 216
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "EmergencySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    if-eqz v8, :cond_a

    .line 219
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_a
    if-nez v15, :cond_1

    .line 221
    const-string v1, "EmergencySettings"

    const-string v2, "getEmergencyNumber not found emergency number!"

    invoke-static {v1, v2}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 223
    .restart local v7    # "countryCode":Ljava/lang/String;
    const-string v1, "China"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 224
    const-string v15, "119"

    goto/16 :goto_0

    .line 226
    :cond_b
    const-string v15, "911"

    goto/16 :goto_0

    .line 218
    .end local v7    # "countryCode":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_c

    .line 219
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_c
    if-nez v15, :cond_d

    .line 221
    const-string v2, "EmergencySettings"

    const-string v3, "getEmergencyNumber not found emergency number!"

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 223
    .restart local v7    # "countryCode":Ljava/lang/String;
    const-string v2, "China"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 224
    const-string v15, "119"

    .line 228
    .end local v7    # "countryCode":Ljava/lang/String;
    :cond_d
    :goto_2
    throw v1

    .line 226
    .restart local v7    # "countryCode":Ljava/lang/String;
    :cond_e
    const-string v15, "911"

    goto :goto_2
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 96
    invoke-static {p0, p1}, Lcom/sec/android/emergencymode/EmergencySettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "ret":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 101
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 99
    .restart local p2    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 146
    invoke-static {p0, p1}, Lcom/sec/android/emergencymode/EmergencySettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "ret":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 151
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .line 149
    .restart local p2    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EmergencySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-static {p0, p1}, Lcom/sec/android/emergencymode/EmergencySettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 134
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method private static isPossibleNormalCall()Z
    .locals 7

    .prologue
    .line 253
    const/4 v2, 0x0

    .line 255
    .local v2, "return_val":Z
    :try_start_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 256
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 257
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getServiceState()I

    move-result v3

    .line 258
    .local v3, "serviceState":I
    const-string v4, "EmergencySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "serviceState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    if-nez v3, :cond_0

    .line 260
    const/4 v2, 0x1

    .line 268
    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    .end local v3    # "serviceState":I
    :cond_0
    :goto_0
    return v2

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "EmergencySettings"

    const-string v5, "Failed to clear missed calls notification due to remote exception"

    invoke-static {v4, v5}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    goto :goto_0

    .line 265
    :catch_1
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static makeEmergencyNumber(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "isReady"    # Z

    .prologue
    .line 234
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const-string v0, "EmergencySettings"

    const-string v1, "This is Emergency number"

    invoke-static {v0, v1}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .end local p0    # "number":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 239
    .restart local p0    # "number":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/android/emergencymode/EmergencySettings;->isPossibleNormalCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    const-string v0, "EmergencySettings"

    const-string v1, "SIM Ready, not emergency number."

    invoke-static {v0, v1}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_1
    const-string v0, "EmergencySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM Ready = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", default emergency number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static put(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pref=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "selection":Ljava/lang/String;
    sget-object v3, Lcom/sec/android/emergencymode/EmergencyConstants;->URI_PREFSETTINGS:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 58
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 59
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "pref"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v3, "value"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v3, Lcom/sec/android/emergencymode/EmergencyConstants;->URI_PREFSETTINGS:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 62
    .local v0, "resultUri":Landroid/net/Uri;
    goto :goto_0
.end method
