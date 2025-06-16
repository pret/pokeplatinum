#include "macros/scrcmd.inc"
#include "res/text/bank/mt_coronet_1f_tunnel_room.h"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ApplyMovement 16, _0024
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
_0024:
    FaceNorth
    EndMovement
