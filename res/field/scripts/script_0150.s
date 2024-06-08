    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _017C
    ScriptEntry _027E
    .short 0xFD13

_000E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    SetVar 0x4001, 19
    ScrCmd_02C 0
    ScrCmd_075 21, 1
    SetVar 0x8005, 0
    SetVar 0x8006, 0
    GoTo _0039
    End

_0039:
    ScrCmd_02C 1
    Call _0119
    GoToIfEq 0x800C, -2, _00D8
    GoToIfEq 0x800C, 0x4001, _00D8
    ScrCmd_2A6 0x800C, 0x8000, 0x8001
    CallIfLt 0x8000, 0x148, _0100
    CallIfGe 0x8000, 0x148, _010A
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0039
    ScrCmd_2A9 0x800C, 0x8001
    GoToIfEq 0x800C, 0, _00F5
    ScrCmd_07D 0x8000, 1, 0x800C
    GoToIfEq 0x800C, 0, _00E5
    ScrCmd_02C 4
    ScrCmd_07B 0x8000, 1, 0x800C
    ScrCmd_2A8 0x8001
    ScrCmd_077
    ScrCmd_049 0x644
    ScrCmd_04B 0x644
    GoTo _0039
    End

_00D8:
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_076
    ScrCmd_061
    End

_00E5:
    ScrCmd_0D1 0, 0x8000
    ScrCmd_02C 6
    GoTo _0039
    End

_00F5:
    ScrCmd_02C 5
    GoTo _0039
    End

_0100:
    ScrCmd_0D1 0, 0x8000
    ScrCmd_02C 2
    Return

_010A:
    ScrCmd_0D1 0, 0x8000
    ScrCmd_0D3 1, 0x8000
    ScrCmd_02C 3
    Return

_0119:
    SetVar 0x8008, 0
    SetVar 0x8009, 0
    ScrCmd_044 1, 1, 0, 1, 0x800C
    GoTo _0135
    End

_0135:
    ScrCmd_2A6 0x8008, 0x8000, 0x8001
    ScrCmd_0D1 0, 0x8000
    ScrCmd_280 1, 0x8001, 1, 5
    ScrCmd_046 168, 0xFF, 0x8008
    AddVar 0x8008, 1
    GoToIfLt 0x8008, 0x4001, _0135
    GoTo _016C
    End

_016C:
    ScrCmd_046 169, 0xFF, 0x8008
    ScrCmd_306 0x8005, 0x8006
    Return

_017C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfSet 196, _01AF
    SetFlag 196
    ScrCmd_02C 8
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0250
    GoTo _01CB
    End

_01AF:
    ScrCmd_02C 9
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0250
    GoTo _01CB
    End

_01CB:
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_191
    ScrCmd_193 0x8000
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    GoToIfEq 0x8000, 0xFF, _0250
    ScrCmd_198 0x8000, 0x8001
    GoToIfEq 0x8001, 0, _025B
    ScrCmd_2FF 0x8000, 0x8004
    GoToIfEq 0x8004, -1, _0245
    ScrCmd_099 0x800C, 237, 0x8000
    GoToIfEq 0x800C, 0, _0266
    ScrCmd_2FD 0, 0x8004
    ScrCmd_02C 11
    GoTo _0276
    End

_0245:
    ScrCmd_02C 14
    GoTo _0276
    End

_0250:
    ScrCmd_02C 12
    GoTo _0276
    End

_025B:
    ScrCmd_02C 13
    GoTo _0276
    End

_0266:
    ScrCmd_2FD 0, 0x8004
    ScrCmd_02C 10
    GoTo _0276
    End

_0276:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_027E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
