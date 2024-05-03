    .include "macros/scrcmd.inc"

    .data

    .long _002A-.-4
    .long _00F8-.-4
    .long _010B-.-4
    .long _002C-.-4
    .long _011E-.-4
    .long _015D-.-4
    .long _0070-.-4
    .long _0280-.-4
    .long _0297-.-4
    .long _02AE-.-4
    .short 0xFD13

_002A:
    End

_002C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_05E 13, _0060
    ScrCmd_05F
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_05E 12, _0068
    ScrCmd_05F
    Call _00B6
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_0060:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0068:
    MoveAction_021
    EndMovement

_0070:
    ScrCmd_060
    ScrCmd_05E 13, _00BC
    ScrCmd_05F
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_05E 12, _00C4
    ScrCmd_05F
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_05E 13, _00CC
    ScrCmd_05E 0xFF, _00EC
    ScrCmd_05F
    ScrCmd_05E 12, _00E4
    ScrCmd_05F
    Call _00B6
    ScrCmd_061
    End

_00B6:
    SetFlag 127
    Return

    .balign 4, 0
_00BC:
    MoveAction_023
    EndMovement

    .balign 4, 0
_00C4:
    MoveAction_022
    EndMovement

    .balign 4, 0
_00CC:
    MoveAction_013
    MoveAction_025
    MoveAction_03F 2
    MoveAction_00E
    MoveAction_021
    EndMovement

    .balign 4, 0
_00E4:
    MoveAction_021
    EndMovement

    .balign 4, 0
_00EC:
    MoveAction_00D
    MoveAction_024
    EndMovement

_00F8:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_010B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_011E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 145
    GoToIf 1, _0142
    Call _014D
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0142:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_014D:
    SetFlag 0x1A1
    SetFlag 145
    SetVar 0x4089, 1
    Return

_015D:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8005, 0x293
    GoToIf 1, _01A8
    CompareVarToValue 0x8005, 0x294
    GoToIf 1, _01C2
    CompareVarToValue 0x8005, 0x295
    GoToIf 1, _01DC
    CompareVarToValue 0x8005, 0x296
    GoToIf 1, _01E2
    CompareVarToValue 0x8005, 0x297
    GoToIf 1, _01FC
    End

_01A8:
    ScrCmd_05E 18, _0238
    ScrCmd_05F
    ScrCmd_05E 0xFF, _0228
    ScrCmd_05F
    GoTo _0216

_01C2:
    ScrCmd_05E 18, _024C
    ScrCmd_05F
    ScrCmd_05E 0xFF, _0228
    ScrCmd_05F
    GoTo _0216

_01DC:
    GoTo _0216

_01E2:
    ScrCmd_05E 18, _025C
    ScrCmd_05F
    ScrCmd_05E 0xFF, _0230
    ScrCmd_05F
    GoTo _0216

_01FC:
    ScrCmd_05E 18, _026C
    ScrCmd_05F
    ScrCmd_05E 0xFF, _0230
    ScrCmd_05F
    GoTo _0216

_0216:
    Call _014D
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_0228:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0230:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0238:
    MoveAction_020
    MoveAction_04B
    MoveAction_03F
    MoveAction_00C
    EndMovement

    .balign 4, 0
_024C:
    MoveAction_020
    MoveAction_04B
    MoveAction_03F
    EndMovement

    .balign 4, 0
_025C:
    MoveAction_021
    MoveAction_04B
    MoveAction_03F
    EndMovement

    .balign 4, 0
_026C:
    MoveAction_021
    MoveAction_04B
    MoveAction_03F
    MoveAction_00D
    EndMovement

_0280:
    ScrCmd_036 7, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0297:
    ScrCmd_036 8, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_02AE:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 9, 0x800C
    ScrCmd_014 0x7D0
    End

    .byte 0
