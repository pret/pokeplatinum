#include "overlay115/comm_command_swalot_plop.h"

#include <nitro.h>
#include <string.h>

#include "constants/communication/comm_command.h"

#include "struct_defs/comm_cmd_table.h"

#include "overlay115/ov115_02265A24.h"

static const CommCmdTable Unk_ov115_0226664C[] = {
    [COMM_COMMAND_SWALOT_PLOP_22 - COMM_CMD_MAX_COMMON] = { CommCmd_SwalotPlop_22, ov115_02265A40, NULL },
    [COMM_COMMAND_SWALOT_PLOP_23 - COMM_CMD_MAX_COMMON] = { CommCmd_SwalotPlot_23, ov115_02265A40, NULL },
    [COMM_COMMAND_SWALOT_PLOP_24 - COMM_CMD_MAX_COMMON] = { CommCmd_SwalotPlop_24, ov115_02265AD0, NULL },
    [COMM_COMMAND_SWALOT_PLOP_25 - COMM_CMD_MAX_COMMON] = { CommCmd_SwalotPlop_25, ov115_02265AD8, NULL },
    [COMM_COMMAND_SWALOT_PLOP_26 - COMM_CMD_MAX_COMMON] = { CommCmd_SwalotPlop_26, ov115_02265AD4, NULL },
    [COMM_COMMAND_SWALOT_PLOP_27 - COMM_CMD_MAX_COMMON] = { CommCmd_SwalotPlop_27, ov115_02265ADC, NULL },
    [COMM_COMMAND_SWALOT_PLOP_28 - COMM_CMD_MAX_COMMON] = { CommCmd_SwalotPlop_28, ov115_02265AD8, NULL },
    [COMM_COMMAND_SWALOT_PLOP_29 - COMM_CMD_MAX_COMMON] = { CommCmd_SwalotPlop_29, ov115_02265A40, NULL },
};

const CommCmdTable *ov115_02265A18(void)
{
    return Unk_ov115_0226664C;
}

int ov115_02265A20(void)
{
    return sizeof(Unk_ov115_0226664C) / sizeof(CommCmdTable);
}
