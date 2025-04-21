#include "macros/scrcmd.inc"
#include "res/text/bank/route_206_cycling_road_south_gate.h"

    .data

    ScriptEntry _001A
    ScriptEntry _003D
    ScriptEntry _0050
    ScriptEntry _00A0
    ScriptEntry _00B0
    ScriptEntry _001C
    ScriptEntryEnd

_001A:
    End

_001C:
    GetPlayerMapPos VAR_MAP_LOCAL_4, VAR_MAP_LOCAL_5
    CallIfLe VAR_MAP_LOCAL_5, 3, _0037
    SetVar VAR_MAP_LOCAL_3, 1
    End

_0037:
    SetFlag FLAG_FORCE_BIKING_IN_GATE
    Return

_003D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0050:
    LockAll
    CheckPlayerOnBike VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, _0080
    ApplyMovement 0, _0090
    WaitMovement
    Message 1
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _0098
    WaitMovement
    ReleaseAll
    End

_0080:
    SetFlag FLAG_FORCE_BIKING_IN_GATE
    SetVar VAR_MAP_LOCAL_2, 1
    ReleaseAll
    End

    .balign 4, 0
_0090:
    MoveAction_075
    EndMovement

    .balign 4, 0
_0098:
    MoveAction_013
    EndMovement

_00A0:
    LockAll
    ClearFlag FLAG_FORCE_BIKING_IN_GATE
    SetVar VAR_MAP_LOCAL_2, 0
    ReleaseAll
    End

_00B0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x012B, _00E5
    SetVar VAR_0x8004, ACCESSORY_FLAG
    ScrCmd_261 0, VAR_0x8004
    Message 3
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7DF
    SetFlag FLAG_UNK_0x012B
    CloseMessage
    ReleaseAll
    End

_00E5:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
