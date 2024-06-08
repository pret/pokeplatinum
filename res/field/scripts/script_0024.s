    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _0025
    ScriptEntry _0044
    ScriptEntry _0063
    .short 0xFD13

_0012:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0025:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 25, 0
    ScrCmd_02C 1
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0044:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 0x1A1, 0
    ScrCmd_02C 2
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0063:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfSet 191, _00B7
    ScrCmd_0D1 0, 217
    ScrCmd_02C 3
    SetVar 0x8004, 217
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00AD
    SetFlag 191
    ScrCmd_014 0x7E0
    ScrCmd_034
    ScrCmd_061
    End

_00AD:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_00B7:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
