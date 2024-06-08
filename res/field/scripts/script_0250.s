    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0010
    .short 0xFD13

_000A:
    SetFlag 0x9C9
    End

_0010:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_26D 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
