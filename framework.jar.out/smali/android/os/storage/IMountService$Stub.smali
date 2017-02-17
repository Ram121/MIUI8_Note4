.class public abstract Landroid/os/storage/IMountService$Stub;
.super Landroid/os/Binder;
.source "IMountService.java"

# interfaces
.implements Landroid/os/storage/IMountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IMountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IMountService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IMountService"

.field static final TRANSACTION_benchmark:I = 0x3c

.field static final TRANSACTION_changeEncryptionPassword:I = 0x1d

.field static final TRANSACTION_changeEncryptionPassword2:I = 0xcb

.field static final TRANSACTION_clearPassword:I = 0x26

.field static final TRANSACTION_createNewUserDir:I = 0x3f

.field static final TRANSACTION_createSecureContainer:I = 0xb

.field static final TRANSACTION_cryptoMount:I = 0xcc

.field static final TRANSACTION_decryptStorage:I = 0x1b

.field static final TRANSACTION_deleteUserKey:I = 0x40

.field static final TRANSACTION_destroySecureContainer:I = 0xd

.field static final TRANSACTION_disableStorageEncryption:I = 0xca

.field static final TRANSACTION_encryptStorage:I = 0x1c

.field static final TRANSACTION_finalizeSecureContainer:I = 0xc

.field static final TRANSACTION_finishMediaUpdate:I = 0x15

.field static final TRANSACTION_fixPermissionsSecureContainer:I = 0x22

.field static final TRANSACTION_forgetAllVolumes:I = 0x39

.field static final TRANSACTION_forgetVolume:I = 0x38

.field static final TRANSACTION_format:I = 0x32

.field static final TRANSACTION_formatVolume:I = 0x8

.field static final TRANSACTION_getCCmodeForCryptKeeper:I = 0xd4

.field static final TRANSACTION_getCurrentEncryptionFailCount:I = 0xd5

.field static final TRANSACTION_getDisks:I = 0x2d

.field static final TRANSACTION_getEncryptionState:I = 0x20

.field static final TRANSACTION_getField:I = 0x28

.field static final TRANSACTION_getMountedObbPath:I = 0x19

.field static final TRANSACTION_getPassword:I = 0x25

.field static final TRANSACTION_getPasswordType:I = 0x24

.field static final TRANSACTION_getPrimaryStorageUuid:I = 0x3a

.field static final TRANSACTION_getPropertyFromFooter:I = 0xd1

.field static final TRANSACTION_getSecureContainerFilesystemPath:I = 0x1f

.field static final TRANSACTION_getSecureContainerList:I = 0x13

.field static final TRANSACTION_getSecureContainerPath:I = 0x12

.field static final TRANSACTION_getStorageUsers:I = 0x9

.field static final TRANSACTION_getVolumeList:I = 0x1e

.field static final TRANSACTION_getVolumeRecords:I = 0x2f

.field static final TRANSACTION_getVolumeState:I = 0xa

.field static final TRANSACTION_getVolumes:I = 0x2e

.field static final TRANSACTION_isEncryptedWithForceEncrypt:I = 0xd2

.field static final TRANSACTION_isExternalStorageEmulated:I = 0x1a

.field static final TRANSACTION_isObbMounted:I = 0x18

.field static final TRANSACTION_isSecureContainerMounted:I = 0x10

.field static final TRANSACTION_isStorageFullyEncrypted:I = 0xce

.field static final TRANSACTION_isUsbMassStorageConnected:I = 0x3

.field static final TRANSACTION_isUsbMassStorageEnabled:I = 0x5

.field static final TRANSACTION_lastMaintenance:I = 0x2a

.field static final TRANSACTION_mkdirs:I = 0x23

.field static final TRANSACTION_mount:I = 0x30

.field static final TRANSACTION_mountObb:I = 0x16

.field static final TRANSACTION_mountSecureContainer:I = 0xe

.field static final TRANSACTION_mountVolume:I = 0x6

.field static final TRANSACTION_moveDumpstates:I = 0xcf

.field static final TRANSACTION_odeNativeTest:I = 0xd3

.field static final TRANSACTION_partitionMixed:I = 0x35

