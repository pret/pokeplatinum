#include "unk_02033200.h"

#include <string.h>

#include "constants/heap.h"
#include "constants/net.h"

#include "struct_defs/sentence.h"
#include "struct_defs/struct_0203330C.h"
#include "struct_defs/struct_02034168.h"

#include "battle_regulation.h"
#include "communication_information.h"
#include "communication_system.h"
#include "heap.h"
#include "system.h"
#include "trainer_info.h"
#include "unk_02014A84.h"
#include "unk_02030EE0.h"
#include "unk_0203266C.h"
#include "unk_020366A0.h"

typedef struct {
    u8 unk_00[84];
    WMbssDesc unk_54;
    WMbssDesc unk_188[16];
    u8 unk_1498[8][6];
    u16 unk_14C8[16];
    void *unk_14E8;
    Sentence unk_14EC;
    int unk_14F4;
    u8 unk_14F8;
    u8 unk_14F9;
    TrainerInfo *personalTrainerInfo;
    BattleRegulation *unk_1500;
    u32 unk_1504;
    u32 unk_1508;
    u16 *unk_150C;
    u16 unk_1510;
    u16 unk_1512;
    u8 unk_1514;
    u8 unk_1515;
    u8 unk_1516;
    u8 unk_1517;
    u8 unk_1518;
    u8 unk_1519_0 : 1;
    u8 unk_1519_1 : 1;
    u8 unk_1519_2 : 1;
    u8 unk_1519_3 : 1;
    u8 unk_1519_4 : 1;
    u8 unk_1519_5 : 1;
    u8 unk_1519_6 : 1;
    u8 : 1;
} CommServerClient;

static void sub_020334DC(BOOL param0);
static void sub_02033550(BOOL param0);
static void sub_02033578(void);
static void sub_02033AA8(void);
static BOOL sub_02034014(u8 *param0);
static u16 sub_02033F0C(u16 param0);
static void sub_0203330C(WMBssDesc *param0);
static void WirelessDriver_InitCallback(void *param0, WVRResult param1);
static int sub_02033DDC(void);

static CommServerClient *sCommServerClient = NULL;
static u16 Unk_021C07B8 = 0;
static volatile int sWirelessDriverStatus;

void CommServerClient_Init(TrainerInfo *trainerInfo, BOOL param1)
{
    int v0;

    if (sCommServerClient != NULL) {
        return;
    }

    sCommServerClient = (CommServerClient *)Heap_Alloc(HEAP_ID_COMMUNICATION, sizeof(CommServerClient));
    MI_CpuClear8(sCommServerClient, sizeof(CommServerClient));

    sCommServerClient->unk_14E8 = Heap_Alloc(HEAP_ID_COMMUNICATION, sub_02031C50());
    MI_CpuClear8(sCommServerClient->unk_14E8, sub_02031C50());

    sCommServerClient->unk_1500 = Heap_Alloc(HEAP_ID_COMMUNICATION, BattleRegulation_Size());
    MI_CpuClear8(sCommServerClient->unk_1500, BattleRegulation_Size());

    sCommServerClient->unk_1508 = (u32)Heap_Alloc(HEAP_ID_COMMUNICATION, WM_SIZE_USER_GAMEINFO + 32);
    sCommServerClient->unk_150C = (u16 *)(32 - (sCommServerClient->unk_1508 % 32) + sCommServerClient->unk_1508);

    sCommServerClient->unk_1504 = 0x333;
    sCommServerClient->personalTrainerInfo = trainerInfo;

    sub_02014A84((Sentence *)&sCommServerClient->unk_14EC);
    sub_020334DC(param1);
}

BOOL sub_020332D0(void)
{
    if (sCommServerClient) {
        return 1;
    }

    return 0;
}

static BOOL sub_020332E4(const u8 *param0, const u8 *param1, int param2)
{
    int v0;
    const u8 *v1 = param0;
    const u8 *v2 = param1;

    for (v0 = 0; v0 < param2; v0++) {
        if (*v1 != *v2) {
            return 0;
        }

        v1++;
        v2++;
    }

    return 1;
}

