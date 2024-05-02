    .include "macros/scrcmd.inc"

    .data

    .long _00D7-.-4
    .long _007D-.-4
    .long _00EA-.-4
    .long _0101-.-4
    .long _0118-.-4
    .long _012F-.-4
    .long _0146-.-4
    .long _0022-.-4
    .short 0xFD13

_0022:
    ScrCmd_1B6 0x4000
    CompareVarToValue 0x4000, 0
    GoToIf 1, _0069
    CompareVarToValue 0x4000, 1
    GoToIf 1, _0069
    CompareVarToValue 0x4000, 2
    GoToIf 1, _0069
    CompareVarToValue 0x4000, 3
    GoToIf 1, _0073
    CompareVarToValue 0x4000, 4
    GoToIf 1, _0073
    End

_0069:
    ClearFlag 0x26A
    SetFlag 0x26B
    End

_0073:
    ClearFlag 0x26B
    SetFlag 0x26A
    End

_007D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 206
    GoToIf 1, _00C2
    ScrCmd_02C 0
    ScrCmd_028 0x8004, 0x17F
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _00CD
    ScrCmd_014 0x7FC
    SetFlag 206
    GoTo _00C2

_00C2:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00CD:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_00D7:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00EA:
    ScrCmd_036 4, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0101:
    ScrCmd_036 5, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0118:
    ScrCmd_036 6, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_012F:
    ScrCmd_036 7, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0146:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
