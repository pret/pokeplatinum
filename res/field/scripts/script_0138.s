    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _001A
    ScriptEntry _0032
    .short 0xFD13

_000E:
    SetVar 0x8007, 0
    ScrCmd_014 0x7D2
    End

_001A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0D3 0, 0x1A6
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0032:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
