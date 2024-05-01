    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _00D1-.-4
    .short 0xFD13

_000A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 0xAB4
    GoToIf 1, _00BC
    ScrCmd_02C 0
    ScrCmd_1B7 0x8004, 4
    ScrCmd_029 0x8008, 0x8004
    CompareVarToValue 0x8008, 0
    GoToIf 1, _005B
    CompareVarToValue 0x8008, 1
    GoToIf 1, _0069
    CompareVarToValue 0x8008, 2
    GoToIf 1, _0077
    GoTo _0085
    End

_005B:
    ScrCmd_028 0x8004, 72
    GoTo _0093
    End

_0069:
    ScrCmd_028 0x8004, 73
    GoTo _0093
    End

_0077:
    ScrCmd_028 0x8004, 74
    GoTo _0093
    End

_0085:
    ScrCmd_028 0x8004, 75
    GoTo _0093
    End

_0093:
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _00C7
    SetFlag 0xAB4
    ScrCmd_014 0x7E0
    ScrCmd_034
    ScrCmd_061
    End

_00BC:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00C7:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_00D1:
    ScrCmd_036 2, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End
