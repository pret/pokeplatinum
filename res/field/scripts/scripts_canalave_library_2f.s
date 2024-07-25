#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0033
    ScriptEntry _005C
    ScriptEntry _0090
    ScriptEntry _00A1
    ScriptEntry _001A
    ScriptEntry _00B2
    .short 0xFD13

_001A:
    SetFlag 0x2C9
    CallIfEq 0x4056, 2, _002D
    End

_002D:
    ClearFlag 0x2C9
    Return

_0033:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 168, _0051
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0051:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_005C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfGe 0x4056, 3, _0082
    Message 2
    GoTo _007A
    End

_007A:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0082:
    BufferPlayerName 0
    Message 13
    GoTo _007A
    End

_0090:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00B2:
    LockAll
    ApplyMovement 1, _019C
    WaitMovement
    Message 5
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0104
    GoToIfEq 0x800C, 1, _00E1
    End

_00E1:
    Message 6
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0104
    GoToIfEq 0x800C, 1, _00E1
    End

_0104:
    Message 7
    CloseMessage
    ApplyMovement 1, _01B4
    WaitMovement
    Message 8
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0159
    GoToIfEq 0x800C, 1, _0136
    End

_0136:
    Message 9
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0159
    GoToIfEq 0x800C, 1, _0136
    End

_0159:
    Message 10
    CloseMessage
    ApplyMovement 1, _01C4
    WaitMovement
    Message 11
    CloseMessage
    ApplyMovement 1, _01CC
    WaitMovement
    Message 12
    CloseMessage
    ApplyMovement 0xFF, _01E0
    ApplyMovement 1, _01D4
    WaitMovement
    ScrCmd_065 1
    SetVar 0x4056, 3
    ReleaseAll
    End

    .balign 4, 0
_019C:
    MoveAction_023
    MoveAction_04B
    MoveAction_00F
    MoveAction_00C
    MoveAction_023
    EndMovement

    .balign 4, 0
_01B4:
    MoveAction_021
    MoveAction_020
    MoveAction_023
    EndMovement

    .balign 4, 0
_01C4:
    MoveAction_022
    EndMovement

    .balign 4, 0
_01CC:
    MoveAction_023
    EndMovement

    .balign 4, 0
_01D4:
    MoveAction_03F 2
    MoveAction_00F 2
    EndMovement

    .balign 4, 0
_01E0:
    MoveAction_00D
    MoveAction_020
    EndMovement
