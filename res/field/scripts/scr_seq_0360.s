    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_066 0x8004, 0x8005
    ScrCmd_05E 241, _0228
    ScrCmd_05F
    ScrCmd_003 15, 0x800C
    ScrCmd_05E 2, _01C4
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_05E 1, _01EC
    ScrCmd_05F
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 14
    ScrCmd_01D 1, _0136
    ScrCmd_011 0x8004, 15
    ScrCmd_01D 1, _0154
    ScrCmd_067
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 14
    ScrCmd_01D 1, _0168
    ScrCmd_011 0x8004, 15
    ScrCmd_01D 1, _0174
    ScrCmd_049 0x603
    ScrCmd_065 1
    ScrCmd_04B 0x603
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 14
    ScrCmd_01D 1, _0180
    ScrCmd_011 0x8004, 15
    ScrCmd_01D 1, _018C
    ScrCmd_05E 2, _01CC
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_05E 2, _01D4
    ScrCmd_05F
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_003 30, 0x800C
    ScrCmd_05E 2, _01CC
    ScrCmd_05F
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_05E 2, _01DC
    ScrCmd_05E 0xFF, _01B8
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_065 2
    ScrCmd_04B 0x603
    ScrCmd_01E 0x98F
    ScrCmd_01F 0x223
    ScrCmd_028 0x40D3, 2
    ScrCmd_01F 0x198
    ScrCmd_01E 0x194
    ScrCmd_01E 0x175
    ScrCmd_01E 0x28D
    ScrCmd_01E 0x28C
    ScrCmd_01F 168
    ScrCmd_061
    ScrCmd_002

_0136:
    ScrCmd_05E 1, _01F4
    ScrCmd_05E 241, _0230
    ScrCmd_05F
    ScrCmd_05E 0xFF, _01B0
    ScrCmd_05F
    ScrCmd_01B

_0154:
    ScrCmd_05E 1, _0204
    ScrCmd_05E 241, _0230
    ScrCmd_05F
    ScrCmd_01B

_0168:
    ScrCmd_05E 1, _0210
    ScrCmd_05F
    ScrCmd_01B

_0174:
    ScrCmd_05E 1, _0218
    ScrCmd_05F
    ScrCmd_01B

_0180:
    ScrCmd_05E 0xFF, _0198
    ScrCmd_05F
    ScrCmd_01B

_018C:
    ScrCmd_05E 0xFF, _01A4
    ScrCmd_05F
    ScrCmd_01B

    .balign 4, 0
_0198:
    .short 12, 5
    .short 15, 2
    .short 0xFE, 0x00

    .balign 4, 0
_01A4:
    .short 12, 5
    .short 15, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01B0:
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01B8:
    .short 63, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01C4:
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01CC:
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01D4:
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01DC:
    .short 13, 2
    .short 14, 2
    .short 13, 3
    .short 0xFE, 0x00

    .balign 4, 0
_01EC:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01F4:
    .short 14, 2
    .short 13, 6
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0204:
    .short 14, 2
    .short 13, 5
    .short 0xFE, 0x00

    .balign 4, 0
_0210:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0218:
    .short 14, 1
    .short 13, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0228:
    .short 12, 5
    .short 0xFE, 0x00

    .balign 4, 0
_0230:
    .short 13, 5
    .short 0xFE, 0x00
