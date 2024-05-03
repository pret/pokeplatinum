    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _002B-.-4
    .long _00E0-.-4
    .long _00E2-.-4
    .short 0xFD13

_0012:
    SetFlag 0x9D7
    CheckFlag 228
    GoToIf 0, _0023
    End

_0023:
    SetVar 0x4091, 0
    End

_002B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0C8 0
    CompareVarToValue 0x4091, 1
    GoToIf 4, _0095
    ScrCmd_0CD 0
    CheckFlag 224
    CallIf 0, _008B
    CheckFlag 224
    CallIf 1, _0090
    ScrCmd_0CD 0
    ScrCmd_04E 0x481
    ScrCmd_02C 1
    ScrCmd_04F
    SetFlag 224
    SetVar 0x4091, 1
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    SetVar 0x403F, 0x264
    ScrCmd_161
    ScrCmd_06D 4, 48
    ScrCmd_061
    End

_008B:
    ScrCmd_02C 0
    Return

_0090:
    ScrCmd_02C 3
    Return

_0095:
    CompareVarToValue 0x40E2, 2
    GoToIf 4, _00C4
    CompareVarToValue 0x40E2, 1
    GoToIf 1, _00BB
    ScrCmd_0CD 0
    ScrCmd_02C 9
    GoTo _00D2

_00BB:
    ScrCmd_02C 10
    GoTo _00D2

_00C4:
    ScrCmd_0CD 0
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00D2:
    AddVar 0x40E2, 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00E0:
    End

_00E2:
    ScrCmd_060
    ScrCmd_162
    ScrCmd_06D 4, 16
    ScrCmd_1BD 0x800C
    CompareVarToValue 0x800C, 2
    GoToIf 1, _0103
    GoTo _011B

_0103:
    ScrCmd_05E 0xFF, _0194
    ScrCmd_05E 4, _01D8
    ScrCmd_05F
    GoTo _0133

_011B:
    ScrCmd_05E 0xFF, _019C
    ScrCmd_05E 4, _01E4
    ScrCmd_05F
    GoTo _0133

_0133:
    ScrCmd_0CD 0
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_1BD 0x800C
    CompareVarToValue 0x800C, 3
    GoToIf 1, _0152
    GoTo _016A

_0152:
    ScrCmd_05E 0xFF, _01A4
    ScrCmd_05E 4, _01F0
    ScrCmd_05F
    GoTo _0182

_016A:
    ScrCmd_05E 0xFF, _01B0
    ScrCmd_05E 4, _0200
    ScrCmd_05F
    GoTo _0182

_0182:
    ScrCmd_065 4
    SetFlag 228
    SetVar 0x4091, 2
    ScrCmd_061
    End

    .balign 4, 0
_0194:
    MoveAction_023
    EndMovement

    .balign 4, 0
_019C:
    MoveAction_020
    EndMovement

    .balign 4, 0
_01A4:
    MoveAction_00C
    MoveAction_021
    EndMovement

    .balign 4, 0
_01B0:
    MoveAction_00F
    MoveAction_022
    EndMovement

    .byte 63
    .byte 0
    .byte 5
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 5
    .byte 0
    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_01D8:
    MoveAction_022
    MoveAction_04B
    EndMovement

    .balign 4, 0
_01E4:
    MoveAction_021
    MoveAction_04B
    EndMovement

    .balign 4, 0
_01F0:
    MoveAction_03F 3
    MoveAction_00E
    MoveAction_021
    EndMovement

    .balign 4, 0
_0200:
    MoveAction_03F 3
    MoveAction_00D
    MoveAction_021
    EndMovement
