    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfSet 217, _004B
    ScrCmd_02C 0
    SetVar 0x8004, 30
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0056
    ScrCmd_014 0x7FC
    SetFlag 217
    GoTo _004B

_004B:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0056:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End
