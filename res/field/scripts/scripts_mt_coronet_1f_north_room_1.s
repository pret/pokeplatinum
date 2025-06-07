#include "macros/scrcmd.inc"
#include "res/text/bank/mt_coronet_1f_north_room_1.h"

    .data

    ScriptEntry _000A
    ScriptEntry _001D
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_001D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ApplyMovement 16, _0058
    WaitMovement
    Message 1
    ApplyMovement 17, _0060
    WaitMovement
    Message 2
    CloseMessage
    ApplyMovement 16, _0068
    ApplyMovement 17, _0068
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
_0058:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0060:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0068:
    WalkOnSpotNormalWest
    EndMovement
