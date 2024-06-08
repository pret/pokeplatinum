    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0022
    ScriptEntry _00F2
    ScriptEntry _0105
    ScriptEntry _0118
    ScriptEntry _012B
    ScriptEntry _0198
    ScriptEntry _01AE
    ScriptEntry _01C4
    .short 0xFD13

_0022:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_27E 0x800C
    GoToIfEq 0x800C, 1, _0063
    ScrCmd_02C 0
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 229, 1
    ScrCmd_042 228, 0
    ScrCmd_043
    GoToIfEq 0x800C, 1, _00C6
    GoTo _00BB

_0063:
    ScrCmd_0CD 0
    ScrCmd_02C 1
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 229, 0
    ScrCmd_042 228, 1
    ScrCmd_043
    GoToIfNe 0x800C, 0, _00BB
    ScrCmd_1B7 0x800C, 4
    GoToIfEq 0x800C, 0, _00C6
    GoToIfEq 0x800C, 1, _00D1
    GoToIfEq 0x800C, 2, _00DC
    GoTo _00E7

_00BB:
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00C6:
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00D1:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00DC:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00E7:
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00F2:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0105:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0118:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_012B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_134 10, 0x800C
    GoToIfEq 0x800C, 1, _016F
    ScrCmd_02C 10
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _017A
    ScrCmd_02C 11
    SetVar 0x8004, 10
    ScrCmd_014 0x7D9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_016F:
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_017A:
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 73
    .byte 0
    .byte 220
    .byte 5
    .byte 96
    .byte 0
    .byte 104
    .byte 0
    .byte 44
    .byte 0
    .byte 10
    .byte 49
    .byte 0
    .byte 52
    .byte 0
    .byte 97
    .byte 0
    .byte 2
    .byte 0

_0198:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_014 0x7E3
    ScrCmd_035
    ScrCmd_148 10
    ScrCmd_061
    End

_01AE:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_014 0x7E3
    ScrCmd_035
    ScrCmd_148 11
    ScrCmd_061
    End

_01C4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
