    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0016
    ScriptEntry _0022
    ScriptEntry _0035
    ScriptEntry _005E
    ScriptEntry _007D
    .short 0xFD13

_0016:
    SetVar 0x8007, 3
    ScrCmd_014 0x7D2
    End

_0022:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0035:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfSet 129, _0053
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0053:
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_005E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 0x1AB, 0
    ScrCmd_02C 3
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_007D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfEq 0x4002, 1, _00F4
    ScrCmd_134 5, 0x800C
    GoToIfEq 0x800C, 0, _00D9
    ScrCmd_247 0x8000
    ScrCmd_0D0 0, 0x8000
    ScrCmd_02C 6
    ScrCmd_1B9 0x800C, 0x8000
    GoToIfGe 0x800C, 120, _00FF
    GoToIfGe 0x800C, 70, _010A
    GoTo _0115
    End

_00D9:
    ScrCmd_02C 4
    SetVar 0x4002, 1
    SetVar 0x8004, 5
    ScrCmd_014 0x7D9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00F4:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00FF:
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_010A:
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0115:
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End
