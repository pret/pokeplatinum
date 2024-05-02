    .include "macros/scrcmd.inc"

    .data

    .long _001A-.-4
    .long _004D-.-4
    .long _006A-.-4
    .long _0087-.-4
    .long _048A-.-4
    .long _04C8-.-4
    .short 0xFD13

_001A:
    SetFlag 0x9EB
    SetFlag 0x257
    SetFlag 0x258
    CheckFlag 0xAB6
    GoToIf 0, _0033
    End

_0033:
    ScrCmd_1B7 0x404C, 5
    ScrCmd_026 0x404C, 5
    SetFlag 0xAB6
    ScrCmd_024 0x37C
    ScrCmd_024 0x37D
    End

_004D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_05E 0, _04A8
    ScrCmd_05F
    ScrCmd_061
    End

_006A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_05E 1, _04B0
    ScrCmd_05F
    ScrCmd_061
    End

_0087:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_025 0x37C
    GoToIf 1, _0396
    ScrCmd_025 0x37D
    GoToIf 1, _0396
    ScrCmd_1BD 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _00CB
    CompareVarToValue 0x800C, 1
    GoToIf 1, _00E5
    GoTo _00FF
    End

_00CB:
    ScrCmd_05E 2, _03EC
    ScrCmd_05E 0xFF, _042C
    ScrCmd_05F
    GoTo _00FF
    End

_00E5:
    ScrCmd_05E 2, _03F4
    ScrCmd_05E 0xFF, _043C
    ScrCmd_05F
    GoTo _00FF
    End

_00FF:
    CheckFlag 0x166
    CallIf 0, _045A
    CheckFlag 0x166
    CallIf 1, _0467
    SetFlag 0x166
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _0471
    ScrCmd_023 0x37C
    ScrCmd_023 0x37D
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_05E 2, _03FC
    ScrCmd_05F
    ScrCmd_028 0x404D, 0
    ScrCmd_028 0x8005, 0
    ClearFlag 0x257
    ScrCmd_064 5
    ScrCmd_05E 5, _0420
    ScrCmd_05F
    ScrCmd_02C 15
    ScrCmd_034
    ScrCmd_0E5 0x381, 0
    ScrCmd_0EC 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0484
    ScrCmd_026 0x8005, 0x404D
    ScrCmd_02C 16
    ScrCmd_034
    ScrCmd_05E 5, _0414
    ScrCmd_05F
    ScrCmd_05E 5, _0420
    ScrCmd_05F
    ScrCmd_02C 17
    ScrCmd_034
    ScrCmd_0E5 0x382, 0
    ScrCmd_0EC 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0484
    ScrCmd_026 0x8005, 0x404D
    ScrCmd_02C 18
    ScrCmd_034
    ScrCmd_05E 5, _0414
    ScrCmd_05F
    ScrCmd_05E 5, _0420
    ScrCmd_05F
    ScrCmd_02C 19
    ScrCmd_034
    ScrCmd_0E5 0x383, 0
    ScrCmd_0EC 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0484
    ScrCmd_026 0x8005, 0x404D
    ScrCmd_02C 20
    ScrCmd_034
    ScrCmd_05E 5, _0414
    ScrCmd_05F
    ScrCmd_05E 5, _0420
    ScrCmd_05F
    ScrCmd_02C 21
    ScrCmd_034
    ScrCmd_0E5 0x384, 0
    ScrCmd_0EC 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0484
    ScrCmd_026 0x8005, 0x404D
    ScrCmd_02C 22
    ScrCmd_034
    ScrCmd_05E 5, _0414
    ScrCmd_05F
    ScrCmd_05E 2, _0408
    ScrCmd_05F
    ScrCmd_0D5 0, 0x404C
    ScrCmd_0D5 1, 0x8005
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_05E 2, _03FC
    ScrCmd_05F
    ScrCmd_05E 5, _0420
    ScrCmd_05F
    ScrCmd_02C 23
    ScrCmd_034
    ScrCmd_0E5 0x385, 0
    ScrCmd_0EC 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0484
    ScrCmd_026 0x8005, 0x404D
    ScrCmd_02C 24
    ScrCmd_034
    ScrCmd_05E 5, _0414
    ScrCmd_05F
    ScrCmd_065 5
    ScrCmd_05E 2, _0408
    ScrCmd_05F
    ScrCmd_0D5 0, 0x404C
    ScrCmd_0D5 1, 0x8005
    ScrCmd_02C 7
    CompareVarToVar 0x8005, 0x404C
    GoToIf 5, _044C
    ScrCmd_1B7 0x8006, 2
    CompareVarToValue 0x8006, 0
    CallIf 1, _03A1
    CompareVarToValue 0x8006, 1
    CallIf 1, _03B7
    ScrCmd_034
    ScrCmd_05E 2, _03FC
    ScrCmd_05F
    ClearFlag 0x258
    ScrCmd_064 4
    ScrCmd_05E 4, _0420
    ScrCmd_05F
    CompareVarToValue 0x8006, 0
    CallIf 1, _03CD
    CompareVarToValue 0x8006, 1
    CallIf 1, _03D2
    ScrCmd_034
    ScrCmd_0E5 0x8007, 0
    ScrCmd_0EC 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0484
    ScrCmd_023 0x37C
    ScrCmd_023 0x37D
    CompareVarToValue 0x8006, 0
    CallIf 1, _03D7
    CompareVarToValue 0x8006, 1
    CallIf 1, _03DC
    ScrCmd_034
    ScrCmd_05E 4, _0414
    ScrCmd_05F
    ScrCmd_065 4
    ScrCmd_05E 2, _0408
    ScrCmd_05F
    CompareVarToValue 0x8006, 0
    CallIf 1, _03E1
    CompareVarToValue 0x8006, 1
    CallIf 1, _03E6
    GoTo _0396
    End

