    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0033
    .short 0xFD13

_000A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfSet 244, _0028
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0028:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0033:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfSet 244, _00DC
    ScrCmd_02C 2
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0060
    GoTo _00D1

_0060:
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_2A5
    ScrCmd_193 0x800C
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    GoToIfEq 0x800C, 0xFF, _00D1
    ScrCmd_226 2
    SetVar 0x8004, 0x800C
    ScrCmd_198 0x8004, 0x8005
    ScrCmd_228 0x800C
    GoToIfNe 0x8005, 0x800C, _00C4
    ScrCmd_229 0x8004
    ScrCmd_22A
    SetFlag 244
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00C4:
    ScrCmd_22A
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00D1:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00DC:
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
