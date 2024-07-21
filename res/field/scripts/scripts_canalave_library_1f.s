#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0016
    ScriptEntry _003F
    ScriptEntry _0080
    ScriptEntry _0091
    ScriptEntry _00A2
    .short 0xFD13

_0016:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 168, _0034
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0034:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_003F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet 168, _0068
    Message 2
    FacePlayer
    Message 3
    CloseMessage
    ApplyMovement 1, _0078
    WaitMovement
    ReleaseAll
    End

_0068:
    FacePlayer
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0078:
    MoveAction_000
    EndMovement

_0080:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0091:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 7
    ScrCmd_1B7 0x8000, 5
    CallIfEq 0x8000, 0, _00FC
    CallIfEq 0x8000, 1, _0101
    CallIfEq 0x8000, 2, _0106
    CallIfEq 0x8000, 3, _010B
    CallIfEq 0x8000, 4, _0110
    GoTo _0115
    End

_00FC:
    Message 9
    Return

_0101:
    Message 10
    Return

_0106:
    Message 11
    Return

_010B:
    Message 12
    Return

_0110:
    Message 13
    Return

_0115:
    Message 8
    CloseMessage
    ScrCmd_1BD 0x8000
    CallIfEq 0x8000, 0, _0155
    CallIfEq 0x8000, 2, _0169
    CallIfEq 0x8000, 3, _0175
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ScrCmd_065 2
    WaitFanfare SEQ_SE_DP_KAIDAN2
    ReleaseAll
    End

_0155:
    ApplyMovement 2, _018C
    ApplyMovement 0xFF, _01B0
    WaitMovement
    Return

_0169:
    ApplyMovement 2, _018C
    WaitMovement
    Return

_0175:
    ApplyMovement 2, _019C
    ApplyMovement 0xFF, _01BC
    WaitMovement
    Return

    .balign 4, 0
_018C:
    MoveAction_00E 5
    MoveAction_00D 6
    MoveAction_03E
    EndMovement

    .balign 4, 0
_019C:
    MoveAction_00D
    MoveAction_00E 5
    MoveAction_00D 5
    MoveAction_03E
    EndMovement

    .balign 4, 0
_01B0:
    MoveAction_03F
    MoveAction_022
    EndMovement

    .balign 4, 0
_01BC:
    MoveAction_03F 2
    MoveAction_03E
    MoveAction_022
    EndMovement
