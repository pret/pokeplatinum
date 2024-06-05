    .include "macros/scrcmd.inc"

    .data

    .long _001A-.-4
    .long _0096-.-4
    .long _00A9-.-4
    .long _0175-.-4
    .long _0018-.-4
    .long _01D4-.-4

_0018:
    End

_001A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_247 0x8000
    ScrCmd_230 0x800C, 0x8000, 24
    GoToIfEq 0x800C, 1, _0086
    ScrCmd_0D0 0, 0x8000
    ScrCmd_02C 0
    ScrCmd_233 0x800C, 0x8000
    GoToIfLt 0x800C, 0x1FE, _007B
    ScrCmd_02C 1
    ScrCmd_231 0x8000, 24
    ScrCmd_04E 0x483
    ScrCmd_0CD 1
    ScrCmd_02C 2
    ScrCmd_04F
    ScrCmd_0D0 0, 0x8000
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_007B:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0086:
    ScrCmd_0D0 0, 0x8000
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0096:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00A9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_07E 0x1B2, 1, 0x800C
    GoToIfEq 0x800C, 0, _00D9
    ScrCmd_02C 7
    ScrCmd_014 0x7E3
    ScrCmd_035
    Call _00E4
    ScrCmd_061
    End

_00D9:
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00E4:
    ScrCmd_234 0x800C
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _016F
    GoToIfEq 0x8008, 1, _014B
    GoToIfEq 0x8008, 2, _0151
    GoToIfEq 0x8008, 3, _0157
    GoToIfEq 0x8008, 4, _015D
    GoToIfEq 0x8008, 5, _0163
    GoToIfEq 0x8008, 6, _0169
    End

_014B:
    ScrCmd_14A 0
    Return

_0151:
    ScrCmd_14A 1
    Return

_0157:
    ScrCmd_14A 2
    Return

_015D:
    ScrCmd_14A 3
    Return

_0163:
    ScrCmd_14A 4
    Return

_0169:
    ScrCmd_14A 5
    Return

_016F:
    ScrCmd_14A 6
    Return

_0175:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 9
    ScrCmd_234 0x4000
    GoToIfEq 0x4000, 0, _01BE
    GoToIfEq 0x4000, 1, _01BE
    GoToIfEq 0x4000, 2, _01BE
    GoToIfEq 0x4000, 3, _01BE
    GoTo _01C9

_01BE:
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01C9:
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01D4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
