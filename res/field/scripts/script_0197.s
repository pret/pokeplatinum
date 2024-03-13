    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _000A-.-4
    .short 0xFD13

_000A:
    ScrCmd_060
    ScrCmd_05E 0xFF, _016C
    ScrCmd_05F
    ScrCmd_186 0, 6, 14
    ScrCmd_01F 0x23A
    ScrCmd_064 0
    ScrCmd_062 0
    ScrCmd_05E 0, _0138
    ScrCmd_05E 0xFF, _017C
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_186 1, 4, 14
    ScrCmd_01F 0x23B
    ScrCmd_064 1
    ScrCmd_062 1
    ScrCmd_05E 1, _0114
    ScrCmd_05F
    ScrCmd_05E 0xFF, _0190
    ScrCmd_05F
    ScrCmd_0CD 0
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_05E 0, _0144
    ScrCmd_05F
    ScrCmd_02C 2
    ScrCmd_0CD 0
    ScrCmd_02C 3
    ScrCmd_05E 0, _0150
    ScrCmd_05F
    ScrCmd_02C 4
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00B1
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00BD
    ScrCmd_002

_00B1:
    ScrCmd_0CD 0
    ScrCmd_02C 5
    ScrCmd_016 _00C9

_00BD:
    ScrCmd_0CD 0
    ScrCmd_02C 6
    ScrCmd_016 _00C9

_00C9:
    ScrCmd_02C 7
    ScrCmd_034
    ScrCmd_05E 0, _0158
    ScrCmd_05E 1, _0120
    ScrCmd_05E 0xFF, _0198
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 187, 0, 8, 15, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0114:
    .short 12, 8
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0120:
    .short 63, 3
    .short 12, 2
    .short 15, 1
    .short 12, 2
    .short 69, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0138:
    .short 12, 8
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0144:
    .short 34, 1
    .short 75, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0150:
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0158:
    .short 12, 2
    .short 14, 1
    .short 12, 2
    .short 69, 1
    .short 0xFE, 0x00

    .balign 4, 0
_016C:
    .short 12, 17
    .short 63, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_017C:
    .short 63, 6
    .short 35, 1
    .short 0xFE, 0x00

    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0190:
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0198:
    .short 63, 1
    .short 32, 1
    .short 63, 6
    .short 12, 4
    .short 0xFE, 0x00