.field static final TRANSACTION_partitionPrivate:I = 0x34

.field static final TRANSACTION_partitionPublic:I = 0x33

.field static final TRANSACTION_prepareDecryptOnRecovery:I = 0xc9

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_renameSecureContainer:I = 0x11

.field static final TRANSACTION_resizeSecureContainer:I = 0x29

.field static final TRANSACTION_runMaintenance:I = 0x2b

.field static final TRANSACTION_setDebugFlags:I = 0x3d

.field static final TRANSACTION_setField:I = 0x27

.field static final TRANSACTION_setNullSDCardPassword:I = 0xcd

.field static final TRANSACTION_setPrimaryStorageUuid:I = 0x3b

.field static final TRANSACTION_setPropertyIntoFooter:I = 0xd0

.field static final TRANSACTION_setUsbMassStorageEnabled:I = 0x4

.field static final TRANSACTION_setVolumeNickname:I = 0x36

.field static final TRANSACTION_setVolumeState:I = 0x69

.field static final TRANSACTION_setVolumeUserFlags:I = 0x37

.field static final TRANSACTION_shutdown:I = 0x14

.field static final TRANSACTION_unmount:I = 0x31

.field static final TRANSACTION_unmountObb:I = 0x17

.field static final TRANSACTION_unmountSecureContainer:I = 0xf

.field static final TRANSACTION_unmountVolume:I = 0x7

.field static final TRANSACTION_unregisterListener:I = 0x2

.field static final TRANSACTION_verifyEncryptionPassword:I = 0x21