static void sub_0203330C(WMBssDesc *param0)
{
    int v0;
    UnkStruct_0203330C *v1;
    int v2 = sub_0203895C();
    int v3 = sub_02038974();

    v1 = (UnkStruct_0203330C *)param0->gameInfo.userGameInfo;

    if (v2 == 14) {
        (void)0;
    } else if (sub_020326C4(v1->unk_04) && sub_020326C4(v2)) {
        (void)0;
    } else if (v1->unk_54 && (v1->unk_04 == 10)) {
        return;
    } else if (v1->unk_04 != v2) {
        return;
    }

    if ((v2 != 14) && (v1->unk_05 != v3)) {
        return;
    }

    MI_CpuCopy8(param0, &sCommServerClient->unk_54, sizeof(WMBssDesc));
    sCommServerClient->unk_1519_6 = 1;
}

static void sub_02033380(void)
{
    WMBssDesc *v0 = &sCommServerClient->unk_54;
    int v1;

    if (!sCommServerClient->unk_1519_6) {
        return;
    }

    sCommServerClient->unk_1519_6 = 0;

    for (v1 = 0; v1 < 16; ++v1) {
        if (sCommServerClient->unk_14C8[v1] == 0) {
            continue;
        }

        if (sub_020332E4(sCommServerClient->unk_188[v1].bssid, v0->bssid, WM_SIZE_BSSID)) {
            sCommServerClient->unk_14C8[v1] = (30 * 10);
            MI_CpuCopy8(v0, &sCommServerClient->unk_188[v1], sizeof(WMBssDesc));
            return;
        }
    }

    for (v1 = 0; v1 < 16; ++v1) {
        if (sCommServerClient->unk_14C8[v1] == 0) {
            break;
        }
    }

    if (v1 >= 16) {
        return;
    }

    sCommServerClient->unk_14C8[v1] = (30 * 10);
    MI_CpuCopy8(v0, &sCommServerClient->unk_188[v1], sizeof(WMBssDesc));
    sCommServerClient->unk_14F8 = 1;
}

static void WirelessDriver_InitCallback(void *param0, WVRResult param1)
{
    if (param1 != WVR_RESULT_SUCCESS) {
        OS_Terminate();
    } else {
        (void)0;
    }

    sWirelessDriverStatus = WIRELESS_DRIVER_STATUS_CONNECTED;
}

static void WirelessDriver_ShutdownCallback(void *param0, WVRResult param1)
{
    sWirelessDriverStatus = WIRELESS_DRIVER_STATUS_DISCONNECTED;
    SleepUnlock(4);
}

void WirelessDriver_Init(void)
{
    SleepLock(4);

    sWirelessDriverStatus = WIRELESS_DRIVER_STATUS_CONNECTING;

    if (WVR_RESULT_OPERATING != WVR_StartUpAsync(GX_VRAM_ARM7_128_D, WirelessDriver_InitCallback, NULL)) {
        OS_Terminate();
    } else {
        (void)0;
    }
}

BOOL WirelessDriver_IsReady(void)
{
    return sWirelessDriverStatus == WIRELESS_DRIVER_STATUS_CONNECTED;
}

BOOL WirelessDriver_Initialized(void)
{
    return sWirelessDriverStatus != WIRELESS_DRIVER_STATUS_DISCONNECTED;
}

void WirelessDriver_Shutdown(void)
{
    WVR_TerminateAsync(WirelessDriver_ShutdownCallback, NULL);
}

static void sub_020334DC(BOOL param0)
{
    sCommServerClient->unk_14F4 = 0;

    {
        u32 v0 = (u32)sCommServerClient->unk_14E8;

        v0 = 32 - (v0 % 32) + v0;
        (void)sub_02031BC4((void *)v0, param0);
    }

    sub_020318D0(sCommServerClient->unk_1504);
}

void sub_02033518(void)
{
    int v0;

    for (v0 = 0; v0 < 16; ++v0) {
        sCommServerClient->unk_14C8[v0] = 0;
    }

    MI_CpuClear8(sCommServerClient->unk_188, sizeof(WMBssDesc) * 16);
}

static void sub_02033550(BOOL param0)
{
    sCommServerClient->unk_1519_3 = param0;
}

static void sub_02033578(void)
{
    sCommServerClient->unk_14F8 = 0;
    sCommServerClient->unk_1519_0 = 0;
    sCommServerClient->unk_1519_2 = 0;
    sCommServerClient->unk_1516 = 0;
    sCommServerClient->unk_1519_4 = 0;
    sCommServerClient->unk_1518 = 0;
    sCommServerClient->unk_1517 = 0;
    return;
}

