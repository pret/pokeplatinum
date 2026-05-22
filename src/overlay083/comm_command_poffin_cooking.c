#include "overlay083/comm_command_poffin_cooking.h"

#include <nitro.h>
#include <string.h>

#include "constants/communication/comm_command.h"

#include "struct_defs/comm_cmd_table.h"

#include "overlay083/ov83_0223D150.h"

#include "poffin.h"

// clang-format off
static const CommCmdTable Unk_ov83_02240390[] = {
    [COMM_CMD_POFFIN_22 - COMM_CMD_MAX_COMMON] = { CommCmd_Poffin_22, ov83_0223D4AC, NULL },
    [COMM_CMD_POFFIN_23 - COMM_CMD_MAX_COMMON] = { ov83_0223D210, ov83_0223D4AC, NULL },
    [COMM_CMD_POFFIN_24 - COMM_CMD_MAX_COMMON] = { ov83_0223D21C, ov83_0223D4B4, NULL },
    [COMM_CMD_POFFIN_25 - COMM_CMD_MAX_COMMON] = { ov83_0223D258, ov83_0223D4B8, NULL },
    [COMM_CMD_POFFIN_26 - COMM_CMD_MAX_COMMON] = { ov83_0223D2E8, ov83_0223D4BC, NULL },
    [COMM_CMD_POFFIN_27 - COMM_CMD_MAX_COMMON] = { ov83_0223D3D8, ov83_0223D4C0, NULL },
    [COMM_CMD_POFFIN_28 - COMM_CMD_MAX_COMMON] = { ov83_0223D3F8, Poffin_SizeOf, NULL },
    [COMM_CMD_POFFIN_29 - COMM_CMD_MAX_COMMON] = { ov83_0223D410, ov83_0223D4B0, NULL },
    [COMM_CMD_POFFIN_30 - COMM_CMD_MAX_COMMON] = { ov83_0223D430, ov83_0223D4B0, NULL },
    [COMM_CMD_POFFIN_31 - COMM_CMD_MAX_COMMON] = { ov83_0223D354, ov83_0223D4C4, NULL },
    [COMM_CMD_POFFIN_32 - COMM_CMD_MAX_COMMON] = { ov83_0223D3A8, ov83_0223D4C8, NULL }
};
// clang-format on

const CommCmdTable *ov83_0223D144(void)
{
    return Unk_ov83_02240390;
}

int ov83_0223D14C(void)
{
    return sizeof(Unk_ov83_02240390) / sizeof(CommCmdTable);
}
