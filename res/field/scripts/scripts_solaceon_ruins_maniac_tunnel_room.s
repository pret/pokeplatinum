#include "macros/scrcmd.inc"
#include "res/text/gmm/message_bank_solaceon_ruins_maniac_tunnel_room.h"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_26D 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
