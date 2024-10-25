#include "unk_0207A6DC.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle.h"

#include "struct_decls/battle_system.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_defs/chatot_cry.h"
#include "struct_defs/struct_02027F8C.h"
#include "struct_defs/struct_02039A58.h"
#include "struct_defs/struct_0207A778.h"
#include "struct_defs/struct_0207A81C.h"
#include "struct_defs/struct_0207ACB4.h"
#include "struct_defs/struct_0207AD40.h"
#include "struct_defs/trainer_data.h"

#include "battle/battle_io.h"
#include "battle/ov16_0223DF00.h"

#include "charcode_util.h"
#include "communication_system.h"
#include "heap.h"
#include "party.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "trainer_info.h"
#include "unk_02027F84.h"
#include "unk_0202CC64.h"
#include "unk_0202F1D4.h"
#include "unk_02032798.h"
#include "unk_020363E8.h"

void sub_0207A81C(BattleSystem *param0, int param1, int param2, void *param3, u8 param4);
BOOL sub_0207A8F4(UnkStruct_0207A778 *param0, u32 param1);
BOOL sub_0207A960(UnkStruct_0207A778 *param0);
BOOL sub_0207A988(UnkStruct_0207A778 *param0);
BOOL sub_0207A9CC(UnkStruct_0207A778 *param0);
BOOL sub_0207A9F8(UnkStruct_0207A778 *param0);
BOOL sub_0207AA38(UnkStruct_0207A778 *param0);
BOOL sub_0207AA5C(UnkStruct_0207A778 *param0);
BOOL sub_0207AAA0(UnkStruct_0207A778 *param0);
BOOL sub_0207AAC8(UnkStruct_0207A778 *param0);
BOOL sub_0207AB9C(UnkStruct_0207A778 *param0, int param1);
BOOL sub_0207ABD0(UnkStruct_0207A778 *param0, int param1, int param2);
BOOL sub_0207AC28(UnkStruct_0207A778 *param0, int param1);
BOOL sub_0207AC54(UnkStruct_0207A778 *param0, int param1, int param2);
void sub_0207A744(void *param0);
BOOL sub_0207AB58(UnkStruct_0207A778 *param0);
BOOL sub_0207AAFC(UnkStruct_0207A778 *param0);
static int sub_0207A758(void);
static int sub_0207A75C(void);
static int sub_0207A764(void);
static int sub_0207A76C(void);
static int sub_0207A774(void);
static int sub_0207AE64(void);
static u8 *sub_0207A778(int param0, void *param1, int param2);
static u8 *sub_0207A798(int param0, void *param1, int param2);
static u8 *sub_0207A7B8(int param0, void *param1, int param2);
static u8 *sub_0207A7D4(int param0, void *param1, int param2);
static u8 *sub_0207A7F4(int param0, void *param1, int param2);
static u8 *sub_0207A7FC(int param0, void *param1, int param2);
static u8 *sub_0207A804(int param0, void *param1, int param2);
static u8 *sub_0207A80C(int param0, void *param1, int param2);
static u8 *sub_0207A814(int param0, void *param1, int param2);
static void sub_0207A8A8(int param0, int param1, void *param2, void *param3);
static void sub_0207A934(int param0, int param1, void *param2, void *param3);
static void sub_0207A9BC(int param0, int param1, void *param2, void *param3);
static void sub_0207AA28(int param0, int param1, void *param2, void *param3);
static void sub_0207AA90(int param0, int param1, void *param2, void *param3);
static void sub_0207AB8C(int param0, int param1, void *param2, void *param3);
static void sub_0207AC18(int param0, int param1, void *param2, void *param3);
static void sub_0207ACA4(int param0, int param1, void *param2, void *param3);
static void sub_0207ADB4(int param0, int param1, void *param2, void *param3);
static void sub_0207ACB4(SysTask *param0, void *param1);
static void sub_0207AD40(SysTask *param0, void *param1);
static void sub_0207AE34(int param0, int param1, void *param2, void *param3);
static void sub_0207ADD4(TrainerInfo *param0, UnkStruct_02027F8C *param1, UnkStruct_02027F8C *param2);

