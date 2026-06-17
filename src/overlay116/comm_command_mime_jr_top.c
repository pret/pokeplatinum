#include "overlay116/comm_command_mime_jr_top.h"

#include <nitro.h>
#include <string.h>

#include "constants/communication/comm_command.h"

#include "struct_defs/comm_cmd_table.h"

#include "overlay116/ov116_022604C4.h"
#include "overlay116/struct_ov116_0226048C.h"
#include "overlay116/struct_ov116_02260490.h"
#include "overlay116/struct_ov116_02260494.h"
#include "overlay116/struct_ov116_02260498.h"
#include "overlay116/struct_ov116_0226139C.h"

#include "comm_command.h"
#include "math_util.h"

static void CommCmd_MimeJrTop_22(int param0, int param1, void *param2, void *param3);
static void CommCmd_MimeJrTop_23(int param0, int param1, void *param2, void *param3);
static void CommCmd_MimeJrTop_24(int param0, int param1, void *param2, void *param3);
static void CommCmd_MimeJrTop_25(int param0, int param1, void *param2, void *param3);
static void CommCmd_MimeJrTop_26(int param0, int param1, void *param2, void *param3);
static int ov116_02260488(void);
static int ov116_0226048C(void);
static int ov116_02260490(void);
static int ov116_02260494(void);
static int ov116_02260498(void);

// clang-format off
static const CommCmdTable Unk_ov116_02267740[] = {
    [COMM_CMD_MIME_TOP_22 - COMM_CMD_MAX_COMMON] = { CommCmd_MimeJrTop_22, ov116_0226048C, NULL },
    [COMM_CMD_MIME_TOP_23 - COMM_CMD_MAX_COMMON] = { CommCmd_MimeJrTop_23, ov116_02260488, NULL },
    [COMM_CMD_MIME_TOP_24 - COMM_CMD_MAX_COMMON] = { CommCmd_MimeJrTop_24, ov116_02260490, NULL },
    [COMM_CMD_MIME_TOP_25 - COMM_CMD_MAX_COMMON] = { CommCmd_MimeJrTop_25, ov116_02260494, NULL },
    [COMM_CMD_MIME_TOP_26 - COMM_CMD_MAX_COMMON] = { CommCmd_MimeJrTop_26, ov116_02260498, NULL }
};
// clang-format on

static void CommCmd_MimeJrTop_22(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov116_0226139C *v0 = param3;

    v0->unk_14 = *((UnkStruct_ov116_0226048C *)param2);

    LCRNG_SetSeed(v0->unk_14.unk_04);
    ov116_022617D4(v0);
}

static void CommCmd_MimeJrTop_23(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov116_0226139C *v0 = param3;
    ov116_022617DC(v0);
}

static void CommCmd_MimeJrTop_24(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov116_0226139C *v0 = param3;
    UnkStruct_ov116_02260490 *v1 = ((UnkStruct_ov116_02260490 *)param2);
    v0->unk_04->unk_2858[param0].unk_00 = v1->unk_00;
}

static void CommCmd_MimeJrTop_25(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov116_0226139C *v0 = param3;
    UnkStruct_ov116_02260494 *v1 = ((UnkStruct_ov116_02260494 *)param2);
    v0->unk_24.unk_00[param0].unk_00 = v1->unk_00;
}

static void CommCmd_MimeJrTop_26(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov116_0226139C *v0 = param3;
}

static int ov116_02260488(void)
{
    return 0;
}

static int ov116_0226048C(void)
{
    return sizeof(UnkStruct_ov116_0226048C);
}

static int ov116_02260490(void)
{
    return sizeof(UnkStruct_ov116_02260490);
}

static int ov116_02260494(void)
{
    return sizeof(UnkStruct_ov116_02260494);
}

static int ov116_02260498(void)
{
    return sizeof(UnkStruct_ov116_02260498);
}

const CommCmdTable *ov116_0226049C(void)
{
    return Unk_ov116_02267740;
}

int ov116_022604A4(void)
{
    return sizeof(Unk_ov116_02267740) / sizeof(CommCmdTable);
}

void ov116_022604A8(UnkStruct_ov116_0226139C *param0)
{
    CommCmdManager_Init(ov116_0226049C(), ov116_022604A4(), param0);
}
