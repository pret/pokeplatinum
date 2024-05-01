    .include "macros/scrcmd.inc"

    .data

    .long _0042-.-4
    .long _01C3-.-4
    .long _01D6-.-4
    .long _01E9-.-4
    .long _0016-.-4
    .short 0xFD13

_0016:
    ScrCmd_238 6, 0x4000
    CompareVarToValue 0x4000, 0
    ScrCmd_01C 1, _003C
    CompareVarToValue 0x4077, 2
    ScrCmd_01C 0, _003C
    ClearFlag 0x212
    End

_003C:
    SetFlag 0x212
    End

_0042:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_15D 0x8000
    CompareVarToValue 0x8000, 0
    ScrCmd_01C 1, _0181
    ScrCmd_134 2, 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _00C5
    ScrCmd_134 12, 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _00DC
    ScrCmd_134 13, 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _00F3
    ScrCmd_134 15, 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _010A
    ScrCmd_07E 0x1AF, 1, 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _01B8
    GoTo _01AD

_00C5:
    ScrCmd_15D 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 4, _0121
    GoTo _0181

_00DC:
    ScrCmd_15D 0x800C
    CompareVarToValue 0x800C, 3
    ScrCmd_01C 4, _0139
    GoTo _018C

_00F3:
    ScrCmd_15D 0x800C
    CompareVarToValue 0x800C, 5
    ScrCmd_01C 4, _0151
    GoTo _0197

_010A:
    ScrCmd_15D 0x800C
    CompareVarToValue 0x800C, 7
    ScrCmd_01C 4, _0169
    GoTo _01A2

_0121:
    ScrCmd_02C 2
    ScrCmd_028 0x8004, 2
    ScrCmd_014 0x7D9
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0139:
    ScrCmd_02C 5
    ScrCmd_028 0x8004, 12
    ScrCmd_014 0x7D9
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0151:
    ScrCmd_02C 8
    ScrCmd_028 0x8004, 13
    ScrCmd_014 0x7D9
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0169:
    ScrCmd_02C 11
    ScrCmd_028 0x8004, 15
    ScrCmd_014 0x7D9
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0181:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_018C:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0197:
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01A2:
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01AD:
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01B8:
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01C3:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01D6:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 16
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01E9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 17
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End
