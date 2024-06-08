    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0020
    .short 0xFD13

_000A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_014 0x7E3
    ScrCmd_035
    ScrCmd_147 1
    ScrCmd_061
    End

_0020:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_014 0x7E3
    ScrCmd_035
    ScrCmd_148 14
    ScrCmd_061
    End

    .byte 0
    .byte 0
