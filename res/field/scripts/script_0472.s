    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfSet 222, _0039
    ScrCmd_07E 0x1AB, 1, 0x800C
    GoToIfEq 0x800C, 1, _0044
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0039:
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0044:
    ScrCmd_02C 1
    SetVar 0x8004, 0x12E
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0076
    ScrCmd_014 0x7FC
    SetFlag 222
    GoTo _0039

_0076:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End
