#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _0025
    ScriptEntry _0038
    ScriptEntry _004C
    .short 0xFD13

_0012:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0025:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0038:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    BufferPlayerName 0
    Message 3
    CloseMessage
    ScrCmd_27A
    ReleaseAll
    End

_004C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    Message 1
    Message 2
    CloseMessage
    WaitTime 15, 0x800C
    ScrCmd_1BD 0x800C
    GoToIfEq 0x800C, 0, _0092
    GoToIfEq 0x800C, 2, _00AA
    GoToIfEq 0x800C, 3, _00C2
    End

_0092:
    ApplyMovement 2, _0104
    ApplyMovement 0xFF, _013C
    WaitMovement
    GoTo _00D2

_00AA:
    ApplyMovement 2, _0118
    ApplyMovement 0xFF, _0148
    WaitMovement
    GoTo _00D2

_00C2:
    ApplyMovement 2, _0118
    WaitMovement
    GoTo _00D2

_00D2:
    ScrCmd_168 0, 0, 6, 9, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ApplyMovement 2, _0130
    WaitMovement
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    ScrCmd_065 2
    SetFlag 0x162
    ReleaseAll
    End

    .balign 4, 0
_0104:
    MoveAction_00F 3
    MoveAction_00D 6
    MoveAction_00E 3
    MoveAction_020
    EndMovement

    .balign 4, 0
_0118:
    MoveAction_00D
    MoveAction_00F 3
    MoveAction_00D 5
    MoveAction_00E 3
    MoveAction_020
    EndMovement

    .balign 4, 0
_0130:
    MoveAction_00C
    MoveAction_045
    EndMovement

    .balign 4, 0
_013C:
    MoveAction_03F
    MoveAction_023
    EndMovement

    .balign 4, 0
_0148:
    MoveAction_03F
    MoveAction_021
    MoveAction_03F
    MoveAction_023
    EndMovement
