    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _001D
    ScriptEntry _0022
    ScriptEntry _0056
    .short 0xFD13

_0012:
    SetVar 0x4000, 0
    ScrCmd_175 0
    End

_001D:
    ScrCmd_176 0
    End

_0022:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 7, 0x800C
    GoToIfEq 0x800C, 1, _0048
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0048:
    ScrCmd_0CD 0
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0056:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_15B 7, 0x800C
    GoToIfEq 0x800C, 1, _007A
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_007A:
    GoToIfGe 0x40EF, 1, _0098
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0098:
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