.field static final TRANSACTION_waitForAsecScan:I = 0x2c


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1646
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1647
    const-string v0, "IMountService"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IMountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1648
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 1635
    if-nez p0, :cond_0

    .line 1636
    const/4 v0, 0x0

    .line 1642
    :goto_0
    return-object v0

    .line 1638
    :cond_0
    const-string v1, "IMountService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1639
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/storage/IMountService;

    if-eqz v1, :cond_1

    .line 1640
    check-cast v0, Landroid/os/storage/IMountService;

    goto :goto_0

    .line 1642
    :cond_1
    new-instance v0, Landroid/os/storage/IMountService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/storage/IMountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 1651
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 64
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1657
    sparse-switch p1, :sswitch_data_0

    .line 2340
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 1659
    :sswitch_0
    const-string v4, "IMountService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1660
    const/4 v4, 0x1

    goto :goto_0

    .line 1663
    :sswitch_1
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v31

    .line 1666
    .local v31, "listener":Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->registerListener(Landroid/os/storage/IMountServiceListener;)V

    .line 1667
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1668
    const/4 v4, 0x1

    goto :goto_0

    .line 1671
    .end local v31    # "listener":Landroid/os/storage/IMountServiceListener;
    :sswitch_2
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v31

    .line 1674
    .restart local v31    # "listener":Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unregisterListener(Landroid/os/storage/IMountServiceListener;)V

    .line 1675
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1676
    const/4 v4, 0x1

    goto :goto_0

    .line 1679
    .end local v31    # "listener":Landroid/os/storage/IMountServiceListener;
    :sswitch_3
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1680
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageConnected()Z

    move-result v51

    .line 1681
    .local v51, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1682
    if-eqz v51, :cond_0

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1683
    const/4 v4, 0x1

    goto :goto_0

    .line 1682
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 1686
    .end local v51    # "result":Z
    :sswitch_4
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1688
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v24, 0x1

    .line 1689
    .local v24, "enable":Z
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->setUsbMassStorageEnabled(Z)V

    .line 1690
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1691
    const/4 v4, 0x1

    goto :goto_0

    .line 1688
    .end local v24    # "enable":Z
    :cond_1
    const/16 v24, 0x0

    goto :goto_2

    .line 1694
    :sswitch_5
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1695
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageEnabled()Z

    move-result v51

    .line 1696
    .restart local v51    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1697
    if-eqz v51, :cond_2

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1698
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1697
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .line 1701
    .end local v51    # "result":Z
    :sswitch_6
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1703
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 1704
    .local v35, "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mountVolume(Ljava/lang/String;)I

    move-result v54

    .line 1705
    .local v54, "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1706
    move-object/from16 v0, p3

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1707
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1710
    .end local v35    # "mountPoint":Ljava/lang/String;
    .end local v54    # "resultCode":I
    :sswitch_7
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1712
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 1713
    .restart local v35    # "mountPoint":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v27, 0x1

    .line 1714
    .local v27, "force":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    const/16 v50, 0x1

    .line 1715
    .local v50, "removeEncrypt":Z
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v27

    move/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 1716
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1717
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1713
    .end local v27    # "force":Z
    .end local v50    # "removeEncrypt":Z
    :cond_3
    const/16 v27, 0x0

    goto :goto_4

    .line 1714
    .restart local v27    # "force":Z
    :cond_4
    const/16 v50, 0x0

    goto :goto_5

    .line 1720
    .end local v27    # "force":Z
    .end local v35    # "mountPoint":Ljava/lang/String;
    :sswitch_8
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1722
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 1723
    .restart local v35    # "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->formatVolume(Ljava/lang/String;)I

    move-result v51

    .line 1724
    .local v51, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1725
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1726
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1729
    .end local v35    # "mountPoint":Ljava/lang/String;
    .end local v51    # "result":I
    :sswitch_9
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    .line 1732
    .local v46, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v47

    .line 1733
    .local v47, "pids":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1734
    move-object/from16 v0, p3

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1735
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1738
    .end local v46    # "path":Ljava/lang/String;
    .end local v47    # "pids":[I
    :sswitch_a
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1740
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 1741
    .restart local v35    # "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 1742
    .local v55, "state":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1743
    move-object/from16 v0, p3

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1744
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1747
    .end local v35    # "mountPoint":Ljava/lang/String;
    .end local v55    # "state":Ljava/lang/String;
    :sswitch_b
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1751
    .local v5, "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1753
    .local v6, "sizeMb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1755
    .local v7, "fstype":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1757
    .local v8, "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1759
    .local v9, "ownerUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v10, 0x1

    .local v10, "external":Z
    :goto_6
    move-object/from16 v4, p0

    .line 1760
    invoke-virtual/range {v4 .. v10}, Landroid/os/storage/IMountService$Stub;->createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I

    move-result v54

    .line 1762
    .restart local v54    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1763
    move-object/from16 v0, p3

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1764
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1759
    .end local v10    # "external":Z
    .end local v54    # "resultCode":I
    :cond_5
    const/4 v10, 0x0

    goto :goto_6

    .line 1767
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "sizeMb":I
    .end local v7    # "fstype":Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "ownerUid":I
    :sswitch_c
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1769
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1770
    .restart local v5    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/storage/IMountService$Stub;->finalizeSecureContainer(Ljava/lang/String;)I

    move-result v54

    .line 1771
    .restart local v54    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1772
    move-object/from16 v0, p3

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1773
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1776
    .end local v5    # "id":Ljava/lang/String;
    .end local v54    # "resultCode":I
    :sswitch_d
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1778
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1780
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    const/16 v27, 0x1

    .line 1781
    .restart local v27    # "force":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v5, v1}, Landroid/os/storage/IMountService$Stub;->destroySecureContainer(Ljava/lang/String;Z)I

    move-result v54

    .line 1782
    .restart local v54    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1783
    move-object/from16 v0, p3

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1784
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1780
    .end local v27    # "force":Z
    .end local v54    # "resultCode":I
    :cond_6
    const/16 v27, 0x0

    goto :goto_7

    .line 1787
    .end local v5    # "id":Ljava/lang/String;
    :sswitch_e
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1789
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1791
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1793
    .restart local v8    # "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1795
    .restart local v9    # "ownerUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    const/16 v49, 0x1

    .line 1796
    .local v49, "readOnly":Z
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v5, v8, v9, v1}, Landroid/os/storage/IMountService$Stub;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v54

    .line 1797
    .restart local v54    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1798
    move-object/from16 v0, p3

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1799
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1795
    .end local v49    # "readOnly":Z
    .end local v54    # "resultCode":I
    :cond_7
    const/16 v49, 0x0

    goto :goto_8

    .line 1802
    .end local v5    # "id":Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "ownerUid":I
    :sswitch_f
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1804
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1806
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    const/16 v27, 0x1

    .line 1807
    .restart local v27    # "force":Z
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v5, v1}, Landroid/os/storage/IMountService$Stub;->unmountSecureContainer(Ljava/lang/String;Z)I

    move-result v54

    .line 1808
    .restart local v54    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1809
    move-object/from16 v0, p3

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1810
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1806
    .end local v27    # "force":Z
    .end local v54    # "resultCode":I
    :cond_8
    const/16 v27, 0x0

    goto :goto_9

    .line 1813
    .end local v5    # "id":Ljava/lang/String;
    :sswitch_10
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1815
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1816
    .restart local v5    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/storage/IMountService$Stub;->isSecureContainerMounted(Ljava/lang/String;)Z

    move-result v56

    .line 1817
    .local v56, "status":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1818
    if-eqz v56, :cond_9

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1819
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1818
    :cond_9
    const/4 v4, 0x0

    goto :goto_a

    .line 1822
    .end local v5    # "id":Ljava/lang/String;
    .end local v56    # "status":Z
    :sswitch_11
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1824
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v42

    .line 1826
    .local v42, "oldId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    .line 1827
    .local v39, "newId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v54

    .line 1828
    .restart local v54    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1829
    move-object/from16 v0, p3

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1830
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1833
    .end local v39    # "newId":Ljava/lang/String;
    .end local v42    # "oldId":Ljava/lang/String;
    .end local v54    # "resultCode":I
    :sswitch_12
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1835
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1836
    .restart local v5    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/storage/IMountService$Stub;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 1837
    .restart local v46    # "path":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1838
    move-object/from16 v0, p3

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1839
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1842
    .end local v5    # "id":Ljava/lang/String;
    .end local v46    # "path":Ljava/lang/String;
    :sswitch_13
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1843
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v30

    .line 1844
    .local v30, "ids":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1845
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1846
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1849
    .end local v30    # "ids":[Ljava/lang/String;
    :sswitch_14
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1851
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountShutdownObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountShutdownObserver;

    move-result-object v15

    .line 1853
    .local v15, "observer":Landroid/os/storage/IMountShutdownObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/os/storage/IMountService$Stub;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V

    .line 1854
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1855
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1858
    .end local v15    # "observer":Landroid/os/storage/IMountShutdownObserver;
    :sswitch_15
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1859
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->finishMediaUpdate()V

    .line 1860
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1861
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1864
    :sswitch_16
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1865
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1866
    .local v12, "rawPath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1867
    .local v13, "canonicalPath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1869
    .restart local v8    # "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v15

    .line 1871
    .local v15, "observer":Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .local v16, "nonce":I
    move-object/from16 v11, p0

    move-object v14, v8

    .line 1872
    invoke-virtual/range {v11 .. v16}, Landroid/os/storage/IMountService$Stub;->mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V

    .line 1873
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1874
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1877
    .end local v8    # "key":Ljava/lang/String;
    .end local v12    # "rawPath":Ljava/lang/String;
    .end local v13    # "canonicalPath":Ljava/lang/String;
    .end local v15    # "observer":Landroid/os/storage/IObbActionListener;
    .end local v16    # "nonce":I
    :sswitch_17
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1879
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 1881
    .local v26, "filename":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    const/16 v27, 0x1

    .line 1883
    .restart local v27    # "force":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v15

    .line 1885
    .restart local v15    # "observer":Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1886
    .restart local v16    # "nonce":I
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/os/storage/IMountService$Stub;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V

    .line 1887
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1888
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1881
    .end local v15    # "observer":Landroid/os/storage/IObbActionListener;
    .end local v16    # "nonce":I
    .end local v27    # "force":Z
    :cond_a
    const/16 v27, 0x0

    goto :goto_b

    .line 1891
    .end local v26    # "filename":Ljava/lang/String;
    :sswitch_18
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1893
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 1894
    .restart local v26    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->isObbMounted(Ljava/lang/String;)Z

    move-result v56

    .line 1895
    .restart local v56    # "status":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1896
    if-eqz v56, :cond_b

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1897
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1896
    :cond_b
    const/4 v4, 0x0

    goto :goto_c

    .line 1900
    .end local v26    # "filename":Ljava/lang/String;
    .end local v56    # "status":Z
    :sswitch_19
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1902
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 1903
    .restart local v26    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1904
    .local v36, "mountedPath":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1905
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1906
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1909
    .end local v26    # "filename":Ljava/lang/String;
    .end local v36    # "mountedPath":Ljava/lang/String;
    :sswitch_1a
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1910
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isExternalStorageEmulated()Z

    move-result v23

    .line 1911
    .local v23, "emulated":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1912
    if-eqz v23, :cond_c

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1913
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1912
    :cond_c
    const/4 v4, 0x0

    goto :goto_d

    .line 1916
    .end local v23    # "emulated":Z
    :sswitch_1b
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1917
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v45

    .line 1918
    .local v45, "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->decryptStorage(Ljava/lang/String;)I

    move-result v51

    .line 1919
    .restart local v51    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1920
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1921
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1924
    .end local v45    # "password":Ljava/lang/String;
    .end local v51    # "result":I
    :sswitch_1c
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1925
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v57

    .line 1926
    .local v57, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v45

    .line 1927
    .restart local v45    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v57

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->encryptStorage(ILjava/lang/String;)I

    move-result v51

    .line 1928
    .restart local v51    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1929
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1930
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1933
    .end local v45    # "password":Ljava/lang/String;
    .end local v51    # "result":I
    .end local v57    # "type":I
    :sswitch_1d
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1934
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v57

    .line 1935
    .restart local v57    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v45

    .line 1936
    .restart local v45    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v57

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->changeEncryptionPassword(ILjava/lang/String;)I

    move-result v51

    .line 1937
    .restart local v51    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1938
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1939
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1942
    .end local v45    # "password":Ljava/lang/String;
    .end local v51    # "result":I
    .end local v57    # "type":I
    :sswitch_1e
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1943
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 1944
    .local v58, "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .line 1945
    .local v43, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1946
    .local v17, "_flags":I
    move-object/from16 v0, p0

    move/from16 v1, v58

    move-object/from16 v2, v43

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;

    move-result-object v51

    .line 1947
    .local v51, "result":[Landroid/os/storage/StorageVolume;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1948
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1949
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1952
    .end local v17    # "_flags":I
    .end local v43    # "packageName":Ljava/lang/String;
    .end local v51    # "result":[Landroid/os/storage/StorageVolume;
    .end local v58    # "uid":I
    :sswitch_1f
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1954
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1955
    .restart local v5    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/storage/IMountService$Stub;->getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 1956
    .restart local v46    # "path":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1957
    move-object/from16 v0, p3

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1958
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1961
    .end local v5    # "id":Ljava/lang/String;
    .end local v46    # "path":Ljava/lang/String;
    :sswitch_20
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1962
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getEncryptionState()I

    move-result v51

    .line 1963
    .local v51, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1964
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1965
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1968
    .end local v51    # "result":I
    :sswitch_21
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1970
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1972
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 1974
    .local v29, "gid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 1975
    .restart local v26    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v26

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/storage/IMountService$Stub;->fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    move-result v54

    .line 1976
    .restart local v54    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1977
    move-object/from16 v0, p3

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1978
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1981
    .end local v5    # "id":Ljava/lang/String;
    .end local v26    # "filename":Ljava/lang/String;
    .end local v29    # "gid":I
    .end local v54    # "resultCode":I
    :sswitch_22
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1982
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1983
    .local v19, "callingPkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    .line 1984
    .restart local v46    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->mkdirs(Ljava/lang/String;Ljava/lang/String;)I

    move-result v51

    .line 1985
    .restart local v51    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1986
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1987
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1991
    .end local v19    # "callingPkg":Ljava/lang/String;
    .end local v46    # "path":Ljava/lang/String;
    .end local v51    # "result":I
    :sswitch_23
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1992
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    .line 1993
    .restart local v46    # "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v55

    .line 1994
    .restart local v55    # "state":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setVolumeState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1996
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2000
    .end local v46    # "path":Ljava/lang/String;
    .end local v55    # "state":Ljava/lang/String;
    :sswitch_24
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2001
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPasswordType()I

    move-result v51

    .line 2002
    .restart local v51    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2003
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2004
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2007
    .end local v51    # "result":I
    :sswitch_25
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2008
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPassword()Ljava/lang/String;

    move-result-object v51

    .line 2009
    .local v51, "result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2010
    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2011
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2014
    .end local v51    # "result":Ljava/lang/String;
    :sswitch_26
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2015
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->clearPassword()V

    .line 2016
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2017
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2020
    :sswitch_27
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2021
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 2022
    .local v25, "field":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 2023
    .local v20, "contents":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setField(Ljava/lang/String;Ljava/lang/String;)V

    .line 2024
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2025
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2028
    .end local v20    # "contents":Ljava/lang/String;
    .end local v25    # "field":Ljava/lang/String;
    :sswitch_28
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2029
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 2030
    .restart local v25    # "field":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2031
    .restart local v20    # "contents":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2032
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2033
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2036
    .end local v20    # "contents":Ljava/lang/String;
    .end local v25    # "field":Ljava/lang/String;
    :sswitch_29
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2038
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2040
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2042
    .restart local v6    # "sizeMb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2043
    .restart local v8    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Landroid/os/storage/IMountService$Stub;->resizeSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    move-result v54

    .line 2044
    .restart local v54    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2045
    move-object/from16 v0, p3

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2046
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2049
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "sizeMb":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v54    # "resultCode":I
    :sswitch_2a
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2050
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->lastMaintenance()J

    move-result-wide v32

    .line 2051
    .local v32, "lastMaintenance":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2052
    move-object/from16 v0, p3

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2053
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2056
    .end local v32    # "lastMaintenance":J
    :sswitch_2b
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2057
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->runMaintenance()V

    .line 2058
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2059
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2062
    :sswitch_2c
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2063
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->waitForAsecScan()V

    .line 2064
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2065
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2068
    :sswitch_2d
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2069
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getDisks()[Landroid/os/storage/DiskInfo;

    move-result-object v22

    .line 2070
    .local v22, "disks":[Landroid/os/storage/DiskInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2071
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2072
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2075
    .end local v22    # "disks":[Landroid/os/storage/DiskInfo;
    :sswitch_2e
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2076
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2077
    .restart local v17    # "_flags":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v63

    .line 2078
    .local v63, "volumes":[Landroid/os/storage/VolumeInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2079
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v63

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2080
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2083
    .end local v17    # "_flags":I
    .end local v63    # "volumes":[Landroid/os/storage/VolumeInfo;
    :sswitch_2f
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2084
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2085
    .restart local v17    # "_flags":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;

    move-result-object v63

    .line 2086
    .local v63, "volumes":[Landroid/os/storage/VolumeRecord;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2087
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v63

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2088
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2091
    .end local v17    # "_flags":I
    .end local v63    # "volumes":[Landroid/os/storage/VolumeRecord;
    :sswitch_30
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2092
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v61

    .line 2093
    .local v61, "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mount(Ljava/lang/String;)V

    .line 2094
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2095
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2098
    .end local v61    # "volId":Ljava/lang/String;
    :sswitch_31
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2099
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v61

    .line 2100
    .restart local v61    # "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unmount(Ljava/lang/String;)V

    .line 2101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2102
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2105
    .end local v61    # "volId":Ljava/lang/String;
    :sswitch_32
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v61

    .line 2107
    .restart local v61    # "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->format(Ljava/lang/String;)V

    .line 2108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2109
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2112
    .end local v61    # "volId":Ljava/lang/String;
    :sswitch_33
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v61

    .line 2114
    .restart local v61    # "volId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->benchmark(Ljava/lang/String;)J

    move-result-wide v52

    .line 2115
    .local v52, "res":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2116
    move-object/from16 v0, p3

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2117
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2120
    .end local v52    # "res":J
    .end local v61    # "volId":Ljava/lang/String;
    :sswitch_34
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 2122
    .local v21, "diskId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->partitionPublic(Ljava/lang/String;)V

    .line 2123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2124
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2127
    .end local v21    # "diskId":Ljava/lang/String;
    :sswitch_35
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 2129
    .restart local v21    # "diskId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->partitionPrivate(Ljava/lang/String;)V

    .line 2130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2131
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2134
    .end local v21    # "diskId":Ljava/lang/String;
    :sswitch_36
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 2136
    .restart local v21    # "diskId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v48

    .line 2137
    .local v48, "ratio":I
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->partitionMixed(Ljava/lang/String;I)V

    .line 2138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2139
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2142
    .end local v21    # "diskId":Ljava/lang/String;
    .end local v48    # "ratio":I
    :sswitch_37
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v61

    .line 2144
    .restart local v61    # "volId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 2145
    .local v41, "nickname":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V

    .line 2146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2147
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2150
    .end local v41    # "nickname":Ljava/lang/String;
    .end local v61    # "volId":Ljava/lang/String;
    :sswitch_38
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v61

    .line 2152
    .restart local v61    # "volId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2153
    .restart local v17    # "_flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 2154
    .local v18, "_mask":I
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->setVolumeUserFlags(Ljava/lang/String;II)V

    .line 2155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2156
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2159
    .end local v17    # "_flags":I
    .end local v18    # "_mask":I
    .end local v61    # "volId":Ljava/lang/String;
    :sswitch_39
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 2161
    .local v28, "fsUuid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->forgetVolume(Ljava/lang/String;)V

    .line 2162
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2163
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2166
    .end local v28    # "fsUuid":Ljava/lang/String;
    :sswitch_3a
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2167
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->forgetAllVolumes()V

    .line 2168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2169
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2172
    :sswitch_3b
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2174
    .restart local v17    # "_flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 2175
    .restart local v18    # "_mask":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setDebugFlags(II)V

    .line 2176
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2177
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2180
    .end local v17    # "_flags":I
    .end local v18    # "_mask":I
    :sswitch_3c
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2181
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v62

    .line 2182
    .local v62, "volumeUuid":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2183
    move-object/from16 v0, p3

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2184
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2187
    .end local v62    # "volumeUuid":Ljava/lang/String;
    :sswitch_3d
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v62

    .line 2189
    .restart local v62    # "volumeUuid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v31

    .line 2191
    .local v31, "listener":Landroid/content/pm/IPackageMoveObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V

    .line 2192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2193
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2196
    .end local v31    # "listener":Landroid/content/pm/IPackageMoveObserver;
    .end local v62    # "volumeUuid":Ljava/lang/String;
    :sswitch_3e
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .line 2198
    .local v59, "userHandle":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    .line 2199
    .restart local v46    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v59

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->createNewUserDir(ILjava/lang/String;)V

    .line 2200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2201
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2204
    .end local v46    # "path":Ljava/lang/String;
    .end local v59    # "userHandle":I
    :sswitch_3f
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .line 2206
    .restart local v59    # "userHandle":I
    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->deleteUserKey(I)V

    .line 2207
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2208
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2212
    .end local v59    # "userHandle":I
    :sswitch_40
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v57

    .line 2215
    .restart local v57    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v45

    .line 2216
    .restart local v45    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v57

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->prepareDecryptOnRecovery(ILjava/lang/String;)I

    move-result v54

    .line 2217
    .restart local v54    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2218
    move-object/from16 v0, p3

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2219
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2223
    .end local v45    # "password":Ljava/lang/String;
    .end local v54    # "resultCode":I
    .end local v57    # "type":I
    :sswitch_41
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v57

    .line 2225
    .restart local v57    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v45

    .line 2226
    .restart local v45    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v57

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->disableStorageEncryption(ILjava/lang/String;)I

    move-result v51

    .line 2227
    .local v51, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2228
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2229
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2233
    .end local v45    # "password":Ljava/lang/String;
    .end local v51    # "result":I
    .end local v57    # "type":I
    :sswitch_42
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    .line 2237
    .local v44, "passwd":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    .line 2238
    .local v40, "newPasswd":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->changeEncryptionPassword2(Ljava/lang/String;Ljava/lang/String;)I

    move-result v54

    .line 2239
    .restart local v54    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2240
    move-object/from16 v0, p3

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2241
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2245
    .end local v40    # "newPasswd":Ljava/lang/String;
    .end local v44    # "passwd":Ljava/lang/String;
    .end local v54    # "resultCode":I
    :sswitch_43
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    .line 2249
    .restart local v44    # "passwd":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 2250
    .local v37, "mountpoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->cryptoMount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v54

    .line 2251
    .restart local v54    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2252
    move-object/from16 v0, p3

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2253
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2257
    .end local v37    # "mountpoint":Ljava/lang/String;
    .end local v44    # "passwd":Ljava/lang/String;
    .end local v54    # "resultCode":I
    :sswitch_44
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v45

    .line 2259
    .restart local v45    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->setNullSDCardPassword(Ljava/lang/String;)I

    move-result v51

    .line 2260
    .restart local v51    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2261
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2262
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2266
    .end local v45    # "password":Ljava/lang/String;
    .end local v51    # "result":I
    :sswitch_45
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2267
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isStorageFullyEncrypted()I

    move-result v51

    .line 2268
    .restart local v51    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2269
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2270
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2274
    .end local v51    # "result":I
    :sswitch_46
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2275
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->moveDumpstates()I

    move-result v51

    .line 2276
    .restart local v51    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2277
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2278
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2282
    .end local v51    # "result":I
    :sswitch_47
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v34

    .line 2285
    .local v34, "module":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->odeNativeTest(Ljava/lang/String;)I

    move-result v51

    .line 2286
    .restart local v51    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2287
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2288
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2292
    .end local v34    # "module":Ljava/lang/String;
    .end local v51    # "result":I
    :sswitch_48
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2293
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getCCmodeForCryptKeeper()I

    move-result v51

    .line 2294
    .restart local v51    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2295
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2296
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2300
    .end local v51    # "result":I
    :sswitch_49
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v38

    .line 2304
    .local v38, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v60

    .line 2305
    .local v60, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setPropertyIntoFooter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v51

    .line 2306
    .restart local v51    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2307
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2308
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2313
    .end local v38    # "name":Ljava/lang/String;
    .end local v51    # "result":I
    .end local v60    # "value":Ljava/lang/String;
    :sswitch_4a
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v38

    .line 2316
    .restart local v38    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getPropertyFromFooter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 2317
    .local v51, "result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2318
    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2319
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2324
    .end local v38    # "name":Ljava/lang/String;
    .end local v51    # "result":Ljava/lang/String;
    :sswitch_4b
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2325
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isEncryptedWithForceEncrypt()I

    move-result v51

    .line 2326
    .local v51, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2327
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2328
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2332
    .end local v51    # "result":I
    :sswitch_4c
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2333
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getCurrentEncryptionFailCount()I

    move-result v51

    .line 2334
    .restart local v51    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2335
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2336
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1657
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x22 -> :sswitch_21
        0x23 -> :sswitch_22
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_34
        0x34 -> :sswitch_35
        0x35 -> :sswitch_36
        0x36 -> :sswitch_37
        0x37 -> :sswitch_38
        0x38 -> :sswitch_39
        0x39 -> :sswitch_3a
        0x3a -> :sswitch_3c
        0x3b -> :sswitch_3d
        0x3c -> :sswitch_33
        0x3d -> :sswitch_3b
        0x3f -> :sswitch_3e
        0x40 -> :sswitch_3f
        0x69 -> :sswitch_23
        0xc9 -> :sswitch_40
        0xca -> :sswitch_41
        0xcb -> :sswitch_42
        0xcc -> :sswitch_43
        0xcd -> :sswitch_44
        0xce -> :sswitch_45
        0xcf -> :sswitch_46
        0xd0 -> :sswitch_49
        0xd1 -> :sswitch_4a
        0xd2 -> :sswitch_4b
        0xd3 -> :sswitch_47
        0xd4 -> :sswitch_48
        0xd5 -> :sswitch_4c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method