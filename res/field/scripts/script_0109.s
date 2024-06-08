    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0031
    ScriptEntry _0044
    ScriptEntry _0057
    ScriptEntry _0012
    .short 0xFD13

_0012:
    ScrCmd_238 13, 0x4000
    GoToIfEq 0x4000, 0, _002B
    ClearFlag 0x219
    End

_002B:
    SetFlag 0x219
    End

_0031:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0044:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0057:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 25, 0
    ScrCmd_02C 2
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
