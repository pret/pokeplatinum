    .include "macros/scrcmd.inc"

    .data

    .long _003B-.-4
    .long _004E-.-4
    .long _0061-.-4
    .long _00B0-.-4
    .long _00C0-.-4
    .long _001A-.-4
    .short 0xFD13

_001A:
    ScrCmd_069 0x4004, 0x4005
    CompareVarToValue 0x4005, 12
    ScrCmd_01D 4, _0035
    ScrCmd_028 0x4003, 1
    End

_0035:
    SetFlag 0x996
    Return

_003B:
    CheckFlag 0x10B
    ScrCmd_01D 1, _0048
    End

_0048:
    SetFlag 0x222
    Return

_004E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0061:
    ScrCmd_060
    ScrCmd_0C7 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _0091
    ScrCmd_05E 1, _00A0
    ScrCmd_05F
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_05E 0xFF, _00A8
    ScrCmd_05F
    ScrCmd_061
    End

_0091:
    SetFlag 0x996
    ScrCmd_028 0x4002, 1
    ScrCmd_061
    End

    .balign 4, 0
_00A0:
    MoveAction_04B
    EndMovement

    .balign 4, 0
_00A8:
    MoveAction_00C
    EndMovement

_00B0:
    ScrCmd_060
    ClearFlag 0x996
    ScrCmd_028 0x4002, 0
    ScrCmd_061
    End

_00C0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 0x10B
    ScrCmd_01C 1, _0154
    ScrCmd_0CD 0
    ScrCmd_0CF 1
    ScrCmd_14D 0x4000
    CompareVarToValue 0x4000, 0
    ScrCmd_01C 1, _00F0
    GoTo _00F9

_00F0:
    ScrCmd_02C 3
    GoTo _0102

_00F9:
    ScrCmd_02C 4
    GoTo _0102

_0102:
    ScrCmd_120 0x8004
    ScrCmd_0D5 1, 0x8004
    CompareVarToValue 0x8004, 35
    ScrCmd_01C 0, _015F
    ScrCmd_02C 5
    ScrCmd_028 0x8004, 216
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _014A
    SetFlag 0x10B
    ScrCmd_014 0x7E0
    ScrCmd_034
    ScrCmd_061
    End

_014A:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_0154:
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_015F:
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
