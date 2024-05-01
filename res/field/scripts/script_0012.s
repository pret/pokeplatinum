    .include "macros/scrcmd.inc"

    .data

    .long _0031-.-4
    .long _0044-.-4
    .long _00CC-.-4
    .long _0012-.-4
    .short 0xFD13

_0012:
    ScrCmd_238 9, 0x4000
    CompareVarToValue 0x4000, 0
    GoToIf 1, _002B
    ClearFlag 0x215
    End

_002B:
    SetFlag 0x215
    End

_0031:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0044:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 0x13D
    GoToIf 1, _00A4
    ScrCmd_0DE 0x800C
    CompareVarToValue 0x800C, 0x183
    CallIf 1, _00B4
    CompareVarToValue 0x800C, 0x186
    CallIf 1, _00BC
    CompareVarToValue 0x800C, 0x189
    CallIf 1, _00C4
    ScrCmd_029 0x410A, 0x8004
    ScrCmd_343 0, 0x8004
    ScrCmd_02C 1
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7DF
    SetFlag 0x13D
    ScrCmd_034
    ScrCmd_061
    End

_00A4:
    ScrCmd_261 0, 0x410A
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00B4:
    ScrCmd_028 0x8004, 92
    Return

_00BC:
    ScrCmd_028 0x8004, 93
    Return

_00C4:
    ScrCmd_028 0x8004, 94
    Return

_00CC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