_0396:
    ScrCmd_02C 13
    GoTo _047C
    End

_03A1:
    ScrCmd_028 0x8007, 0x37C
    ScrCmd_028 0x4020, 62
    ScrCmd_2F3 2, 0x8007
    ScrCmd_02C 8
    Return

_03B7:
    ScrCmd_028 0x8007, 0x37D
    ScrCmd_028 0x4020, 63
    ScrCmd_2F3 2, 0x8007
    ScrCmd_02C 9
    Return

_03CD:
    ScrCmd_02C 25
    Return

_03D2:
    ScrCmd_02C 27
    Return

_03D7:
    ScrCmd_02C 26
    Return

_03DC:
    ScrCmd_02C 28
    Return

_03E1:
    ScrCmd_02C 10
    Return

_03E6:
    ScrCmd_02C 11
    Return

    .balign 4, 0
_03EC:
    MoveAction_023
    EndMovement

    .balign 4, 0
_03F4:
    MoveAction_023
    EndMovement

    .balign 4, 0
_03FC:
    MoveAction_00C
    MoveAction_021
    EndMovement

    .balign 4, 0
_0408:
    MoveAction_00D
    MoveAction_023
    EndMovement

    .balign 4, 0
_0414:
    MoveAction_022
    MoveAction_045
    EndMovement

    .balign 4, 0
_0420:
    MoveAction_046
    MoveAction_023
    EndMovement

    .balign 4, 0
_042C:
    MoveAction_00F
    MoveAction_00C
    MoveAction_022
    EndMovement

    .balign 4, 0
_043C:
    MoveAction_00F
    MoveAction_00D
    MoveAction_022
    EndMovement

_044C:
    ScrCmd_02C 12
    ScrCmd_02C 13
    GoTo _047C
    End

_045A:
    ScrCmd_02C 2
    ScrCmd_0D5 0, 0x404C
    ScrCmd_02C 3
    Return

_0467:
    ScrCmd_0D5 0, 0x404C
    ScrCmd_02C 3
    Return

_0471:
    ScrCmd_02C 4
    GoTo _047C
    End

_047C:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0484:
    ScrCmd_0EB
    ScrCmd_061
    End

_048A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_05E 3, _04C0
    ScrCmd_05F
    ScrCmd_061
    End

    .balign 4, 0
_04A8:
    MoveAction_001
    EndMovement

    .balign 4, 0
_04B0:
    MoveAction_001
    EndMovement

    .byte 3
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_04C0:
    MoveAction_002
    EndMovement

_04C8:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 29
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