static const CommCmdTable Unk_020F099C[] = {
    { sub_0207ADB4, sub_02032944, NULL },
    { sub_0207A8A8, sub_02032944, NULL },
    { sub_0207A934, sub_0207A758, NULL },
    { sub_0207A9BC, sub_0207A75C, sub_0207A778 },
    { sub_0207AA28, sub_0207A774, sub_0207A798 },
    { sub_0207AA90, sub_0207A764, sub_0207A7B8 },
    { sub_0207AB8C, sub_0207A76C, sub_0207A7D4 },
    { sub_0207AC18, sub_0207A774, sub_0207A7F4 },
    { sub_0207AC18, sub_0207A774, sub_0207A7FC },
    { sub_0207ACA4, sub_0207A764, sub_0207A804 },
    { sub_0207ACA4, sub_0207A764, sub_0207A80C },
    { sub_0207AE34, sub_0207AE64, sub_0207A814 }
};

void sub_0207A6DC(void *param0)
{
    int v0 = sizeof(Unk_020F099C) / sizeof(CommCmdTable);
    BattleSystem *v1;
    UnkStruct_0207ACB4 *v2;
    UnkStruct_0207AD40 *v3;

    v1 = (BattleSystem *)param0;

    if (BattleSystem_BattleStatus(v1) & 0x10) {
        return;
    }

    v2 = (UnkStruct_0207ACB4 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_0207ACB4));
    v3 = (UnkStruct_0207AD40 *)Heap_AllocFromHeap(5, sizeof(UnkStruct_0207AD40));

    CommCmd_Init(Unk_020F099C, v0, param0);

    v2->unk_00 = v1;
    v2->unk_04 = 0;
    v3->unk_00 = v1;
    v3->unk_04 = 0;

    ov16_0223F320(v1, &v2->unk_04);
    ov16_0223F32C(v1, &v3->unk_04);

    SysTask_Start(sub_0207ACB4, v2, 0);
    SysTask_Start(sub_0207AD40, v3, 0);
}

void sub_0207A744(void *param0)
{
    int v0 = sizeof(Unk_020F099C) / sizeof(CommCmdTable);
    CommCmd_Init(Unk_020F099C, v0, param0);
}

static int sub_0207A758(void)
{
    return 4;
}

static int sub_0207A75C(void)
{
    return TrainerInfo_Size();
}

static int sub_0207A764(void)
{
    return Party_SaveSize();
}

static int sub_0207A76C(void)
{
    return 1000;
}

static int sub_0207A774(void)
{
    return sizeof(TrainerData);
}

static u8 *sub_0207A778(int param0, void *param1, int param2)
{
    UnkStruct_0207A778 *v0 = param1;

    if (v0->unk_00->battleType & BATTLE_TYPE_FRONTIER) {
        return (u8 *)v0->unk_00->unk_D0[param0 * 2];
    } else {
        return (u8 *)v0->unk_00->unk_D0[param0];
    }
}

static u8 *sub_0207A798(int param0, void *param1, int param2)
{
    UnkStruct_0207A778 *v0 = param1;

    if (v0->unk_00->battleType & BATTLE_TYPE_FRONTIER) {
        return (u8 *)&v0->unk_00->trainerData[param0 * 2];
    } else {
        return (u8 *)&v0->unk_00->trainerData[param0];
    }
}

static u8 *sub_0207A7B8(int param0, void *param1, int param2)
{
    UnkStruct_0207A778 *v0 = param1;

    if (v0->unk_00->battleType & BATTLE_TYPE_FRONTIER) {
        return (u8 *)v0->unk_00->parties[param0 * 2];
    } else {
        return (u8 *)v0->unk_00->parties[param0];
    }
}

static u8 *sub_0207A7D4(int param0, void *param1, int param2)
{
    UnkStruct_0207A778 *v0 = param1;

    if (v0->unk_00->battleType & BATTLE_TYPE_FRONTIER) {
        return (u8 *)v0->unk_00->unk_F0[param0 * 2];
    } else {
        return (u8 *)v0->unk_00->unk_F0[param0];
    }
}

static u8 *sub_0207A7F4(int param0, void *param1, int param2)
{
    UnkStruct_0207A778 *v0 = param1;
    return (u8 *)&v0->unk_00->trainerData[1];
}

static u8 *sub_0207A7FC(int param0, void *param1, int param2)
{
    UnkStruct_0207A778 *v0 = param1;
    return (u8 *)&v0->unk_00->trainerData[3];
}

static u8 *sub_0207A804(int param0, void *param1, int param2)
{
    UnkStruct_0207A778 *v0 = param1;
    return (u8 *)v0->unk_00->parties[1];
}

