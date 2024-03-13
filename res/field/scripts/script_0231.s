    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _0022-.-4
    .short 0xFD13

_000A:
    ScrCmd_020 0x132
    ScrCmd_01C 1, _0040
    ScrCmd_020 0x132
    ScrCmd_01C 0, _004A
    ScrCmd_002

_0022:
    ScrCmd_01A _0118
    ScrCmd_020 0x132
    ScrCmd_01C 1, _0040
    ScrCmd_020 0x132
    ScrCmd_01C 0, _004A
    ScrCmd_002

_0040:
    ScrCmd_18A 2, 7, 5
    ScrCmd_002

_004A:
    ScrCmd_011 0x40AA, 2
    ScrCmd_01C 4, _0069
    ScrCmd_016 _005F
    ScrCmd_002

_005F:
    ScrCmd_18A 1, 7, 5
    ScrCmd_002

_0069:
    ScrCmd_020 0x145
    ScrCmd_01C 0, _005F
    ScrCmd_020 208
    ScrCmd_01C 1, _00BC
    ScrCmd_011 0x40C4, 1
    ScrCmd_01C 4, _00BC
    ScrCmd_07E 135, 1, 0x4001
    ScrCmd_011 0x4001, 1
    ScrCmd_01C 1, _0104
    ScrCmd_32F 135, 0x4001
    ScrCmd_011 0x4001, 1
    ScrCmd_01C 1, _0104
    ScrCmd_016 _00BC
    ScrCmd_002

_00BC:
    ScrCmd_020 209
    ScrCmd_01C 1, _005F
    ScrCmd_011 0x40C5, 1
    ScrCmd_01C 4, _005F
    ScrCmd_07E 136, 1, 0x4001
    ScrCmd_011 0x4001, 1
    ScrCmd_01C 1, _010E
    ScrCmd_32F 136, 0x4001
    ScrCmd_011 0x4001, 1
    ScrCmd_01C 1, _010E
    ScrCmd_016 _005F
    ScrCmd_002

_0104:
    ScrCmd_18A 3, 7, 5
    ScrCmd_002

_010E:
    ScrCmd_18A 4, 7, 5
    ScrCmd_002

_0118:
    ScrCmd_18A 1, 1, 5
    ScrCmd_18A 2, 1, 5
    ScrCmd_18A 3, 1, 5
    ScrCmd_18A 4, 1, 5
    ScrCmd_01B

    .byte 0
    .byte 0
