    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _001C-.-4
    .short 0xFD13

_000A:
    ScrCmd_060
    ScrCmd_0D5 0, 0x8000
    ScrCmd_02C 106
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_001C:
    ScrCmd_060
    ScrCmd_02C 107
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
    .byte 0
    .byte 0
