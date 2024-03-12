    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _0012-.-4
    .long _0084-.-4
    .short 0xFD13

_000E:
    ScrCmd_2F2
    ScrCmd_002

_0012:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_011 0x4055, 5
    ScrCmd_01C 1, _0084
    ScrCmd_317 0x8004, 0x8005, 0x8006
    ScrCmd_011 0x8005, 232
    ScrCmd_01C 1, _0059
    ScrCmd_05E 128, _00DC
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_05E 128, _00E4
    ScrCmd_05F
    ScrCmd_016 _007A

_0059:
    ScrCmd_05E 128, _00F0
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_05E 128, _00F8
    ScrCmd_05E 0xFF, _011C
    ScrCmd_05F
_007A:
    ScrCmd_028 0x4055, 5
    ScrCmd_061
    ScrCmd_002

_0084:
    ScrCmd_317 0x8004, 0x8005, 0x8006
    ScrCmd_011 0x8005, 231
    ScrCmd_01C 1, _00B6
    ScrCmd_011 0x8005, 232
    ScrCmd_01C 1, _00C6
    ScrCmd_05E 128, _0104
    ScrCmd_05F
    ScrCmd_016 _00D0

_00B6:
    ScrCmd_05E 128, _010C
    ScrCmd_05F
    ScrCmd_016 _00D0

_00C6:
    ScrCmd_05E 128, _0114
    ScrCmd_05F
_00D0:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_00DC:
    .short 1, 1
    .short 0xFE, 0x00

    .balign 4, 0
_00E4:
    .short 106, 1
    .short 2, 1
    .short 0xFE, 0x00

    .balign 4, 0
_00F0:
    .short 3, 1
    .short 0xFE, 0x00

    .balign 4, 0
_00F8:
    .short 106, 1
    .short 2, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0104:
    .short 2, 1
    .short 0xFE, 0x00

    .balign 4, 0
_010C:
    .short 3, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0114:
    .short 1, 1
    .short 0xFE, 0x00

    .balign 4, 0
_011C:
    .short 107, 1
    .short 0, 1
    .short 0xFE, 0x00
