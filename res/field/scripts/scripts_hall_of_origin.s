#include "macros/scrcmd.inc"

    .data

    ScriptEntry _003B
    ScriptEntry _0056
    ScriptEntry _0012
    ScriptEntry _0056
    .short 0xFD13

_0012:
    ScrCmd_28B 2, 0x4000
    GoToIfEq 0x4000, 0, _0035
    GoToIfSet 0x11E, _0035
    ClearFlag 0x24E
    End

_0035:
    SetFlag 0x24E
    End

_003B:
    GoToIfSet 142, _0048
    End

_0048:
    SetFlag 0x24E
    ScrCmd_065 0
    ClearFlag 142
    End

_0056:
    LockAll
    SetVar 0x4118, 0
    Call _00E9
    Call _0104
    ScrCmd_04C 0x1ED, 0
    ScrCmd_04D
    Call _016F
    ScrCmd_04C 0x1ED, 0
    Message 0
    CloseMessage
    SetFlag 142
    ScrCmd_2BD 0x1ED, 80
    ClearFlag 142
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _00DF
    ScrCmd_2BC 0x800C
    GoToIfEq 0x800C, 1, _00D0
    CallIfEq 0x4056, 0, _00C8
    SetFlag 0x11E
    ReleaseAll
    End

_00C8:
    SetVar 0x4056, 1
    Return

_00D0:
    Message 1
    WaitABXPadPress
    CloseMessage
    ClearFlag 0x24E
    ReleaseAll
    End

_00DF:
    ClearFlag 0x24E
    ScrCmd_0EB
    ReleaseAll
    End

_00E9:
    ApplyMovement 0xFF, _00F8
    WaitMovement
    Return

    .balign 4, 0
_00F8:
    MoveAction_04B
    MoveAction_041
    EndMovement

_0104:
    GetPlayerMapPos 0x8004, 0x8005
    SetVar 0x8008, 0x8004
    GoToIfEq 0x8008, 30, _0139
    GoToIfEq 0x8008, 31, _014B
    GoToIfEq 0x8008, 32, _015D
_0137:
    Return

_0139:
    ApplyMovement 0xFF, _017C
    WaitMovement
    GoTo _0137
    End

_014B:
    ApplyMovement 0xFF, _018C
    WaitMovement
    GoTo _0137
    End

_015D:
    ApplyMovement 0xFF, _0194
    WaitMovement
    GoTo _0137
    End

_016F:
    ApplyMovement 0xFF, _01A4
    WaitMovement
    Return

    .balign 4, 0
_017C:
    MoveAction_00C 4
    MoveAction_00F
    MoveAction_000
    EndMovement

    .balign 4, 0
_018C:
    MoveAction_00C 4
    EndMovement

    .balign 4, 0
_0194:
    MoveAction_00C 4
    MoveAction_00E
    MoveAction_000
    EndMovement

    .balign 4, 0
_01A4:
    MoveAction_00C 2
    EndMovement
