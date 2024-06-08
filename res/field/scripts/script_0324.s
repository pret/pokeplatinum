    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0014
    ScriptEntry _00FC
    .short 0xFD13

_000E:
    SetFlag 0x9DA
    End

_0014:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_1BD 0x8004
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_03E 0x800C
    ScrCmd_034
    GoToIfEq 0x800C, 0, _003E
    GoTo _0071

_003E:
    ScrCmd_02C 4
    ScrCmd_034
    Call _007C
    CallIfEq 0x8004, 1, _0096
    CallIfEq 0x8004, 2, _00B0
    ScrCmd_23D 0, 2, 33, 44, 0x2EE
    ScrCmd_061
    End

_0071:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_007C:
    ApplyMovement 0, _00CC
    WaitMovement
    ScrCmd_049 0x603
    ApplyMovement 0, _00D8
    WaitMovement
    Return

_0096:
    ApplyMovement 0xFF, _00E0
    WaitMovement
    ScrCmd_049 0x603
    ApplyMovement 0xFF, _00D8
    WaitMovement
    Return

_00B0:
    ApplyMovement 0xFF, _00F0
    WaitMovement
    ScrCmd_049 0x603
    ApplyMovement 0xFF, _00D8
    WaitMovement
    Return

    .balign 4, 0
_00CC:
    MoveAction_002
    MoveAction_040
    EndMovement

    .balign 4, 0
_00D8:
    MoveAction_045
    EndMovement

    .balign 4, 0
_00E0:
    MoveAction_00D
    MoveAction_002
    MoveAction_040
    EndMovement

    .balign 4, 0
_00F0:
    MoveAction_00E
    MoveAction_040
    EndMovement

_00FC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0CD 0
    ScrCmd_02C 0
    SetVar 0x8004, 0x1A7
    SetVar 0x8005, 1
    ScrCmd_014 0x7FC
    ScrCmd_15B 5, 0x800C
    GoToIfEq 0x800C, 0, _0140
    GoTo _0135
    End

_0135:
    ScrCmd_02C 1
    GoTo _014B
    End

_0140:
    ScrCmd_02C 2
    GoTo _014B
    End

_014B:
    ScrCmd_034
    ApplyMovement 1, _0168
    WaitMovement
    ScrCmd_049 0x603
    ScrCmd_065 1
    ScrCmd_04B 0x603
    ScrCmd_061
    End

    .balign 4, 0
_0168:
    MoveAction_020
    EndMovement
