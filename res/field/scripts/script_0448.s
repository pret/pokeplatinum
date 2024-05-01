    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _0018-.-4
    .long _002B-.-4
    .long _016A-.-4
    .short 0xFD13

_0012:
    SetFlag 0x9E9
    End

_0018:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_002B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_072 20, 2
    ScrCmd_02C 1
    GoTo _0044
    End

_0044:
    ScrCmd_041 30, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 7, 0
    ScrCmd_042 8, 1
    ScrCmd_042 9, 2
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    CompareVarToValue 0x8008, 0
    ScrCmd_01C 1, _0092
    CompareVarToValue 0x8008, 1
    ScrCmd_01C 1, _00BB
    CompareVarToValue 0x8008, 2
    ScrCmd_01C 1, _015D
    GoTo _015D
    End

_0092:
    ScrCmd_071 0x800C, 0x1F4
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _0150
    ScrCmd_028 0x8005, 1
    ScrCmd_028 0x8006, 0x1F4
    GoTo _00E4
    End

_00BB:
    ScrCmd_071 0x800C, 0x1770
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _0150
    ScrCmd_028 0x8005, 12
    ScrCmd_028 0x8006, 0x1770
    GoTo _00E4
    End

_00E4:
    ScrCmd_028 0x8004, 33
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _0143
    ScrCmd_334 35, 0x8006
    ScrCmd_1A3 0x8006
    ScrCmd_074
    ScrCmd_049 0x644
    ScrCmd_04B 0x644
    CompareVarToValue 0x8006, 0x1F4
    ScrCmd_01D 1, _0139
    CompareVarToValue 0x8006, 0x1770
    ScrCmd_01D 1, _013E
    ScrCmd_014 0x7E0
    ScrCmd_034
    ScrCmd_073
    ScrCmd_061
    End

_0139:
    ScrCmd_02C 2
    Return

_013E:
    ScrCmd_02C 6
    Return

_0143:
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_073
    ScrCmd_061
    End

_0150:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_073
    ScrCmd_061
    End

_015D:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_073
    ScrCmd_061
    End

_016A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 0x107
    ScrCmd_01C 1, _0188
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0188:
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
