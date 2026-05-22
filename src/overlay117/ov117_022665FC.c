#include "overlay117/ov117_022665FC.h"

#include <nitro.h>
#include <string.h>

#include "constants/communication/comm_command.h"

#include "struct_defs/comm_cmd_table.h"

#include "overlay117/ov117_02260668.h"
#include "overlay117/struct_ov117_02261280.h"
#include "overlay117/struct_ov117_022621D4.h"

#include "comm_command.h"
#include "communication_system.h"

static void CommCmd_ov117_24(int param0, int param1, void *param2, void *param3);
static void CommCmd_ov117_25(int param0, int param1, void *param2, void *param3);
static void CommCmd_ov117_23(int param0, int param1, void *param2, void *param3);
static int ov117_02266610(void);
static int ov117_02266614(void);

// clang-format off
static const CommCmdTable Unk_ov117_02266FE4[] = {
    [COMM_CMD_OV117_NONE - COMM_CMD_MAX_COMMON] = { NULL, CommPacketSizeOf_Nothing, NULL },
    [COMM_CMD_OV117_23 - COMM_CMD_MAX_COMMON] = { CommCmd_ov117_23, ov117_02266614, NULL },
    [COMM_CMD_OV117_24 - COMM_CMD_MAX_COMMON] = { CommCmd_ov117_24, ov117_02266610, NULL },
    [COMM_CMD_OV117_25 - COMM_CMD_MAX_COMMON] = { CommCmd_ov117_25, CommPacketSizeOf_Nothing, NULL }
};
// clang-format on

void ov117_022665FC(void *param0)
{
    int v0 = sizeof(Unk_ov117_02266FE4) / sizeof(CommCmdTable);

    CommCmdManager_Init(Unk_ov117_02266FE4, v0, param0);
    GF_ASSERT(sizeof(UnkStruct_ov117_022621D4) < 256);
}

static int ov117_02266610(void)
{
    return sizeof(UnkStruct_ov117_022621D4);
}

static int ov117_02266614(void)
{
    return sizeof(u32);
}

static void CommCmd_ov117_24(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov117_02261280 *v0 = param3;
    ov117_02262044(v0, param0, param2);
}

BOOL ov117_02266624(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_022621D4 *param1)
{
    if (CommSys_SendData(COMM_CMD_OV117_24, param1, sizeof(UnkStruct_ov117_022621D4)) == 1) {
        return 1;
    }

    return 0;
}

static void CommCmd_ov117_25(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov117_02261280 *v0 = param3;
    v0->unk_2FC0 = 1;
}

BOOL ov117_02266648(UnkStruct_ov117_02261280 *param0)
{
    if (CommSys_SendData(COMM_CMD_OV117_25, NULL, 0) == 1) {
        return 1;
    }

    return 0;
}

static void CommCmd_ov117_23(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov117_02261280 *v0 = param3;
    u32 *v1 = param2;
    u32 v2;
    int v3;

    v2 = v1[0];

    for (v3 = 0; v3 < v0->unk_00->unk_30; v3++) {
        if (v0->unk_00->unk_2C[v3] == param0) {
            v0->unk_0C[v3] = v2;
            break;
        }
    }

    GF_ASSERT(v3 < v0->unk_00->unk_30);
    v0->unk_08++;
}

BOOL ov117_022666A4(UnkStruct_ov117_02261280 *param0)
{
    u32 v0 = 100;

    if (CommSys_SendData(COMM_CMD_OV117_23, &v0, sizeof(u32)) == 1) {
        return 1;
    }

    return 0;
}
