#include "comm_command_trade.h"

#include <nitro.h>
#include <string.h>

#include "constants/communication/comm_command.h"

#include "struct_decls/struct_02095E80_decl.h"
#include "struct_defs/comm_cmd_table.h"
#include "struct_defs/struct_02095E80_t.h"

#include "field/field_system.h"
#include "overlay088/ov88_0223B140.h"

#include "comm_command.h"
#include "communication_system.h"
#include "pal_pad.h"
#include "party.h"
#include "unk_0202D778.h"

void CommCmd_Trade_28(int param0, int param1, void *param2, void *param3);
void CommCmd_Trade_29(int param0, int param1, void *param2, void *param3);
void CommCmd_Trade_31(int param0, int param1, void *param2, void *param3);
void CommCmd_Trade_32(int param0, int param1, void *param2, void *param3);
static int sub_02095CE8(u8 param0);
static int sub_02095E78(void);
static int sub_02095E74(void);
static u8 *sub_02095E80(int param0, void *param1, int param2);
static int sub_02095E68(void);
static int sub_02095E70(void);

// clang-format off
static const CommCmdTable Unk_020F59BC[] = {
    [COMM_CMD_TRADE_22 - COMM_CMD_MAX_COMMON] = { CommCmd_Trade_22, sub_02095E78, sub_02095E80 },
    [COMM_CMD_TRADE_23 - COMM_CMD_MAX_COMMON] = { CommCmd_Trade_23, CommPacketSizeOf_NetId },
    [COMM_CMD_TRADE_24 - COMM_CMD_MAX_COMMON] = { CommCmd_Trade_24, CommPacketSizeOf_NetId },
    [COMM_CMD_TRADE_25 - COMM_CMD_MAX_COMMON] = { CommCmd_Trade_25, CommPacketSizeOf_NetId },
    [COMM_CMD_TRADE_26 - COMM_CMD_MAX_COMMON] = { CommCmd_Trade_26, CommPacketSizeOf_NetId },
    [COMM_CMD_TRADE_27 - COMM_CMD_MAX_COMMON] = { CommCmd_Trade_27, CommPacketSizeOf_NetId },
    [COMM_CMD_TRADE_28 - COMM_CMD_MAX_COMMON] = { CommCmd_Trade_28, sub_02095E74, sub_02095E80 },
    [COMM_CMD_TRADE_29 - COMM_CMD_MAX_COMMON] = { CommCmd_Trade_29, sub_02095E68, sub_02095E80 },
    [COMM_CMD_TRADE_30 - COMM_CMD_MAX_COMMON] = { CommCmd_Trade_30, CommPacketSizeOf_Nothing },
    [COMM_CMD_TRADE_31 - COMM_CMD_MAX_COMMON] = { CommCmd_Trade_31, CommPacketSizeOf_NetId },
    [COMM_CMD_TRADE_32 - COMM_CMD_MAX_COMMON] = { CommCmd_Trade_32, sub_02095E70 }
};
// clang-format on

void sub_02095CD4(void *param0)
{
    int v0 = sizeof(Unk_020F59BC) / sizeof(CommCmdTable);
    CommCmdManager_Init(Unk_020F59BC, v0, param0);
}

static int sub_02095CE8(u8 param0)
{
    if (param0 == 12) {
        return 12;
    }

    if (param0 < 6) {
        return param0 + 6;
    }

    return param0 - 6;
}

void CommCmd_Trade_22(int param0, int param1, void *param2, void *param3)
{
    FieldSystem *fieldSystem = (FieldSystem *)param3;
    UnkStruct_02095E80 *v1 = fieldSystem->unk_88;

    if (param0 != CommSys_CurNetId()) {
        memcpy((void *)v1->unk_2274, param2, (236 * 6 + 4 * 2));
        v1->unk_58++;

        if ((v1->unk_58) * (236 * 6 + 4 * 2) >= Party_SaveSize()) {
            if (CommSys_CurNetId() == 1) {
                ov88_0223D058(v1, COMM_CMD_TRADE_27, 0);
            } else {
                ov88_0223D098(CommSys_CurNetId(), v1->unk_2270, v1->unk_50);
            }
        } else {
            ov88_0223D098(CommSys_CurNetId(), v1->unk_2270, v1->unk_50);
        }

        v1->unk_50++;
    }
}

void CommCmd_Trade_23(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_02095E80 *v0 = ((FieldSystem *)param3)->unk_88;
    u8 *v1 = (u8 *)param2;

    if (param0 != CommSys_CurNetId()) {
        v0->unk_88[1] = sub_02095CE8(*v1);
    }
}

void CommCmd_Trade_24(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_02095E80 *v0 = ((FieldSystem *)param3)->unk_88;
    u8 *v1 = (u8 *)param2;

    v0->unk_60[param0] = *v1;
}

void CommCmd_Trade_25(int param0, int param1, void *param2, void *param3)
{
    return;
}

void CommCmd_Trade_26(int param0, int param1, void *param2, void *param3)
{
    return;
}

void CommCmd_Trade_27(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_02095E80 *v0 = ((FieldSystem *)param3)->unk_88;
    v0->unk_54 = 2;
}

void CommCmd_Trade_30(int param0, int param1, void *param2, void *param3)
{
    return;
}

void CommCmd_Trade_31(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_02095E80 *v0 = ((FieldSystem *)param3)->unk_88;
    u8 *v1 = (u8 *)param2;

    v0->unk_2318 = *v1;
}

void CommCmd_Trade_32(int param0, int param1, void *param2, void *param3)
{
    FieldSystem *fieldSystem = (FieldSystem *)param3;
    int v1;
    u8 *v2 = SaveData_GetRibbons(fieldSystem->saveData);
    u8 *v3 = (u8 *)param2;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    for (v1 = 0; v1 < 14; v1++) {
        if (v3[v1] != 0) {
            if (v2[v1] != v3[v1]) {
                v2[v1] = v3[v1];
            }
        }
    }
}

void CommCmd_Trade_28(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_02095E80 *v0 = ((FieldSystem *)param3)->unk_88;

    if (CommSys_CurNetId() != param0) {
        PalPad_PushEntries(v0->unk_227C, (PalPad *)param2, 1, HEAP_ID_26);
        v0->unk_54 = 3;
    }
}

void CommCmd_Trade_29(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_02095E80 *v0 = ((FieldSystem *)param3)->unk_88;

    if (CommSys_CurNetId() != param0) {
        MI_CpuCopyFast(param2, v0->unk_2E6C[param0], 1000);
        v0->unk_54 = 4;
        sub_0203632C(0);
    }
}

void sub_02095E60(FieldSystem *fieldSystem, UnkStruct_02095E80 *param1)
{
    fieldSystem->unk_88 = param1;
}

static int sub_02095E68(void)
{
    return 1000 + 4;
}

static int sub_02095E70(void)
{
    return 14;
}

static int sub_02095E74(void)
{
    return sizeof(PalPad);
}

static int sub_02095E78(void)
{
    return 236 * 6 + 4 * 2;
}

static u8 *sub_02095E80(int param0, void *param1, int param2)
{
    UnkStruct_02095E80 *v0 = ((FieldSystem *)param1)->unk_88;
    return (u8 *)v0->unk_234C[param0];
}