static u8 *sub_0207A80C(int param0, void *param1, int param2)
{
    UnkStruct_0207A778 *v0 = param1;
    return (u8 *)v0->unk_00->parties[3];
}

static u8 *sub_0207A814(int param0, void *param1, int param2)
{
    UnkStruct_0207A778 *v0 = param1;
    return (u8 *)v0->unk_10[param0];
}

void sub_0207A81C(BattleSystem *param0, int param1, int param2, void *param3, u8 param4)
{
    int v0;
    UnkStruct_0207A81C *v1;
    u8 *v2;
    u8 *v3;
    u16 *v4;
    u16 *v5;

    v1 = (UnkStruct_0207A81C *)Heap_AllocFromHeap(5, sizeof(UnkStruct_0207A81C));
    v3 = ov16_0223E06C(param0);
    v4 = ov16_0223E08C(param0);
    v5 = ov16_0223E098(param0);

    if (v4[0] + sizeof(UnkStruct_0207A81C) + param4 + 1 > 0x1000) {
        v5[0] = v4[0];
        v4[0] = 0;
    }

    v1->unk_00 = param1;
    v1->unk_01 = param2;
    v1->unk_02 = param4;

    v2 = (u8 *)v1;

    for (v0 = 0; v0 < sizeof(UnkStruct_0207A81C); v0++) {
        v3[v4[0]] = v2[v0];
        v4[0]++;
    }

    v2 = (u8 *)param3;

    for (v0 = 0; v0 < param4; v0++) {
        v3[v4[0]] = v2[v0];
        v4[0]++;
    }

    Heap_FreeToHeap(v1);
}

static void sub_0207A8A8(int param0, int param1, void *param2, void *param3)
{
    BattleSystem *v0 = (BattleSystem *)param3;
    int v1;
    u8 *v2 = (u8 *)param2;
    u8 *v3 = ov16_0223E074(v0);
    u16 *v4 = ov16_0223E0B0(v0);
    u16 *v5 = ov16_0223E0BC(v0);

    if (v4[0] + param1 + 1 > 0x1000) {
        v5[0] = v4[0];
        v4[0] = 0;
    }

    for (v1 = 0; v1 < param1; v1++) {
        v3[v4[0]] = v2[v1];
        v4[0]++;
    }
}

BOOL sub_0207A8F4(UnkStruct_0207A778 *param0, u32 param1)
{
    Party *v0;

    if (CommSys_SendRingRemainingSize() != 264) {
        return 0;
    }

    if (CommTiming_IsSyncState(51) == 0) {
        return 0;
    }

    return CommSys_SendData(24, (void *)&param1, 4);
}

static void sub_0207A934(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_0207A778 *v0 = (UnkStruct_0207A778 *)param3;

    v0->unk_00->unk_154[param0] = *((u32 *)param2);
    sub_0202FAA8(param0, v0->unk_00->unk_154[param0]);
    v0->unk_1020++;
}

BOOL sub_0207A960(UnkStruct_0207A778 *param0)
{
    TrainerInfo *v0;

    if (CommSys_SendRingRemainingSize() != 264) {
        return 0;
    }

    v0 = (TrainerInfo *)&param0->unk_20[0];
    TrainerInfo_Copy(param0->unk_00->unk_D0[0], v0);

    return 1;
}

BOOL sub_0207A988(UnkStruct_0207A778 *param0)
{
    if (CommSys_SendRingRemainingSize() != 264) {
        return 0;
    }

    if (CommTiming_IsSyncState(52) == 0) {
        return 0;
    }

    return CommSys_SendDataHuge(25, (void *)&param0->unk_20[0], TrainerInfo_Size());
}

static void sub_0207A9BC(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_0207A778 *v0 = (UnkStruct_0207A778 *)param3;
    v0->unk_1020++;
}

BOOL sub_0207A9CC(UnkStruct_0207A778 *param0)
{
    TrainerData *v0;

    if (CommSys_SendRingRemainingSize() != 264) {
        return 0;
    }

    v0 = (TrainerData *)&param0->unk_20[0];
    *v0 = param0->unk_00->trainerData[0];

    return 1;
}

BOOL sub_0207A9F8(UnkStruct_0207A778 *param0)
{
    if (CommSys_SendRingRemainingSize() != 264) {
        return 0;
    }

    if (CommTiming_IsSyncState(53) == 0) {
        return 0;
    }

    return CommSys_SendDataHuge(26, (void *)&param0->unk_20[0], sizeof(TrainerData));
}

