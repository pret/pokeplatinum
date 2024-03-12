    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _0014-.-4
    .long _007B-.-4
    .short 0xFD13

_000E:
    ScrCmd_01E 0x9CF
    ScrCmd_002

_0014:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 0, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _003A
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_003A:
    ScrCmd_020 147
    ScrCmd_01C 1, _0064
    ScrCmd_02C 0
    ScrCmd_028 0x8004, 0x1A9
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FC
    ScrCmd_01A _006F
    ScrCmd_016 _0064

_0064:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_006F:
    ScrCmd_01E 147
    ScrCmd_028 0x4093, 2
    ScrCmd_01B

_007B:
    ScrCmd_060
    ScrCmd_05E 10, _00C0
    ScrCmd_05E 0xFF, _00B4
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_028 0x8004, 0x1A9
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FC
    ScrCmd_01A _006F
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_00B4:
    .short 63, 1
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_00C0:
    .short 33, 1
    .short 75, 1
    .short 13, 1
    .short 0xFE, 0x00
