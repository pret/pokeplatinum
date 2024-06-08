    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0016
    ScriptEntry _002D
    ScriptEntry _0044
    ScriptEntry _0070
    ScriptEntry _005B
    .short 0xFD13

_0016:
    ScrCmd_036 2, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_002D:
    ScrCmd_036 3, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0044:
    ScrCmd_036 4, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_005B:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 5, 0x800C
    ScrCmd_014 0x7D0
    End

_0070:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfSet 0x13F, _00B5
    ScrCmd_02C 0
    SetVar 0x8004, 111
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00C0
    SetFlag 0x13F
    ScrCmd_014 0x7E0
    ScrCmd_034
    ScrCmd_061
    End

_00B5:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00C0:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
