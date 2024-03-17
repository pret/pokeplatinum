    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _0090-.-4
    .long _00A1-.-4
    .short 0xFD13

_000E:
    ScrCmd_060
    ScrCmd_0CE 0
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_05E 0, _0060
    ScrCmd_05F
    ScrCmd_014 0x7FA
    ScrCmd_0CD 0
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_05E 0, _006C
    ScrCmd_05E 0xFF, _0080
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_065 0
    ScrCmd_014 0x7FB
    ScrCmd_01E 234
    ScrCmd_028 0x40A3, 1
    ScrCmd_028 0x4070, 2
    ScrCmd_061
    ScrCmd_002

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
    ScrCmd_002

_00A1:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_0CD 0
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
    .byte 0
    .byte 0
