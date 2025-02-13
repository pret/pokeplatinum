#include "macros/scrcmd.inc"
#include "res/text/bank/solaceon_ruins_maniac_tunnel_room.h"

    .data

    ScriptEntry _0006
    TableEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_26D 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
