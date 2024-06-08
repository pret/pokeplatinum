    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0072
    .short 0xFD13

_000A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfUnset 123, _0067
    GoToIfSet 161, _005C
    ScrCmd_02C 0
    SetVar 0x8004, 247
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00CF
    ScrCmd_014 0x7FC
    SetFlag 161
    GoTo _005C
    End

_005C:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0067:
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0072:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfUnset 123, _00D9
    GoToIfSet 0x116, _00C4
    ScrCmd_02C 3
    SetVar 0x8004, 224
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00CF
    ScrCmd_014 0x7FC
    SetFlag 0x116
    GoTo _00C4
    End

_00C4:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00CF:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_00D9:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End
