#include "macros/scrcmd.inc"
#include "res/text/bank/route_209_lost_tower_1f.h"


    ScriptEntry _000E
    ScriptEntry _0014
    ScriptEntry _0027
    ScriptEntryEnd

_000E:
    SetFlag FLAG_FIRST_ARRIVAL_LOST_TOWER
    End

_0014:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0027:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
