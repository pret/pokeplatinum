#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0208
    ScriptEntry _000A
    .short 0xFD13

_000A:
    LockAll
    Call _006A
    BufferPlayerName 0
    BufferCounterpartName 1
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _0031
    GoTo _003C
    End

_0031:
    Message 2
    GoTo _0047
    End

_003C:
    Message 3
    GoTo _0047
    End

_0047:
    Message 4
    CloseMessage
    ScrCmd_22C
    Call _00E8
    PlayFanfare SEQ_SE_DP_KAIDAN2
    SetFlag 0x21C
    ScrCmd_065 1
    SetVar 0x4105, 1
    ReleaseAll
    End

_006A:
    GetPlayerMapPos 0x8005, 0x8006
    GoToIfEq 0x8006, 5, _00AC
    GoToIfEq 0x8006, 6, _00B8
    GoToIfEq 0x8006, 7, _00C4
    GoToIfEq 0x8006, 8, _00D0
    GoTo _00DC
    End

_00AC:
    ApplyMovement 1, _0168
    WaitMovement
    Return

_00B8:
    ApplyMovement 1, _017C
    WaitMovement
    Return

_00C4:
    ApplyMovement 1, _0190
    WaitMovement
    Return

_00D0:
    ApplyMovement 1, _019C
    WaitMovement
    Return

_00DC:
    ApplyMovement 1, _01B0
    WaitMovement
    Return

_00E8:
    GetPlayerMapPos 0x8005, 0x8006
    GoToIfEq 0x8006, 5, _012A
    GoToIfEq 0x8006, 6, _0136
    GoToIfEq 0x8006, 7, _0142
    GoToIfEq 0x8006, 8, _014E
    GoTo _015A
    End

_012A:
    ApplyMovement 1, _01C4
    WaitMovement
    Return

_0136:
    ApplyMovement 1, _01D0
    WaitMovement
    Return

_0142:
    ApplyMovement 1, _01DC
    WaitMovement
    Return

_014E:
    ApplyMovement 1, _01F0
    WaitMovement
    Return

_015A:
    ApplyMovement 1, _01FC
    WaitMovement
    Return

    .balign 4, 0
_0168:
    MoveAction_04B
    MoveAction_00F
    MoveAction_00C 2
    MoveAction_023
    EndMovement

    .balign 4, 0
_017C:
    MoveAction_04B
    MoveAction_00F
    MoveAction_00C
    MoveAction_023
    EndMovement

    .balign 4, 0
_0190:
    MoveAction_04B
    MoveAction_00F
    EndMovement

    .balign 4, 0
_019C:
    MoveAction_04B
    MoveAction_00F
    MoveAction_00D
    MoveAction_023
    EndMovement

    .balign 4, 0
_01B0:
    MoveAction_04B
    MoveAction_00F
    MoveAction_00D 2
    MoveAction_023
    EndMovement

    .balign 4, 0
_01C4:
    MoveAction_00D 2
    MoveAction_00F 4
    EndMovement

    .balign 4, 0
_01D0:
    MoveAction_00D
    MoveAction_00F 4
    EndMovement

    .balign 4, 0
_01DC:
    MoveAction_00C
    MoveAction_00F 3
    MoveAction_00D
    MoveAction_00F
    EndMovement

    .balign 4, 0
_01F0:
    MoveAction_00C
    MoveAction_00F 4
    EndMovement

    .balign 4, 0
_01FC:
    MoveAction_00C 2
    MoveAction_00F 4
    EndMovement

_0208:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