BOOL CommServerClient_InitServer(BOOL param0, BOOL param1, BOOL param2)
{
    sub_02033578();
    sub_02033550(param1);
    sub_020320E8();

    if (!sCommServerClient->unk_1517) {
        sub_02031E6C(sub_020351F8, 14);
        sCommServerClient->unk_1517 = 1;
    }

    sCommServerClient->unk_1519_5 = param2;

    if (sub_02031934() == 1) {
        if (sub_0203195C()) {
            return 1;
        }
    }

    return 0;
}

BOOL CommServerClient_InitClient(BOOL param0, BOOL param1)
{
    sub_02033578();

    if (param1) {
        sub_02033518();
    }

    if (!sCommServerClient->unk_1517) {
        sub_02031E6C(sub_0203509C, 14);
        sCommServerClient->unk_1517 = 1;
    }

    if (sub_02031934() == 1) {
        const u8 v0[6] = { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF };

        if (sub_020312B8(sub_0203330C, v0, 0)) {
            return 1;
        }
    }

    return 0;
}

BOOL sub_020336D4(void)
{
    if (!sCommServerClient) {
        return 1;
    }

    switch (sCommServerClient->unk_1518) {
    case 0:
        if (sub_02032010()) {
            sub_020314C0();
            sCommServerClient->unk_1518 = 1;
            break;
        } else if (sub_02031FD8()) {
            (void)0;
        } else {
            sub_02031EF4();
            sCommServerClient->unk_1518 = 2;
        }
        break;
    case 1:
        if (!sub_02031FD8()) {
            sub_02031EF4();
            sCommServerClient->unk_1518 = 2;
        }
        break;
    case 2:
        if (sub_02031FBC()) {
            return 1;
        }

        if (sub_02031FF4()) {
            sCommServerClient->unk_1518 = 1;
        }
        break;
    }

    return 0;
}

BOOL sub_02033768(void)
{
    if (sCommServerClient) {
        if (sCommServerClient->unk_1516 == 0) {
            sCommServerClient->unk_1516 = 1;
            sub_02031EF4();
            return 1;
        }
    }

    return 0;
}

void sub_02033794(BOOL param0)
{
    if (!sCommServerClient) {
        return;
    }

    if (param0) {
        sCommServerClient->unk_1516 = 2;
    } else {
        sCommServerClient->unk_1516 = 0;
        sub_020334DC(1);
    }
}

static void sub_020337C0(void)
{
    Heap_Free(sCommServerClient->unk_1500);
    Heap_Free(sCommServerClient->unk_14E8);
    Heap_Free((void *)sCommServerClient->unk_1508);
    Heap_Free(sCommServerClient);

    sCommServerClient = NULL;
}

int sub_02033808(void)
{
    int v0, v1;

    if (!CommSys_IsInitialized()) {
        return 0;
    }

    v1 = 0;

    for (v0 = 0; v0 < 16; ++v0) {
        if (sCommServerClient->unk_14C8[v0] != 0) {
            v1++;
        }
    }

    return v1;
}

int sub_0203383C(int param0)
{
    int v0, v1 = 0;

    for (v0 = 0; v0 < 16; v0++) {
        if (sCommServerClient->unk_14C8[v0] != 0) {
            if (v1 == param0) {
                return v0;
            }

            v1++;
        }
    }

    GF_ASSERT(FALSE);
    return 0;
}

BOOL sub_02033870(void)
{
    return sCommServerClient->unk_14F8;
}

void sub_02033884(void)
{
    sCommServerClient->unk_14F8 = 0;
}

int sub_02033898(int param0)
{
    int v0;
    UnkStruct_0203330C *v1;

    v0 = 0;

    if (sCommServerClient->unk_14C8[param0] != 0) {
        v1 = (UnkStruct_0203330C *)sCommServerClient->unk_188[param0].gameInfo.userGameInfo;

        if (v1->unk_06 == 0) {
            return 1;
        }

        return v1->unk_06;
    }

    return 0;
}

static int sub_020338C8(int param0)
{
    int v0, v1;

    for (v0 = 16 - 1; v0 >= 0; v0--) {
        v1 = sub_02033898(v0);

        if ((v1 > param0) && (v1 < (7 + 1))) {
            return v0;
        }
    }

    return -1;
}

