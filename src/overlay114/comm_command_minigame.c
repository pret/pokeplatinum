#include "overlay114/comm_command_minigame.h"

#include "constants/communication/comm_command.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/comm_cmd_table.h"

#include "overlay114/ov114_02260044.h"

static const CommCmdTable Unk_ov114_022603E4[] = {
    [COMM_CMD_MINIGAME_22 - COMM_CMD_MAX_COMMON] = { CommCmd_Minigame_22, ov114_0226007C, NULL },
    [COMM_CMD_MINIGAME_23 - COMM_CMD_MAX_COMMON] = { CommCmd_Minigame_23, ov114_0226007C, NULL },
    [COMM_CMD_MINIGAME_24 - COMM_CMD_MAX_COMMON] = { CommCmd_Minigame_24, ov114_0226007C, NULL },
    [COMM_CMD_MINIGAME_25 - COMM_CMD_MAX_COMMON] = { CommCmd_Minigame_25, ov114_0226007C, NULL },
    [COMM_CMD_MINIGAME_26 - COMM_CMD_MAX_COMMON] = { CommCmd_Minigame_26, ov114_02260080, NULL },
};

const CommCmdTable *ov114_02260038(void)
{
    return Unk_ov114_022603E4;
}

int ov114_02260040(void)
{
    return sizeof(Unk_ov114_022603E4) / sizeof(CommCmdTable);
}
