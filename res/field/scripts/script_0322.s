    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0010
    ScriptEntry _000A
    .short 0xFD13

_000A:
    SetFlag 0x9D8
    End

_0010:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
