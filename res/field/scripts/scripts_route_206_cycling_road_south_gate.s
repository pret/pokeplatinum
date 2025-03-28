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
    GetPlayerMapPos 0x4004, 0x4005
    CallIfLe 0x4005, 3, _0037
    SetVar 0x4003, 1
    End

_0037:
    SetFlag FLAG_UNK_0x0996
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
    CheckPlayerOnBike 0x800C
    GoToIfEq 0x800C, TRUE, _0080
    ApplyMovement 0, _0090
    WaitMovement
    Message 1
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _0098
    WaitMovement
    ReleaseAll
    End

_0080:
    SetFlag FLAG_UNK_0x0996
    SetVar 0x4002, 1
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
    ClearFlag FLAG_UNK_0x0996,
    SetVar 0x4002, 0
    ReleaseAll
    End

_00B0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x012B, _00E5
    SetVar 0x8004, 96
    ScrCmd_261 0, 0x8004
    Message 3
    SetVar 0x8005, 1
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
