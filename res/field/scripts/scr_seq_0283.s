    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _0018-.-4
    .long _002F-.-4
    .long _0118-.-4
    .short 0xFD13

_0012:
    ScrCmd_01E 0x9D1
    ScrCmd_002

_0018:
    ScrCmd_036 9, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_002F:
    ScrCmd_060
    ScrCmd_05E 6, _00A4
    ScrCmd_05E 7, _00E0
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_05E 6, _00AC
    ScrCmd_05E 7, _00EC
    ScrCmd_05F
    ScrCmd_05E 7, _0100
    ScrCmd_05F
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_05E 6, _00C4
    ScrCmd_05F
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_05E 6, _00D4
    ScrCmd_05E 7, _0108
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_065 6
    ScrCmd_065 7
    ScrCmd_04B 0x603
    ScrCmd_028 0x40A0, 1
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_00A4:
    .short 15, 4
    .short 0xFE, 0x00

    .balign 4, 0
_00AC:
    .short 13, 2
    .short 15, 4
    .short 12, 1
    .short 0xFE, 0x00

    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_00C4:
    .short 34, 1
    .short 63, 2
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_00D4:
    .short 12, 2
    .short 69, 1
    .short 0xFE, 0x00

    .balign 4, 0
_00E0:
    .short 12, 1
    .short 15, 3
    .short 0xFE, 0x00

    .balign 4, 0
_00EC:
    .short 15, 1
    .short 13, 2
    .short 15, 3
    .short 12, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0100:
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0108:
    .short 15, 1
    .short 12, 2
    .short 69, 1
    .short 0xFE, 0x00

_0118:
    ScrCmd_060
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ScrCmd_02C 4
    ScrCmd_05E 5, _01F0
    ScrCmd_05F
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_05E 5, _01F8
    ScrCmd_05F
    ScrCmd_05E 4, _01CC
    ScrCmd_05F
    ScrCmd_0CD 0
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ScrCmd_05E 5, _0204
    ScrCmd_05E 4, _01DC
    ScrCmd_05F
    ScrCmd_0CD 0
    ScrCmd_02C 7
    ScrCmd_034
    ScrCmd_05E 5, _0214
    ScrCmd_05E 0xFF, _0238
    ScrCmd_05F
    ScrCmd_065 5
    ScrCmd_05E 4, _01E8
    ScrCmd_05E 0xFF, _0240
    ScrCmd_05F
    ScrCmd_0CD 0
    ScrCmd_02C 8
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_065 4
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_028 0x40A0, 3
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_01CC:
    .short 34, 1
    .short 63, 2
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01DC:
    .short 63, 1
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01E8:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01F0:
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01F8:
    .short 12, 2
    .short 69, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0204:
    .short 70, 1
    .short 13, 1
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0214:
    .short 13, 2
    .short 14, 5
    .short 12, 2
    .short 14, 3
    .short 21, 9
    .short 23, 10
    .short 12, 6
    .short 15, 8
    .short 0xFE, 0x00

    .balign 4, 0
_0238:
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0240:
    .short 32, 1
    .short 0xFE, 0x00
