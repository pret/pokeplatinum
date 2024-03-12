    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _004E-.-4
    .long _0066-.-4
    .long _014C-.-4
    .short 0xFD13

_0012:
    ScrCmd_020 0x13E
    ScrCmd_01C 0, _002A
    ScrCmd_020 0x13E
    ScrCmd_01C 1, _003C
    ScrCmd_002

_002A:
    ScrCmd_18A 2, 80, 0x348
    ScrCmd_18A 3, 81, 0x348
    ScrCmd_002

_003C:
    ScrCmd_18A 1, 80, 0x348
    ScrCmd_18A 0, 81, 0x348
    ScrCmd_002

_004E:
    ScrCmd_020 0x13E
    ScrCmd_01C 0, _002A
    ScrCmd_020 0x13E
    ScrCmd_01C 1, _003C
    ScrCmd_002

_0066:
    ScrCmd_060
    ScrCmd_05E 242, _0124
    ScrCmd_05E 0xFF, _0144
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 80
    ScrCmd_01C 1, _00D8
    ScrCmd_011 0x8004, 81
    ScrCmd_01C 1, _00D8
    ScrCmd_011 0x8004, 82
    ScrCmd_01C 1, _00D8
    ScrCmd_011 0x8004, 83
    ScrCmd_01C 1, _00D8
    ScrCmd_011 0x8004, 84
    ScrCmd_01C 1, _00D8
    ScrCmd_011 0x8004, 85
    ScrCmd_01C 1, _00D8
    ScrCmd_002

_00D8:
    ScrCmd_05E 0xFF, _0138
    ScrCmd_05E 242, _012C
    ScrCmd_05F
    ScrCmd_016 _00F0

_00F0:
    ScrCmd_028 0x4082, 1
    ScrCmd_061
    ScrCmd_049 0x603
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x137, 0, 46, 54, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_002

    .balign 4, 0
_0124:
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_012C:
    .short 12, 2
    .short 69, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0138:
    .short 12, 1
    .short 69, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0144:
    .short 33, 1
    .short 0xFE, 0x00

_014C:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 3, 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

    .byte 0
    .byte 0
    .byte 0
