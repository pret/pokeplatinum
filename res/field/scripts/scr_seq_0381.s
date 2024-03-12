    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _0012-.-4
    .long _004B-.-4
    .short 0xFD13

_000E:
    ScrCmd_2F2
    ScrCmd_002

_0012:
    ScrCmd_060
    ScrCmd_05E 0xFF, _0078
    ScrCmd_05E 128, _00A8
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_05E 128, _00B4
    ScrCmd_05E 0xFF, _0080
    ScrCmd_05F
    ScrCmd_312 128
    ScrCmd_028 0x4055, 3
    ScrCmd_061
    ScrCmd_002

_004B:
    ScrCmd_060
    ScrCmd_04C 0x1E1, 0
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_04D
    ScrCmd_311 129
    ScrCmd_05E 0xFF, _0090
    ScrCmd_05E 129, _00D8
    ScrCmd_05F
    ScrCmd_312 129
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0078:
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0080:
    .short 65, 1
    .short 63, 1
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0090:
    .short 2, 1
    .short 60, 8
    .short 66, 1
    .short 65, 1
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_00A8:
    .short 65, 3
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_00B4:
    .short 14, 1
    .short 13, 2
    .short 34, 1
    .short 65, 1
    .short 119, 2
    .short 118, 1
    .short 119, 1
    .short 65, 1
    .short 0xFE, 0x00

    .balign 4, 0
_00D8:
    .short 65, 3
    .short 8, 1
    .short 12, 1
    .short 16, 1
    .short 20, 8
    .short 0xFE, 0x00
