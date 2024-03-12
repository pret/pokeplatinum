    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _000C-.-4
    .short 0xFD13

_000A:
    ScrCmd_002

_000C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_208 0x1E8, 1
    ScrCmd_030
    ScrCmd_209
    ScrCmd_04C 0x1E8, 0
    ScrCmd_1BD 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01D 1, _007E
    ScrCmd_063 0
    ScrCmd_26A 0, 6, 8
    ScrCmd_062 0
    ScrCmd_01E 0x24F
    ScrCmd_065 0
    ScrCmd_21C 1
    ScrCmd_011 0x4058, 3
    ScrCmd_01C 1, _0074
    ScrCmd_01F 0x452
    ScrCmd_064 1
    ScrCmd_01E 0x11F
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0074:
    ScrCmd_028 0x4058, 0
    ScrCmd_061
    ScrCmd_002

_007E:
    ScrCmd_186 1, 16, 14
    ScrCmd_05E 0, _0094
    ScrCmd_05F
    ScrCmd_01B

    .balign 4, 0
_0094:
    .short 71, 1
    .short 12, 1
    .short 72, 1
    .short 0xFE, 0x00
