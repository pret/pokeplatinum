#include "comm_command_waiting_room.h"

#include <nitro.h>
#include <string.h>

#include "constants/communication/comm_command.h"

#include "struct_defs/comm_cmd_table.h"

#include "unk_0209C390.h"

// clang-format off
static const CommCmdTable Unk_020E5F24[] = {
    [COMM_CMD_WAITING_ROOM_22 - COMM_CMD_MAX_COMMON] = { CommCmd_WaitingRoom_22, sub_0209C3C8, NULL },
    [COMM_CMD_WAITING_ROOM_23 - COMM_CMD_MAX_COMMON] = { CommCmd_WaitingRoom_23, sub_0209C3C4, NULL },
    [COMM_CMD_WAITING_ROOM_24 - COMM_CMD_MAX_COMMON] = { CommCmd_WaitingRoom_24, sub_0209C3CC, NULL }
};
// clang-format on

const CommCmdTable *sub_02039A58(void)
{
    return Unk_020E5F24;
}

int sub_02039A60(void)
{
    return sizeof(Unk_020E5F24) / sizeof(CommCmdTable);
}
