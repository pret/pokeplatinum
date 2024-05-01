    .include "macros/scrcmd.inc"

    .data

    .long _001A-.-4
    .long _0020-.-4
    .long _008D-.-4
    .long _00B9-.-4
    .long _00E9-.-4
    .long _012C-.-4
    .short 0xFD13

_001A:
    SetFlag 0x9CB
    End

_0020:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02B 9
    ScrCmd_003 30, 0x800C
    ScrCmd_02B 10
    ScrCmd_049 0x5DD
    ScrCmd_003 30, 0x800C
    ScrCmd_02B 11
    ScrCmd_049 0x5DD
    ScrCmd_003 30, 0x800C
    ScrCmd_02B 12
    ScrCmd_049 0x5DD
    ScrCmd_003 30, 0x800C
    ScrCmd_02B 13
    ScrCmd_049 0x643
    ScrCmd_003 30, 0x800C
    ScrCmd_253 0
    ScrCmd_028 0x40F3, 1
    SetFlag 0x995
    ScrCmd_050 0x42D
    ScrCmd_034
    ScrCmd_061
    End

    .byte 83
    .byte 2
    .byte 0
    .byte 0
    .byte 40
    .byte 0
    .byte 243
    .byte 64
    .byte 1
    .byte 0
    .byte 49
    .byte 0
    .byte 52
    .byte 0
    .byte 97
    .byte 0
    .byte 2
    .byte 0

_008D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_049 0x5F1
    ScrCmd_0CD 0
    ScrCmd_02C 5
    ScrCmd_050 0x3EA
    ScrCmd_04E 0x486
    ScrCmd_04F
    ScrCmd_034
    ScrCmd_061
    ScrCmd_028 0x40F3, 1
    Call _01C0
    End

_00B9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 8
    ScrCmd_03E 0x800C
    ScrCmd_034
    CompareVarToValue 0x800C, 0
    GoToIf 1, _00D9
    ScrCmd_061
    End

_00D9:
    ScrCmd_028 0x40F3, 2
    ScrCmd_061
    Call _01C0
    End

_00E9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    Call _0170
    ScrCmd_034
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0114
    ScrCmd_028 0x40F3, 2
    ScrCmd_061
    Call _01C0
    End

_0114:
    ScrCmd_05E 0xFF, _0124
    ScrCmd_05F
    ScrCmd_061
    End

    .balign 4, 0
_0124:
    MoveAction_00C
    EndMovement

_012C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    Call _0170
    ScrCmd_034
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0159
    ScrCmd_028 0x40F3, 2
    ScrCmd_061
    Call _01C0
    End

_0159:
    ScrCmd_05E 0, _0168
    ScrCmd_05F
    ScrCmd_061
    End

    .balign 4, 0
_0168:
    MoveAction_022
    EndMovement

_0170:
    ScrCmd_02C 0
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _01B5
    ScrCmd_14D 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _01A5
    ScrCmd_0CD 0
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_028 0x800C, 0
    Return

_01A5:
    ScrCmd_0CD 0
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_028 0x800C, 0
    Return

_01B5:
    ScrCmd_02C 1
    ScrCmd_028 0x800C, 1
    Return

_01C0:
    ScrCmd_253 1
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x189, 0, 7, 7, 1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    Return

    .byte 0
    .byte 0
