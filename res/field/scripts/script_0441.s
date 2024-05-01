    .include "macros/scrcmd.inc"

    .data

    .long _0091-.-4
    .long _00A4-.-4
    .long _0270-.-4
    .long _0287-.-4
    .long _01C7-.-4
    .long _02B3-.-4
    .long _02C6-.-4
    .long _0026-.-4
    .long _029E-.-4
    .short 0xFD13

_0026:
    ScrCmd_1B6 0x4000
    CompareVarToValue 0x4000, 0
    ScrCmd_01C 1, _006D
    CompareVarToValue 0x4000, 1
    ScrCmd_01C 1, _007F
    CompareVarToValue 0x4000, 2
    ScrCmd_01C 1, _007F
    CompareVarToValue 0x4000, 3
    ScrCmd_01C 1, _007F
    CompareVarToValue 0x4000, 4
    ScrCmd_01C 1, _007F
    End

_006D:
    ClearFlag 0x26D
    ClearFlag 0x26F
    SetFlag 0x26C
    SetFlag 0x26E
    End

_007F:
    ClearFlag 0x26C
    ClearFlag 0x26E
    SetFlag 0x26D
    SetFlag 0x26F
    End

_0091:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00A4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CompareVarToValue 0x408A, 1
    ScrCmd_01C 1, _0102
    ScrCmd_07E 111, 1, 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _01BC
    ScrCmd_02C 2
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _00E6
    ScrCmd_034
    ScrCmd_061
    End

_00E6:
    ScrCmd_0CD 0
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_07C 111, 1, 0x800C
    ScrCmd_028 0x408A, 1
    ScrCmd_034
    ScrCmd_061
    End

_0102:
    ScrCmd_214 0x800C
    CompareVarToValue 0x800C, 32
    ScrCmd_01C 4, _014D
    CompareVarToValue 0x800C, 29
    ScrCmd_01C 4, _01B1
    CompareVarToValue 0x800C, 22
    ScrCmd_01C 4, _01A6
    CompareVarToValue 0x800C, 15
    ScrCmd_01C 4, _019B
    CompareVarToValue 0x800C, 8
    ScrCmd_01C 4, _0190
    GoTo _0185

_014D:
    ScrCmd_04B 0x5DC
    ScrCmd_04C 0x1BA, 0
    ScrCmd_02C 9
    ScrCmd_04D
    ScrCmd_034
    ScrCmd_124 0x1BA, 25
    ScrCmd_0EC 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _017F
    ScrCmd_028 0x408A, 0
    ScrCmd_26F
    End

_017F:
    ScrCmd_0EB
    ScrCmd_061
    End

_0185:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0190:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_019B:
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01A6:
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01B1:
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01BC:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01C7:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_028 0x8004, 0x1BE
    ScrCmd_33C 0, 0x8004
    ScrCmd_346 0
    CheckFlag 162
    ScrCmd_01C 1, _020B
    ScrCmd_02C 10
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _0254
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _0249
    End

_020B:
    ScrCmd_0D1 0, 0x8004
    ScrCmd_02C 12
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _0233
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _023E
    End

_0233:
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_023E:
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0249:
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0254:
    ScrCmd_0D1 0, 0x8004
    ScrCmd_02C 11
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FC
    SetFlag 162
    GoTo _020B

_0270:
    ScrCmd_036 18, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0287:
    ScrCmd_036 19, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_029E:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 20, 0x800C
    ScrCmd_014 0x7D0
    End

_02B3:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 16
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_02C6:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 17
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
