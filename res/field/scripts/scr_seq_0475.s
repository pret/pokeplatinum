    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _001D-.-4
    .short 0xFD13

_000A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_001D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_028 0x8004, 0x1BD
    ScrCmd_0D1 0, 0x8004
    ScrCmd_020 132
    ScrCmd_01C 1, _005E
    ScrCmd_02C 1
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00A7
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _009C
    ScrCmd_002

_005E:
    ScrCmd_0D1 0, 0x8004
    ScrCmd_02C 3
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0086
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0091
    ScrCmd_002

_0086:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0091:
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_009C:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00A7:
    ScrCmd_0D1 0, 0x8004
    ScrCmd_02C 2
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FC
    ScrCmd_01E 132
    ScrCmd_016 _005E

    .byte 0