static void sub_0207AA28(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_0207A778 *v0 = (UnkStruct_0207A778 *)param3;
    v0->unk_1020++;
}

BOOL sub_0207AA38(UnkStruct_0207A778 *param0)
{
    Party *v0;

    if (CommSys_SendRingRemainingSize() != 264) {
        return 0;
    }

    v0 = (Party *)&param0->unk_20[0];
    Party_cpy(param0->unk_00->parties[0], v0);

    return 1;
}

BOOL sub_0207AA5C(UnkStruct_0207A778 *param0)
{
    if (CommSys_SendRingRemainingSize() != 264) {
        return 0;
    }

    if (CommTiming_IsSyncState(54) == 0) {
        return 0;
    }

    return CommSys_SendDataHuge(27, (void *)&param0->unk_20[0], Party_SaveSize());
}

static void sub_0207AA90(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_0207A778 *v0 = (UnkStruct_0207A778 *)param3;

    v0->unk_1020++;
}

BOOL sub_0207AAA0(UnkStruct_0207A778 *param0)
{
    ChatotCry *v0;

    if (CommSys_SendRingRemainingSize() != 264) {
        return 0;
    }

    v0 = (ChatotCry *)&param0->unk_20[0];
    CopyChatotCryData(v0, param0->unk_00->unk_F0[0]);

    return 1;
}

BOOL sub_0207AAC8(UnkStruct_0207A778 *param0)
{
    if (CommSys_SendRingRemainingSize() != 264) {
        return 0;
    }

    if (CommTiming_IsSyncState(55) == 0) {
        return 0;
    }

    return CommSys_SendDataHuge(28, (void *)&param0->unk_20[0], 1000);
}

BOOL sub_0207AAFC(UnkStruct_0207A778 *param0)
{
    UnkStruct_02027F8C *v0;
    TrainerInfo *v1;

    if (CommSys_SendRingRemainingSize() != 264) {
        return 0;
    }

    v0 = (UnkStruct_02027F8C *)&param0->unk_20[0];

    if (param0->unk_00->battleType & BATTLE_TYPE_FRONTIER) {
        v1 = param0->unk_00->unk_D0[CommSys_CurNetId() * 2];
    } else {
        v1 = param0->unk_00->unk_D0[CommSys_CurNetId()];
    }

    sub_0207ADD4(v1, param0->unk_00->unk_124, (UnkStruct_02027F8C *)param0->unk_20);

    {
        int v2;

        for (v2 = 0; v2 < 4; v2++) {
            param0->unk_10[v2] = Heap_AllocFromHeap(5, 136);
        }
    }

    return 1;
}

BOOL sub_0207AB58(UnkStruct_0207A778 *param0)
{
    if (CommSys_SendRingRemainingSize() != 264) {
        return 0;
    }

    if (CommTiming_IsSyncState(56) == 0) {
        return 0;
    }

    return CommSys_SendDataHuge(33, (void *)param0->unk_20, 1000);
}

static void sub_0207AB8C(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_0207A778 *v0 = (UnkStruct_0207A778 *)param3;
    v0->unk_1020++;
}

BOOL sub_0207AB9C(UnkStruct_0207A778 *param0, int param1)
{
    TrainerData *v0;

    if (CommSys_SendRingRemainingSize() != 264) {
        return 0;
    }

    v0 = (TrainerData *)&param0->unk_20[0];
    *v0 = param0->unk_00->trainerData[param1];

    return 1;
}

BOOL sub_0207ABD0(UnkStruct_0207A778 *param0, int param1, int param2)
{
    if (CommSys_SendRingRemainingSize() != 264) {
        return 0;
    }

    if (CommTiming_IsSyncState(param2) == 0) {
        return 0;
    }

    if (param1 == 1) {
        return CommSys_SendDataHuge(29, (void *)&param0->unk_20[0], sizeof(TrainerData));
    } else {
        return CommSys_SendDataHuge(30, (void *)&param0->unk_20[0], sizeof(TrainerData));
    }
}

static void sub_0207AC18(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_0207A778 *v0 = (UnkStruct_0207A778 *)param3;
    v0->unk_1020++;
}

BOOL sub_0207AC28(UnkStruct_0207A778 *param0, int param1)
{
    Party *v0;

    if (CommSys_SendRingRemainingSize() != 264) {
        return 0;
    }

    v0 = (Party *)&param0->unk_20[0];
    Party_cpy(param0->unk_00->parties[param1], v0);

    return 1;
}