int sub_020338EC(void)
{
    int v0, v1;

    if (sub_02033808() == 0) {
        return -1;
    }

    for (v0 = 16 - 1; v0 >= 0; v0--) {
        if (sCommServerClient->unk_14C8[v0] != 0) {
            if (sub_02034014(&sCommServerClient->unk_188[v0].bssid[0])) {
                v1 = sub_02033898(v0);

                if ((v1 > 1) && (v1 < (7 + 1))) {
                    return v0;
                }
            }
        }
    }

    return -1;
}

int sub_0203394C(void)
{
    int v0;

    if (sub_02033808() == 0) {
        return -1;
    }

    for (v0 = 16 - 1; v0 >= 0; v0--) {
        if (sCommServerClient->unk_14C8[v0] != 0) {
            if (sub_02034014(&sCommServerClient->unk_188[v0].bssid[0])) {
                return v0;
            }
        }
    }

    v0 = sub_020338C8(1);

    if (v0 != -1) {
        return v0;
    }

    v0 = sub_020338C8(0);

    if (v0 != -1) {
        return v0;
    }

    return v0;
}

void sub_020339AC(int param0, TrainerInfo *param1)
{
    int v0, v1;
    UnkStruct_0203330C *v2;

    v1 = 0;

    for (v0 = 0; v0 < 16; ++v0) {
        if (sCommServerClient->unk_14C8[v0] != 0) {
            if (param0 == v1) {
                TrainerInfo_Copy(sub_02033FB0(v0), param1);
                return;
            }

            v1++;
        }
    }
}

BOOL sub_020339E8(u16 param0)
{
    int v0;

    if (sub_02031934() == 2) {
        (void)sub_020314C0();
        return 0;
    }

    if (sub_02031934() == 1) {
        v0 = sub_0203895C();
        sCommServerClient->unk_1514 = sCommServerClient->unk_188[param0].channel;

        if (sub_020326C4(v0)) {
            sub_02031220(1, sCommServerClient->unk_188[param0].bssid, 0);
        } else {
            sub_02031DD8(1, &(sCommServerClient->unk_188[param0]));
        }

        return 1;
    }

    return 0;
}

void sub_02033A5C(void)
{
    int v0;

    sub_02033380();

    for (v0 = 0; v0 < 16; v0++) {
        if (sCommServerClient->unk_14C8[v0] == 0) {
            continue;
        }

        if (sCommServerClient->unk_14C8[v0] > 0) {
            sCommServerClient->unk_14C8[v0]--;

            if (sCommServerClient->unk_14C8[v0] == 0) {
                sCommServerClient->unk_14F8 = 1;
            }
        }
    }
}

static void sub_02033AA8(void)
{
    u8 v0[6];
    TrainerInfo *v1;
    UnkStruct_0203330C *v2;
    UnkStruct_02034168 *v3;
    int v4 = sub_0203895C();

    v1 = sub_02033F9C();

    if (v4 != 15) {
        v2 = (UnkStruct_0203330C *)sCommServerClient->unk_150C;

        GF_ASSERT(32 >= BattleRegulation_Size());
        GF_ASSERT(32 == TrainerInfo_Size());
        GF_ASSERT(WM_SIZE_USER_GAMEINFO >= MATH_MAX(sizeof(UnkStruct_02034168), sizeof(UnkStruct_0203330C)));

        MI_CpuCopy8(v1, v2->unk_10, TrainerInfo_Size());
        MI_CpuCopy8(sCommServerClient->unk_1500, v2->unk_30, BattleRegulation_Size());

        v2->unk_00 = TrainerInfo_ID(v1);
        v2->unk_04 = sub_0203895C();
        v2->unk_05 = sub_02038974();

        MI_CpuCopy8(&sCommServerClient->unk_14EC, &v2->unk_08, sizeof(Sentence));

        v2->unk_54 = sub_0203214C();
    } else {
        v3 = (UnkStruct_02034168 *)sCommServerClient->unk_150C;

        v3->unk_00 = TrainerInfo_ID(v1);
        v3->unk_04 = sub_0203895C();
        v3->unk_05 = sub_02038974();

        MI_CpuCopy8(sCommServerClient->unk_00, v3->unk_08, 84);
    }

    DC_FlushRange(sCommServerClient->unk_150C, MATH_MAX(sizeof(UnkStruct_02034168), sizeof(UnkStruct_0203330C)));
    sub_020318DC(sCommServerClient->unk_150C, MATH_MAX(sizeof(UnkStruct_02034168), sizeof(UnkStruct_0203330C)));
}

