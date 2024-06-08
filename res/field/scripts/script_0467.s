    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0068
    ScriptEntry _000A
    .short 0xFD13

_000A:
    ScrCmd_1B7 0x4032, 4
    ScrCmd_238 15, 0x4000
    GoToIfEq 0x4000, 0, _0062
    ScrCmd_238 16, 0x4000
    GoToIfEq 0x4000, 0, _0062
    ScrCmd_238 17, 0x4000
    GoToIfEq 0x4000, 0, _0062
    ScrCmd_238 18, 0x4000
    GoToIfEq 0x4000, 0, _0062
    ClearFlag 0x2C2
    End

_0062:
    SetFlag 0x2C2
    End

_0068:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_284 0x4000
    GoToIfGe 0x4000, 26, _008C
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_008C:
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
