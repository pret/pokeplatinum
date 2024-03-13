    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _0035-.-4
    .short 0xFD13

_000A:
    ScrCmd_020 0x11D
    ScrCmd_01C 1, _0029
    ScrCmd_22D 2, 0x4000
    ScrCmd_011 0x4000, 1
    ScrCmd_01D 1, _002F
    ScrCmd_002

_0029:
    ScrCmd_01E 0x24D
    ScrCmd_002

_002F:
    ScrCmd_01F 0x24D
    ScrCmd_01B

_0035:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_028 0x8004, 233
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00A8
    ScrCmd_014 0x7FC
    ScrCmd_01E 0x11D
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_1BD 0x8004
    ScrCmd_011 0x8004, 2
    ScrCmd_01C 1, _00B2
    ScrCmd_011 0x8004, 3
    ScrCmd_01C 1, _00D0
    ScrCmd_011 0x8004, 0
    ScrCmd_01C 1, _00B2
    ScrCmd_011 0x8004, 1
    ScrCmd_01C 1, _00D0
    ScrCmd_002

_00A8:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00B2:
    ScrCmd_05E 0, _00F0
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_065 0
    ScrCmd_04B 0x603
    ScrCmd_04A 0x603
    ScrCmd_061
    ScrCmd_002

_00D0:
    ScrCmd_05E 0, _00FC
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_065 0
    ScrCmd_04B 0x603
    ScrCmd_04A 0x603
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_00F0:
    .short 14, 1
    .short 13, 3
    .short 0xFE, 0x00

    .balign 4, 0
_00FC:
    .short 13, 2
    .short 14, 1
    .short 13, 1
    .short 0xFE, 0x00
