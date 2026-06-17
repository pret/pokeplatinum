#include "comm_command_contest.h"

#include <nitro.h>
#include <string.h>

#include "constants/communication/comm_command.h"

#include "struct_defs/comm_cmd_table.h"
#include "struct_defs/struct_02029C88.h"
#include "struct_defs/struct_02095B28.h"
#include "struct_defs/struct_02095C60.h"

#include "overlay006/ov6_022489E4.h"
#include "overlay017/ov17_02252CEC.h"
#include "overlay017/struct_ov17_0224EDE0.h"

#include "comm_command.h"
#include "communication_system.h"
#include "contest.h"
#include "heap.h"
#include "unk_020298BC.h"

static void CommCmd_Contest_23(int param0, int param1, void *param2, void *param3);
static u8 *sub_02095B04(int param0, void *param1, int param2);
static void CommCmd_Contest_32(int param0, int param1, void *param2, void *param3);
static void CommCmd_Contest_33(int param0, int param1, void *param2, void *param3);
static void CommCmd_Contest_34(int param0, int param1, void *param2, void *param3);
static void CommCmd_Contest_35(int param0, int param1, void *param2, void *param3);
static int sub_02095B24(void);
static int sub_02095B28(void);

// clang-format off
static const CommCmdTable Unk_020F58FC[] = {
    [COMM_CMD_CONTEST_DUMMY - COMM_CMD_MAX_COMMON] = { NULL, CommPacketSizeOf_Nothing, NULL },
    [COMM_CMD_CONTEST_23 - COMM_CMD_MAX_COMMON] = { CommCmd_Contest_23, CommPacketSizeOf_Nothing, NULL },
    [COMM_CMD_CONTEST_24 - COMM_CMD_MAX_COMMON] = { CommCmd_Contest_24, CommPacketSizeOf_Variable, sub_02095B04 },
    [COMM_CMD_CONTEST_25 - COMM_CMD_MAX_COMMON] = { CommCmd_Contest_25, sub_02095B24, NULL },
    [COMM_CMD_CONTEST_26 - COMM_CMD_MAX_COMMON] = { CommCmd_Contest_26, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_CONTEST_27 - COMM_CMD_MAX_COMMON] = { CommCmd_Contest_27, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_CONTEST_28 - COMM_CMD_MAX_COMMON] = { CommCmd_Contest_28, CommPacketSizeOf_Variable, sub_02095B04 },
    [COMM_CMD_CONTEST_29 - COMM_CMD_MAX_COMMON] = { CommCmd_Contest_29, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_CONTEST_30 - COMM_CMD_MAX_COMMON] = { CommCmd_Contest_30, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_CONTEST_31 - COMM_CMD_MAX_COMMON] = { CommCmd_Contest_31, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_CONTEST_32 - COMM_CMD_MAX_COMMON] = { CommCmd_Contest_32, CommPacketSizeOf_Variable, NULL },
    [COMM_CMD_CONTEST_33 - COMM_CMD_MAX_COMMON] = { CommCmd_Contest_33, CommPacketSizeOf_Variable, sub_02095B04 },
    [COMM_CMD_CONTEST_34 - COMM_CMD_MAX_COMMON] = { CommCmd_Contest_34, sub_02095B28, NULL },
    [COMM_CMD_CONTEST_35 - COMM_CMD_MAX_COMMON] = { CommCmd_Contest_35, sub_02095B28, NULL },
    [COMM_CMD_CONTEST_36 - COMM_CMD_MAX_COMMON] = { CommCmd_Contest_36, CommPacketSizeOf_Variable, sub_02095B04 },
    [COMM_CMD_CONTEST_37 - COMM_CMD_MAX_COMMON] = { CommCmd_Contest_37, CommPacketSizeOf_Variable, NULL }
};
// clang-format on

void sub_02095AF0(void *param0)
{
    int v0 = sizeof(Unk_020F58FC) / sizeof(CommCmdTable);
    CommCmdManager_Init(Unk_020F58FC, v0, param0);
}

