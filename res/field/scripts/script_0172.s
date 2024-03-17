    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_060
    ScrCmd_05E 0xFF, _00B8
    ScrCmd_05F
    ScrCmd_11C 0x40CE
    ScrCmd_029 0x8008, 0x40CE
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _0038
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _006A
    ScrCmd_002

_0038:
    ScrCmd_028 0x8004, 0
    ScrCmd_01A _009C
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 164, 0, 6, 10, 1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_002

_006A:
    ScrCmd_028 0x8004, 1
    ScrCmd_01A _009C
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 150, 0, 0x376, 0x317, 1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_002

_009C:
    ScrCmd_04B 0x5DC
    ScrCmd_23C 0x8004, 4
    ScrCmd_05E 0xFF, _00C4
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_01B

    .balign 4, 0
_00B8:
    MoveAction_00C 2
    MoveAction_021
    EndMovement

    .balign 4, 0
_00C4:
    MoveAction_00D 2
    MoveAction_021
    EndMovement