static void sub_02033B88(void)
{
    UnkStruct_0203330C *v0 = (UnkStruct_0203330C *)sCommServerClient->unk_150C;

    if (sub_02033DDC() != v0->unk_06) {
        v0->unk_06 = sub_02033DDC();
        DC_FlushRange(sCommServerClient->unk_150C, MATH_MAX(sizeof(UnkStruct_02034168), sizeof(UnkStruct_0203330C)));
        sub_020318DC(sCommServerClient->unk_150C, MATH_MAX(sizeof(UnkStruct_02034168), sizeof(UnkStruct_0203330C)));
        sub_02032034(sCommServerClient->unk_150C, MATH_MAX(sizeof(UnkStruct_02034168), sizeof(UnkStruct_0203330C)), sCommServerClient->unk_1504, Unk_021C07B8);
    }
}

static void sub_02033BDC(u16 param0)
{
    int v0 = sub_02031934();
    int v1 = sub_02032E90();

    sub_02033B88();

    if ((sub_02031F90() == 0) && (!CommServerClient_IsClientConnecting())) {
        if (sCommServerClient->unk_1519_2) {
            sCommServerClient->unk_1519_0 = 1;
        }
    }

    if (sCommServerClient->unk_1512 == 0xffff) {
        sCommServerClient->unk_1512 = param0;
    }

    if (sCommServerClient->unk_1519_1) {
        if (sCommServerClient->unk_1512 > param0) {
            sCommServerClient->unk_1519_0 = 1;
        }

        if (v1) {
            sCommServerClient->unk_1519_0 = 1;
        }
    }

    if (25 == sub_02031948()) {
        sub_020389FC(0);
    }

    switch (v0) {
    case 0:
        if (sCommServerClient->unk_1516 == 1) {
            sub_020337C0();
            return;
        }

        if (sCommServerClient->unk_1516 == 2) {
            sCommServerClient->unk_1516 = 3;
            return;
        }
        break;
    case 1:
        if (sCommServerClient->unk_1516 == 1) {
            if (sub_02031F6C()) {
                return;
            }
        }

        if (sCommServerClient->unk_1516 == 2) {
            if (sub_02031F6C()) {
                return;
            }
        }
        break;
    case 8:
    case 9:
        if (sCommServerClient) {
            sCommServerClient->unk_1519_0 = 1;
        }
        break;
    case 7: {
        u16 v2;

        v2 = sub_02031B04();

        if (sCommServerClient->unk_1515 == 0) {
            sCommServerClient->unk_1510 = v2;
            sCommServerClient->unk_1515 = 5;
        } else {
            sCommServerClient->unk_1515--;
        }

        v2 = sCommServerClient->unk_1510;

        if (sCommServerClient->unk_1519_3) {
            Unk_021C07B8++;
        }

        sub_02033AA8();
        (void)sub_02031D04(0, Unk_021C07B8, v2, CommLocal_MaxMachines(sub_0203895C()), sub_02033F0C(sub_0203895C()), sCommServerClient->unk_1519_5);
        sCommServerClient->unk_1514 = v2;
    } break;
    default:
        break;
    }
}

void sub_02033D94(u16 param0)
{
    if (sCommServerClient) {
        sub_02033BDC(param0);
    }
}

static BOOL sub_02033DA8(u16 param0)
{
    if (!sCommServerClient) {
        return 0;
    }

    if (sub_02031934() != 4) {
        return 0;
    }

    {
        u16 v0 = sub_020318EC();

        if (v0 & (1 << param0)) {
            return 1;
        }
    }
    return 0;
}

static int sub_02033DDC(void)
{
    int v0 = 0, v1;

    for (v1 = 0; v1 < (7 + 1); v1++) {
        if (sub_02033DA8(v1)) {
            v0++;
        }
    }

    return v0;
}

BOOL CommServerClient_IsInClosedSecretBase(void)
{
    if (sCommServerClient && (sCommServerClient->unk_1516 == 3)) {
        return 1;
    }

    return 0;
}

BOOL CommServerClient_IsInitialized(void)
{
    return sCommServerClient != NULL;
}

BOOL sub_02033E30(void)
{
    if (sCommServerClient) {
        return sub_02031FBC();
    }

    return 1;
}

BOOL CommServerClient_IsClientConnecting(void)
{
    if (sCommServerClient) {
        return sub_020318EC() & 0xfffe;
    }

    return 0;
}

BOOL sub_02033E68(void)
{
    if (CommServerClient_CheckError() && (20 == sub_02031948())) {
        return 1;
    }

    return 0;
}

