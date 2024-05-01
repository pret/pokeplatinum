    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _0068-.-4
    .long _013A-.-4
    .short 0xFD13

_000E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 202
    GoToIf 1, _0053
    ScrCmd_02C 0
    ScrCmd_028 0x8004, 0x1A3
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _005E
    ScrCmd_014 0x7FC
    SetFlag 202
    GoTo _0053

_0053:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_005E:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_0068:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 0x161
    GoToIf 1, _012F
    SetFlag 0x161
    ScrCmd_02C 2
    ScrCmd_1B7 0x800C, 10
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0103
    CompareVarToValue 0x800C, 1
    GoToIf 1, _0103
    CompareVarToValue 0x800C, 2
    GoToIf 1, _0103
    CompareVarToValue 0x800C, 3
    GoToIf 1, _0103
    CompareVarToValue 0x800C, 4
    GoToIf 1, _010E
    CompareVarToValue 0x800C, 5
    GoToIf 1, _010E
    CompareVarToValue 0x800C, 6
    GoToIf 1, _010E
    CompareVarToValue 0x800C, 7
    GoToIf 1, _0119
    CompareVarToValue 0x800C, 8
    GoToIf 1, _0119
    GoTo _0124

_0103:
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_010E:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0119:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0124:
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_012F:
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_013A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
