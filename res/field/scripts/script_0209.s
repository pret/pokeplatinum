    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _0025-.-4
    .long _0038-.-4
    .long _0057-.-4
    .short 0xFD13

_0012:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0025:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0038:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 0xFF, 0
    ScrCmd_02C 2
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0057:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 3
    GoTo _006A
    End

_006A:
    ScrCmd_02C 4
    ScrCmd_045 1, 1, 0, 1, 0x800C
    ScrCmd_046 14, 0xFF, 0
    ScrCmd_046 15, 0xFF, 1
    ScrCmd_046 16, 0xFF, 2
    ScrCmd_046 17, 0xFF, 3
    ScrCmd_046 18, 0xFF, 4
    ScrCmd_046 19, 0xFF, 5
    ScrCmd_046 20, 0xFF, 6
    ScrCmd_046 21, 0xFF, 7
    ScrCmd_046 22, 0xFF, 8
    ScrCmd_047
    SetVar 0x8008, 0x800C
    CompareVarToValue 0x8008, 0
    GoToIf 1, _0135
    CompareVarToValue 0x8008, 1
    GoToIf 1, _0140
    CompareVarToValue 0x8008, 2
    GoToIf 1, _014B
    CompareVarToValue 0x8008, 3
    GoToIf 1, _0156
    CompareVarToValue 0x8008, 4
    GoToIf 1, _0161
    CompareVarToValue 0x8008, 5
    GoToIf 1, _016C
    CompareVarToValue 0x8008, 6
    GoToIf 1, _0177
    CompareVarToValue 0x8008, 7
    GoToIf 1, _0182
    GoTo _018D
    End

_0135:
    ScrCmd_02C 6
    GoTo _006A
    End

_0140:
    ScrCmd_02C 7
    GoTo _006A
    End

_014B:
    ScrCmd_02C 8
    GoTo _006A
    End

_0156:
    ScrCmd_02C 9
    GoTo _006A
    End

_0161:
    ScrCmd_02C 10
    GoTo _006A
    End

_016C:
    ScrCmd_02C 11
    GoTo _006A
    End

_0177:
    ScrCmd_02C 12
    GoTo _006A
    End

_0182:
    ScrCmd_02C 13
    GoTo _006A
    End

_018D:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End
