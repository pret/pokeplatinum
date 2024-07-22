#include "macros/scrcmd.inc"

    .data

    ScriptEntry _003B
    ScriptEntry _004E
    ScriptEntry _0061
    ScriptEntry _00B0
    ScriptEntry _00C0
    ScriptEntry _001A
    .short 0xFD13

_001A:
    GetPlayerMapPos 0x4004, 0x4005
    CallIfGe 0x4005, 12, _0035
    SetVar 0x4003, 1
    End

_0035:
    SetFlag 0x996
    Return

_003B:
    CallIfSet 0x10B, _0048
    End

_0048:
    SetFlag 0x222
    Return

_004E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0061:
    LockAll
    CheckPlayerOnBike 0x800C
    GoToIfEq 0x800C, 1, _0091
    ApplyMovement 1, _00A0
    WaitMovement
    Message 1
    CloseMessage
    ApplyMovement 0xFF, _00A8
    WaitMovement
    ReleaseAll
    End

_0091:
    SetFlag 0x996
    SetVar 0x4002, 1
    ReleaseAll
    End

    .balign 4, 0
_00A0:
    MoveAction_04B
    EndMovement

    .balign 4, 0
_00A8:
    MoveAction_00C
    EndMovement

_00B0:
    LockAll
    ClearFlag 0x996
    SetVar 0x4002, 0
    ReleaseAll
    End

_00C0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x10B, _0154
    BufferPlayerName 0
    BufferCounterpartName 1
    ScrCmd_14D 0x4000
    GoToIfEq 0x4000, 0, _00F0
    GoTo _00F9

_00F0:
    Message 3
    GoTo _0102

_00F9:
    Message 4
    GoTo _0102

_0102:
    ScrCmd_120 0x8004
    BufferNumber 1, 0x8004
    GoToIfLt 0x8004, 35, _015F
    Message 5
    SetVar 0x8004, 216
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _014A
    SetFlag 0x10B
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_014A:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0154:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_015F:
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
