    .include "macros/scrcmd.inc"

    .data

    .long _008D-.-4
    .long _00A0-.-4
    .long _00FA-.-4
    .long _0111-.-4
    .long _013D-.-4
    .long _0150-.-4
    .long _0022-.-4
    .long _0128-.-4
    .short 0xFD13

_0022:
    ScrCmd_1B6 0x4000
    GoToIfEq 0x4000, 0, _0069
    GoToIfEq 0x4000, 1, _007B
    GoToIfEq 0x4000, 2, _007B
    GoToIfEq 0x4000, 3, _007B
    GoToIfEq 0x4000, 4, _007B
    End

_0069:
    ClearFlag 0x273
    ClearFlag 0x275
    SetFlag 0x272
    SetFlag 0x274
    End

_007B:
    ClearFlag 0x272
    ClearFlag 0x274
    SetFlag 0x273
    SetFlag 0x275
    End

_008D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00A0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfSet 205, _00E5
    ScrCmd_02C 1
    SetVar 0x8004, 0x189
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00F0
    ScrCmd_014 0x7FC
    SetFlag 205
    GoTo _00E5

_00E5:
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00F0:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_00FA:
    ScrCmd_036 5, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0111:
    ScrCmd_036 6, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0128:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 7, 0x800C
    ScrCmd_014 0x7D0
    End

_013D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0150:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
