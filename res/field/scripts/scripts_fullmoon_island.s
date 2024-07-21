#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0015
    .short 0xFD13

_000A:
    SetFlag 0x9D0
    ScrCmd_270 0, 1
    End

_0015:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_1BD 0x8004
    CheckItem ITEM_LUNAR_WING, 1, 0x800C
    GoToIfEq 0x800C, 1, _0052
    Message 1
    ScrCmd_03E 0x800C
    CloseMessage
    GoToIfEq 0x800C, 0, _005D
    GoTo _0098

_0052:
    Message 0
    CloseMessage
    GoTo _005D

_005D:
    Call _00A3
    CallIfEq 0x8004, 1, _00BD
    CallIfEq 0x8004, 3, _00D7
    CallIfEq 0x8004, 0, _00F1
    ScrCmd_23D 0, 2, 33, 44, 0x2EE
    ReleaseAll
    End

_0098:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A3:
    ApplyMovement 0, _010C
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement 0, _0118
    WaitMovement
    Return

_00BD:
    ApplyMovement 0xFF, _0120
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement 0xFF, _0118
    WaitMovement
    Return

_00D7:
    ApplyMovement 0xFF, _0130
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement 0xFF, _0118
    WaitMovement
    Return

_00F1:
    ApplyMovement 0xFF, _013C
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement 0xFF, _0118
    WaitMovement
    Return

    .balign 4, 0
_010C:
    MoveAction_00F
    MoveAction_040
    EndMovement

    .balign 4, 0
_0118:
    MoveAction_045
    EndMovement

    .balign 4, 0
_0120:
    MoveAction_00D
    MoveAction_00F 2
    MoveAction_040
    EndMovement

    .balign 4, 0
_0130:
    MoveAction_00F 2
    MoveAction_040
    EndMovement

    .balign 4, 0
_013C:
    MoveAction_00C
    MoveAction_00F 2
    MoveAction_040
    EndMovement
