    .include "macros/scrcmd.inc"

    .data

    .long _0022-.-4
    .long _0028-.-4
    .long _0051-.-4
    .long _007A-.-4
    .long _00A3-.-4
    .long _00DF-.-4
    .long _0174-.-4
    .long _00CC-.-4
    .short 0xFD13

_0022:
    ScrCmd_01E 0x9DD
    ScrCmd_002

_0028:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 0x15E
    ScrCmd_01C 1, _0046
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0046:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0051:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 0x15E
    ScrCmd_01C 1, _006F
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_006F:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_007A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 0x15E
    ScrCmd_01C 1, _0098
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0098:
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00A3:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 0x15E
    ScrCmd_01C 1, _00C1
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00C1:
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00CC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00DF:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_07E 0x1B8, 1, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0107
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0107:
    ScrCmd_02C 10
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _012A
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _015E
    ScrCmd_002

_012A:
    ScrCmd_0CD 0
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_04B 0x5DC
    ScrCmd_049 0x608
    ScrCmd_05E 5, _0164
    ScrCmd_05E 6, _016C
    ScrCmd_05F
    ScrCmd_01E 0x224
    ScrCmd_065 5
    ScrCmd_065 6
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_015E:
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0164:
    MoveAction_012
    EndMovement

    .balign 4, 0
_016C:
    MoveAction_013
    EndMovement

_0174:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
    .byte 0
    .byte 0
