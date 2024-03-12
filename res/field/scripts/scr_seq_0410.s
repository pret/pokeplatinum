    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_060
    ScrCmd_1B7 0x8000, 5
    ScrCmd_029 0x8008, 0x8000
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0057
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _0071
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _008B
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _00A5
    ScrCmd_011 0x8008, 4
    ScrCmd_01C 1, _00BF
    ScrCmd_002

_0057:
    ScrCmd_05E 0xFF, _0148
    ScrCmd_05E 0, _01F0
    ScrCmd_05F
    ScrCmd_016 _00D9
    ScrCmd_002

_0071:
    ScrCmd_05E 0xFF, _0154
    ScrCmd_05E 0, _0200
    ScrCmd_05F
    ScrCmd_016 _00D9
    ScrCmd_002

_008B:
    ScrCmd_05E 0xFF, _0160
    ScrCmd_05E 0, _0210
    ScrCmd_05F
    ScrCmd_016 _00D9
    ScrCmd_002

_00A5:
    ScrCmd_05E 0xFF, _016C
    ScrCmd_05E 0, _0220
    ScrCmd_05F
    ScrCmd_016 _00D9
    ScrCmd_002

_00BF:
    ScrCmd_05E 0xFF, _0178
    ScrCmd_05E 0, _0230
    ScrCmd_05F
    ScrCmd_016 _00D9
    ScrCmd_002

_00D9:
    ScrCmd_02C 0
    ScrCmd_030
    ScrCmd_034
    ScrCmd_05E 0xFF, _0184
    ScrCmd_05E 0, _0240
    ScrCmd_05F
    ScrCmd_049 0x64F
    ScrCmd_05E 0xFF, _01E8
    ScrCmd_05F
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_028 0x4003, 1
    ScrCmd_0BE 0x405C, 0, 5, 2, 1
    ScrCmd_1F8
    ScrCmd_0B3 0x800C
    ScrCmd_029 0x8004, 0x800C
    ScrCmd_2F7 0x8004
    ScrCmd_0A1
    ScrCmd_028 0x4080, 1
    ScrCmd_1B2 0xFF
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_002

    .balign 4, 0
_0148:
    .short 12, 7
    .short 14, 11
    .short 0xFE, 0x00

    .balign 4, 0
_0154:
    .short 12, 7
    .short 14, 9
    .short 0xFE, 0x00

    .balign 4, 0
_0160:
    .short 12, 7
    .short 14, 7
    .short 0xFE, 0x00

    .balign 4, 0
_016C:
    .short 12, 7
    .short 14, 5
    .short 0xFE, 0x00

    .balign 4, 0
_0178:
    .short 12, 7
    .short 14, 3
    .short 0xFE, 0x00

    .balign 4, 0
_0184:
    .short 12, 1
    .short 2, 1
    .short 61, 1
    .short 1, 1
    .short 61, 1
    .short 3, 1
    .short 61, 1
    .short 0, 1
    .short 61, 1
    .short 2, 1
    .short 61, 1
    .short 1, 1
    .short 61, 1
    .short 3, 1
    .short 61, 1
    .short 0, 1
    .short 61, 1
    .short 2, 1
    .short 61, 1
    .short 1, 1
    .short 61, 1
    .short 3, 1
    .short 61, 1
    .short 0, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01E8:
    .short 67, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01F0:
    .short 12, 6
    .short 14, 12
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0200:
    .short 12, 6
    .short 14, 10
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0210:
    .short 12, 6
    .short 14, 8
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0220:
    .short 12, 6
    .short 14, 6
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0230:
    .short 12, 6
    .short 14, 4
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0240:
    .short 32, 1
    .short 0xFE, 0x00