static u8 *sub_02095B04(int param0, void *param1, int param2)
{
    Contest *v0 = param1;

    GF_ASSERT(param2 < 1024);
    return v0->unk_969[param0];
}

static int sub_02095B24(void)
{
    return sizeof(UnkStruct_ov17_0224EDE0);
}

static int sub_02095B28(void)
{
    return sizeof(UnkStruct_02095B28);
}

static void CommCmd_Contest_23(int param0, int param1, void *param2, void *param3)
{
    return;
}

static void CommCmd_Contest_32(int param0, int param1, void *param2, void *param3)
{
    Contest *v0 = param3;
    int v1;
    int v2;
    u8 *v3;

    v1 = sub_02029C64();
    v3 = param2;
    v2 = v3[v1];

    MI_CpuCopy8(param2, v0->unk_00.unk_E8[v2], v1);

    v0->unk_568++;
}

BOOL sub_02095B5C(Contest *param0, int param1, const UnkStruct_02029C88 *param2)
{
    u8 *v0;
    int v1;
    int v2;

    v1 = sub_02029C64();
    v0 = Heap_Alloc(HEAP_ID_20, v1 + 1);
    MI_CpuCopy8(param2, v0, v1);
    v0[v1] = param1;

    if (CommSys_SendData(COMM_CMD_CONTEST_32, v0, v1 + 1) == 1) {
        v2 = 1;
    } else {
        v2 = 0;
    }

    Heap_Free(v0);
    return v2;
}

static void CommCmd_Contest_33(int param0, int param1, void *param2, void *param3)
{
    Contest *v0 = param3;
    int v1, v2;
    u8 *v3;
    int v4;

    v1 = sub_02029C64();
    v2 = v1 * 4;
    v3 = param2;

    GF_ASSERT(v2 < 1024);

    for (v4 = 0; v4 < 4; v4++) {
        MI_CpuCopy8(&v3[v1 * v4], v0->unk_00.unk_E8[v4], v1);
    }

    v0->unk_568++;
}

BOOL sub_02095BEC(Contest *param0, UnkStruct_02029C88 **param1)
{
    u8 *v0;
    int v1, v2;
    int v3;
    int v4;

    v1 = sub_02029C64();
    v2 = v1 * 4;

    GF_ASSERT(v2 < 1024);

    v0 = param0->unk_569;

    for (v4 = 0; v4 < 4; v4++) {
        MI_CpuCopy8(param1[v4], &v0[v1 * v4], v1);
    }

    if (CommSys_SendDataHuge(COMM_CMD_CONTEST_33, v0, v2) == 1) {
        v3 = 1;
    } else {
        v3 = 0;
    }

    return v3;
}

static void CommCmd_Contest_34(int param0, int param1, void *param2, void *param3)
{
    Contest *v0 = param3;
    MI_CpuCopy8(param2, &v0->unk_1984.unk_00, param1);
}

BOOL sub_02095C60(UnkStruct_02095C60 *param0, u32 param1)
{
    if (param0->unk_16 == 0) {
        param0->unk_00.unk_00 = param1;
        return 1;
    }

    if (param0->unk_14 != param0->unk_15) {
        return 0;
    }

    param0->unk_08.unk_00 = param1;

    if (CommSys_SendData(COMM_CMD_CONTEST_34, &param0->unk_08, sizeof(UnkStruct_02095B28)) == 1) {
        return 1;
    }

    return 0;
}

static void CommCmd_Contest_35(int param0, int param1, void *param2, void *param3)
{
    Contest *v0 = param3;
    UnkStruct_02095B28 *v1 = param2;
    v0->unk_1984.unk_10[param0] = v1->unk_04;
}

BOOL sub_02095CA8(UnkStruct_02095C60 *param0, int param1)
{
    if (param0->unk_16 == 0) {
        param0->unk_10[0] = param1;
        return 1;
    }

    param0->unk_08.unk_04 = param1;

    if (CommSys_SendData(COMM_CMD_CONTEST_35, &param0->unk_08, sizeof(UnkStruct_02095B28)) == 1) {
        return 1;
    }

    return 0;
}
