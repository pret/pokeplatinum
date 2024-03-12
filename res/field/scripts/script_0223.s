    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_060
    ScrCmd_05E 0xFF, _008C
    ScrCmd_05E 6, _0064
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_05E 6, _0070
    ScrCmd_05E 0xFF, _009C
    ScrCmd_05F
    ScrCmd_02C 1
    ScrCmd_05E 6, _0078
    ScrCmd_05F
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_05E 0xFF, _00B0
    ScrCmd_05E 6, _0080
    ScrCmd_05F
    ScrCmd_065 6
    ScrCmd_028 0x4096, 1
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0064:
    .short 13, 6
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0070:
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0078:
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0080:
    .short 63, 3
    .short 14, 10
    .short 0xFE, 0x00

    .balign 4, 0
_008C:
    .short 32, 1
    .short 63, 4
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_009C:
    .short 63, 3
    .short 32, 1
    .short 63, 1
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_00B0:
    .short 13, 1
    .short 32, 1
    .short 63, 2
    .short 34, 1
    .short 0xFE, 0x00
