    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _0014-.-4
    .short 0xFD13

_000A:
    ScrCmd_01E 0x9D2
    ScrCmd_01E 0x28E
    ScrCmd_002

_0014:
    ScrCmd_060
    ScrCmd_05E 0, _0158
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_05E 0, _0160
    ScrCmd_05F
    ScrCmd_0E5 0x39E, 0
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0150
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_05E 0, _0168
    ScrCmd_05F
    ScrCmd_05E 4, _01BC
    ScrCmd_05F
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_05E 4, _01CC
    ScrCmd_05F
    ScrCmd_0E5 0x39F, 0
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0150
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ScrCmd_05E 0, _0174
    ScrCmd_05E 4, _01F4
    ScrCmd_05F
    ScrCmd_02C 4
    ScrCmd_05E 4, _01D4
    ScrCmd_05F
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_05E 0, _017C
    ScrCmd_05F
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_05E 0, _0190
    ScrCmd_05E 0xFF, _01A4
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_04B 0x603
    ScrCmd_05E 4, _01DC
    ScrCmd_05F
    ScrCmd_02C 7
    ScrCmd_034
    ScrCmd_05E 4, _01E4
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_04B 0x603
    ScrCmd_05E 14, _0200
    ScrCmd_05E 0xFF, _01B4
    ScrCmd_05F
    ScrCmd_02C 8
    ScrCmd_02C 9
    ScrCmd_034
    ScrCmd_05E 14, _0208
    ScrCmd_05E 15, _0210
    ScrCmd_05E 16, _021C
    ScrCmd_05F
    ScrCmd_065 14
    ScrCmd_065 0
    ScrCmd_065 4
    ScrCmd_065 15
    ScrCmd_065 16
    ScrCmd_028 0x40AD, 1
    ScrCmd_061
    ScrCmd_002

_0150:
    ScrCmd_0EB
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0158:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0160:
    .short 13, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0168:
    .short 12, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0174:
    .short 75, 1
    .short 0xFE, 0x00

    .balign 4, 0
_017C:
    .short 32, 1
    .short 63, 2
    .short 33, 1
    .short 63, 2
    .short 0xFE, 0x00

    .balign 4, 0
_0190:
    .short 13, 2
    .short 63, 1
    .short 13, 1
    .short 69, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01A4:
    .short 63, 2
    .short 14, 1
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01B4:
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01BC:
    .short 34, 1
    .short 63, 2
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01CC:
    .short 13, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01D4:
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01DC:
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01E4:
    .short 14, 1
    .short 13, 2
    .short 69, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01F4:
    .short 63, 1
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0200:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0208:
    .short 12, 7
    .short 0xFE, 0x00

    .balign 4, 0
_0210:
    .short 15, 1
    .short 12, 7
    .short 0xFE, 0x00

    .balign 4, 0
_021C:
    .short 63, 1
    .short 14, 1
    .short 12, 7
    .short 0xFE, 0x00
