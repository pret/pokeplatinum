    .include "macros/scrcmd.inc"

    .data

    .long _0077-.-4
    .long _000E-.-4
    .long _0043-.-4
    .short 0xFD13

_000E:
    ScrCmd_011 0x406A, 0x122
    ScrCmd_01D 5, _003B
    ScrCmd_32B 0x4001
    ScrCmd_011 0x4001, 0
    ScrCmd_01C 1, _0063
    ScrCmd_011 0x4001, 1
    ScrCmd_01C 1, _006D
    ScrCmd_002

_003B:
    ScrCmd_028 0x406A, 0
    ScrCmd_01B

_0043:
    ScrCmd_32B 0x4001
    ScrCmd_011 0x4001, 0
    ScrCmd_01C 1, _0063
    ScrCmd_011 0x4001, 1
    ScrCmd_01C 1, _006D
    ScrCmd_002

_0063:
    ScrCmd_18A 3, 17, 16
    ScrCmd_002

_006D:
    ScrCmd_18A 2, 17, 16
    ScrCmd_002

_0077:
    ScrCmd_002

    .byte 0
    .byte 0
    .byte 0