BOOL sub_0207AC54(UnkStruct_0207A778 *param0, int param1, int param2)
{
    if (CommSys_SendRingRemainingSize() != 264) {
        return 0;
    }

    if (CommTiming_IsSyncState(param2) == 0) {
        return 0;
    }

    if (param1 == 1) {
        return CommSys_SendDataHuge(31, (void *)&param0->unk_20[0], Party_SaveSize());
    } else {
        return CommSys_SendDataHuge(32, (void *)&param0->unk_20[0], Party_SaveSize());
    }
}

static void sub_0207ACA4(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_0207A778 *v0 = (UnkStruct_0207A778 *)param3;
    v0->unk_1020++;
}

void sub_0207ACB4(SysTask *param0, void *param1)
{
    UnkStruct_0207ACB4 *v0 = (UnkStruct_0207ACB4 *)param1;
    u8 *v1;
    u16 *v2;
    u16 *v3;
    u16 *v4;
    int v5;

    v1 = ov16_0223E06C(v0->unk_00);
    v2 = ov16_0223E080(v0->unk_00);
    v3 = ov16_0223E08C(v0->unk_00);
    v4 = ov16_0223E098(v0->unk_00);

    switch (v0->unk_04) {
    case 0:
        if (CommSys_SendRingRemainingSize() != 264) {
            break;
        }

        if (v2[0] == v3[0]) {
            break;
        }

        if (v2[0] == v4[0]) {
            v2[0] = 0;
            v4[0] = 0;
        }

        v5 = sizeof(UnkStruct_0207A81C) + (v1[v2[0] + 2] | (v1[v2[0] + 3] << 8));

        if (CommSys_SendData(23, (void *)&v1[v2[0]], v5) == 1) {
            v2[0] += v5;
        }
        break;
    default:
    case 255:
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);
        break;
    }
}

void sub_0207AD40(SysTask *param0, void *param1)
{
    UnkStruct_0207AD40 *v0 = (UnkStruct_0207AD40 *)param1;
    u8 *v1;
    u16 *v2;
    u16 *v3;
    u16 *v4;
    int v5;

    v1 = ov16_0223E074(v0->unk_00);
    v2 = ov16_0223E0A4(v0->unk_00);
    v3 = ov16_0223E0B0(v0->unk_00);
    v4 = ov16_0223E0BC(v0->unk_00);

    switch (v0->unk_04) {
    case 0:
        if (v2[0] == v3[0]) {
            break;
        }

        if (v2[0] == v4[0]) {
            v2[0] = 0;
            v4[0] = 0;
        }

        if (ov16_02266AE4(v0->unk_00, (void *)&v1[v2[0]]) == 1) {
            v5 = sizeof(UnkStruct_0207A81C) + (v1[v2[0] + 2] | (v1[v2[0] + 3] << 8));
            v2[0] += v5;
        }
        break;
    default:
    case 255:
        Heap_FreeToHeap(param1);
        SysTask_Done(param0);
        break;
    }
}

static void sub_0207ADB4(int param0, int param1, void *param2, void *param3)
{
    BattleSystem *v0 = (BattleSystem *)param3;

    ov16_0223F338(v0, 255);
    ov16_0223F344(v0, 255);
    ov16_0223F350(v0, 1);
}

static void sub_0207ADD4(TrainerInfo *param0, UnkStruct_02027F8C *param1, UnkStruct_02027F8C *param2)
{
    int v0;

    CharCode_Copy(param2->unk_00, TrainerInfo_Name(param0));

    param2->unk_10 = TrainerInfo_ID(param0);
    param2->unk_14 = TrainerInfo_RegionCode(param0);
    param2->unk_15 = TrainerInfo_GameCode(param0);
    param2->unk_16 = TrainerInfo_Gender(param0);

    for (v0 = 0; v0 < 16; v0++) {
        param2->unk_18[v0] = param1[v0].unk_10;
        param2->unk_58[v0] = param1[v0].unk_15;
        param2->unk_68[v0] = param1[v0].unk_14;
        param2->unk_78[v0] = param1[v0].unk_16;
    }
}

void sub_0207AE34(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_0207A778 *v0 = (UnkStruct_0207A778 *)param3;

    if (CommSys_CurNetId() != param0) {
        sub_02027FEC(v0->unk_00->unk_124, (UnkStruct_02027F8C *)param2, 1, 5);
    }

    v0->unk_1020++;
}

static int sub_0207AE64(void)
{
    return 136;
}
