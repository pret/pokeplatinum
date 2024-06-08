    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0090
    ScriptEntry _00A1
    .short 0xFD13

_000E:
    ScrCmd_060
    ScrCmd_0CE 0
    ScrCmd_02C 0
    ScrCmd_034
    ApplyMovement 0, _0060
    WaitMovement
    ScrCmd_014 0x7FA
    ScrCmd_0CD 0
    ScrCmd_02C 1
    ScrCmd_034
    ApplyMovement 0, _006C
    ApplyMovement 0xFF, _0080
    WaitMovement
    ScrCmd_049 0x603
    ScrCmd_065 0
    ScrCmd_014 0x7FB
    SetFlag 234
    SetVar 0x40A3, 1
    SetVar 0x4070, 2
    ScrCmd_061
    End

    .balign 4, 0
_0060:
    MoveAction_022
    MoveAction_04B
    EndMovement

    .balign 4, 0
_006C:
    MoveAction_012 4
    MoveAction_010
    MoveAction_012 3
    MoveAction_045
    EndMovement

    .balign 4, 0
_0080:
    MoveAction_03F 2
    MoveAction_00D
    MoveAction_020
    EndMovement

_0090:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00A1:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_0CD 0
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
