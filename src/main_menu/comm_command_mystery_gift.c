#include "main_menu/comm_command_mystery_gift.h"

#include <nitro.h>
#include <string.h>

#include "constants/communication/comm_command.h"

#include "struct_defs/comm_cmd_table.h"

#include "main_menu/ov97_0222D04C.h"

#include "comm_command.h"

static const CommCmdTable Unk_ov97_0223D704[] = {
    [COMM_CMD_MYSTERY_GIFT_22 - COMM_CMD_MAX_COMMON] = { CommCmd_MysteryGift_22, ov97_0222D2B0, ov97_0222D2B8 },
    [COMM_CMD_MYSTERY_GIFT_23 - COMM_CMD_MAX_COMMON] = { CommCmd_MysteryGift_23, CommPacketSizeOf_Nothing, NULL }
};

void ov97_0222D2F8(void *param0)
{
    int v0 = sizeof(Unk_ov97_0223D704) / sizeof(CommCmdTable);
    CommCmdManager_Init(Unk_ov97_0223D704, v0, param0);
}
