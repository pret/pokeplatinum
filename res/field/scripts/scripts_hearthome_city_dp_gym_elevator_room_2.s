#include "macros/scrcmd.inc"
#include "res/text/bank/hearthome_city_dp_gym_elevator_room_2.h"

    .data

    ScriptEntry _0012
    ScriptEntry _0016
    ScriptEntry _001A
    ScriptEntry _002B
    TableEnd

_0012:
    ScrCmd_171
    End

_0016:
    ScrCmd_172
    End

_001A:
    LockAll
    PlayFanfare SEQ_SE_DP_UG_020
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_002B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 0
    PlayFanfare SEQ_SE_DP_MAZYO4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
