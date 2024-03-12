    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _0078-.-4
    .long _00B6-.-4
    .short 0xFD13

_000E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 4, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _006A
    ScrCmd_02C 1
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _004C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0057
    ScrCmd_002

_004C:
    ScrCmd_02C 2
    ScrCmd_016 _0062
    ScrCmd_002

_0057:
    ScrCmd_02C 3
    ScrCmd_016 _0062
    ScrCmd_002

_0062:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_006A:
    ScrCmd_0CD 0
    ScrCmd_02C 4
    ScrCmd_016 _0062
    ScrCmd_002

_0078:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_15B 4, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00A2
    ScrCmd_0CE 0
    ScrCmd_0CE 1
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00A2:
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_0CE 2
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00B6:
    ScrCmd_060
    ScrCmd_05E 0, _00DC
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_05E 0, _00F0
    ScrCmd_05F
    ScrCmd_028 0x40D1, 1
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_00DC:
    .short 75, 1
    .short 63, 1
    .short 14, 1
    .short 13, 1
    .short 0xFE, 0x00

    .balign 4, 0
_00F0:
    .short 12, 1
    .short 15, 1
    .short 33, 1
    .short 0xFE, 0x00
