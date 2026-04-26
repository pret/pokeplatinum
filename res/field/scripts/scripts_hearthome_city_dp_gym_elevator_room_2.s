#include "macros/scrcmd.inc"
#include "res/text/bank/hearthome_city_dp_gym_elevator_room_2.h"


    ScriptEntry _0012
    ScriptEntry _0016
    ScriptEntry _001A
    ScriptEntry _002B
    ScriptEntryEnd

_0012:
    InitPersistedMapFeaturesForHearthomeGym
    End

_0016:
    MoveHearthomeGymDPLift
    End

_001A:
    LockAll
    PlaySE SEQ_SE_DP_UG_020
    Message 1
    WaitButton
    CloseMessage
    ReleaseAll
    End

_002B:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message 0
    PlaySE SEQ_SE_DP_MAZYO4
    WaitButton
    CloseMessage
    ReleaseAll
    End