BOOL CommServerClient_CheckError(void)
{
    if (sCommServerClient) {
        if (sCommServerClient->unk_1519_0) {
            return 1;
        }
    }

    return 0;
}

void sub_02033EA8(BOOL param0)
{
    if (sCommServerClient) {
        sCommServerClient->unk_1519_2 = param0;
    }
}

void sub_02033ED4(BOOL param0)
{
    if (sCommServerClient) {
        sCommServerClient->unk_1519_1 = param0;
        sCommServerClient->unk_1512 = 0xffff;
    }
}

u16 sub_02033F0C(u16 param0)
{
    u16 v0 = WM_GetDispersionBeaconPeriod();

    GF_ASSERT(param0 < 37);

    if (10 == param0) {
        return v0 / 4;
    }

    if ((9 == param0) || (13 == param0)) {
        return v0 / 4;
    }

    return v0;
}

WMBssDesc *sub_02033F3C(int param0)
{
    if (sCommServerClient && (sCommServerClient->unk_14C8[param0] != 0)) {
        return &sCommServerClient->unk_188[param0];
    }

    return NULL;
}

UnkStruct_0203330C *sub_02033F6C(int param0)
{
    if (sCommServerClient && (sCommServerClient->unk_14C8[param0] != 0)) {
        return (UnkStruct_0203330C *)sCommServerClient->unk_188[param0].gameInfo.userGameInfo;
    }

    return NULL;
}

TrainerInfo *sub_02033F9C(void)
{
    return sCommServerClient->personalTrainerInfo;
}

TrainerInfo *sub_02033FB0(int param0)
{
    TrainerInfo *v0;
    UnkStruct_0203330C *v1;

    if (sCommServerClient->unk_14C8[param0] == 0) {
        return NULL;
    }

    v1 = (UnkStruct_0203330C *)sCommServerClient->unk_188[param0].gameInfo.userGameInfo;
    v0 = (TrainerInfo *)&v1->unk_10[0];

    return v0;
}

void sub_02033FDC(u8 *param0, int param1)
{
    if (sCommServerClient) {
        GF_ASSERT(param1 < (7 + 1));
        MI_CpuCopy8(param0, sCommServerClient->unk_1498[param1], WM_SIZE_BSSID);
    }
}

static BOOL sub_02034014(u8 *param0)
{
    int v0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        if (WM_IsBssidEqual(sCommServerClient->unk_1498[v0], param0)) {
            return 1;
        }
    }

    return 0;
}

BOOL sub_0203406C(void)
{
    if (sCommServerClient) {
        return sCommServerClient->unk_1519_4;
    }

    return 0;
}

void sub_0203408C(void)
{
    if (sCommServerClient) {
        sCommServerClient->unk_1519_4 = 1;
    }
}

void sub_020340A8(Sentence *param0)
{
    MI_CpuCopy8(param0, &sCommServerClient->unk_14EC, sizeof(Sentence));
}

void sub_020340C4(void *param0)
{
    MI_CpuCopy8(param0, sCommServerClient->unk_1500, BattleRegulation_Size());
}

void *sub_020340E8(void)
{
    return sCommServerClient->unk_1500;
}

void sub_020340FC(void)
{
    sub_02033AA8();
    sub_02032034(sCommServerClient->unk_150C, MATH_MAX(sizeof(UnkStruct_02034168), sizeof(UnkStruct_0203330C)), sCommServerClient->unk_1504, Unk_021C07B8);
}

int sub_02034120(int param0)
{
    int v0, v1 = 0;

    for (v0 = 0; v0 < 16; v0++) {
        UnkStruct_0203330C *v2 = sub_02033F6C(v0);

        if (v2) {
            if (v2->unk_04 == param0) {
                v1 += v2->unk_06;
            }
        }
    }

    return v1;
}

BOOL sub_02034148(void)
{
    return sub_020320C4();
}

void sub_02034150(void *param0)
{
    MI_CpuCopy8(param0, sCommServerClient->unk_00, 84);
    sub_020340FC();
}

const void *sub_02034168(int param0)
{
    if (sCommServerClient && (sCommServerClient->unk_14C8[param0] != 0)) {
        UnkStruct_02034168 *v0;

        v0 = (UnkStruct_02034168 *)sCommServerClient->unk_188[param0].gameInfo.userGameInfo;
        return v0->unk_08;
    }

    return NULL;
}
