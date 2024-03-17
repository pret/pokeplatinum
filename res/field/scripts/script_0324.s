    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _0014-.-4
    .long _00FC-.-4
    .short 0xFD13

_000E:
    ScrCmd_01E 0x9DA
    ScrCmd_002

_0014:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_1BD 0x8004
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_03E 0x800C
    ScrCmd_034
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _003E
    ScrCmd_016 _0071

_003E:
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_01A _007C
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _0096
    ScrCmd_011 0x8004, 2
    ScrCmd_01D 1, _00B0
    ScrCmd_23D 0, 2, 33, 44, 0x2EE
    ScrCmd_061
    ScrCmd_002

_0071:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_007C:
    ScrCmd_05E 0, _00CC
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_05E 0, _00D8
    ScrCmd_05F
    ScrCmd_01B

_0096:
    ScrCmd_05E 0xFF, _00E0
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_05E 0xFF, _00D8
    ScrCmd_05F
    ScrCmd_01B

_00B0:
    ScrCmd_05E 0xFF, _00F0
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_05E 0xFF, _00D8
    ScrCmd_05F
    ScrCmd_01B

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
    ScrCmd_028 0x8004, 0x1A7
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FC
    ScrCmd_15B 5, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0140
    ScrCmd_016 _0135
    ScrCmd_002

_0135:
    ScrCmd_02C 1
    ScrCmd_016 _014B
    ScrCmd_002

_0140:
    ScrCmd_02C 2
    ScrCmd_016 _014B
    ScrCmd_002

_014B:
    ScrCmd_034
    ScrCmd_05E 1, _0168
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_065 1
    ScrCmd_04B 0x603
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0168:
    MoveAction_020
    EndMovement
