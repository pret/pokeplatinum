    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _000E-.-4
    .short 0xFD13

_000A:
    ScrCmd_25B
    ScrCmd_002

_000E:
    ScrCmd_05E 0xFF, _012C
    ScrCmd_05F
    ScrCmd_0EA 0x10B
    ScrCmd_020 0x964
    ScrCmd_01D 0, _00EB
    ScrCmd_020 0x964
    ScrCmd_01D 1, _00F0
    ScrCmd_034
    ScrCmd_01E 0x98B
    ScrCmd_020 214
    ScrCmd_01D 0, _00F5
    ScrCmd_020 214
    ScrCmd_01D 1, _00FD
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0121
    ScrCmd_02C 1
    ScrCmd_01E 180
    ScrCmd_020 214
    ScrCmd_01D 0, _0105
    ScrCmd_020 214
    ScrCmd_01D 1, _0113
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_05E 0, _0144
    ScrCmd_05F
    ScrCmd_05E 0xFF, _0134
    ScrCmd_05F
    ScrCmd_05E 0, _0150
    ScrCmd_05F
    ScrCmd_003 30, 0x800C
    ScrCmd_25C
    ScrCmd_003 30, 0x800C
    ScrCmd_01E 0x23A
    ScrCmd_01E 0x23B
    ScrCmd_05E 0xFF, _013C
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 186, 0, 5, 23, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    ScrCmd_002

_00EB:
    ScrCmd_02C 0
    ScrCmd_01B

_00F0:
    ScrCmd_02C 3
    ScrCmd_01B

_00F5:
    ScrCmd_0E5 0x10B, 0
    ScrCmd_01B

_00FD:
    ScrCmd_0E5 0x366, 0
    ScrCmd_01B

_0105:
    ScrCmd_1CD 12, 0x10B, 0, 0, 0
    ScrCmd_01B

_0113:
    ScrCmd_1CD 12, 0x366, 0, 0, 0
    ScrCmd_01B

_0121:
    ScrCmd_01F 0x98B
    ScrCmd_0EB
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_012C:
    .short 12, 4
    .short 0xFE, 0x00

    .balign 4, 0
_0134:
    .short 12, 6
    .short 0xFE, 0x00

    .balign 4, 0
_013C:
    .short 12, 6
    .short 0xFE, 0x00

    .balign 4, 0
_0144:
    .short 14, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0150:
    .short 32, 1
    .short 0xFE, 0x00
