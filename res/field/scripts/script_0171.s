    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _0025-.-4
    .long _0038-.-4
    .long _004C-.-4
    .short 0xFD13

_0012:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0025:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0038:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_0CD 0
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_27A
    ScrCmd_061
    End

_004C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_02C 1
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ScrCmd_1BD 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0092
    CompareVar 0x800C, 2
    GoToIf 1, _00AA
    CompareVar 0x800C, 3
    GoToIf 1, _00C2
    End

_0092:
    ApplyMovement 2, _0104
    ApplyMovement 0xFF, _013C
    WaitMovement
    GoTo _00D2

_00AA:
    ApplyMovement 2, _0118
    ApplyMovement 0xFF, _0148
    WaitMovement
    GoTo _00D2

_00C2:
    ApplyMovement 2, _0118
    WaitMovement
    GoTo _00D2

_00D2:
    ScrCmd_168 0, 0, 6, 9, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ApplyMovement 2, _0130
    WaitMovement
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    ScrCmd_065 2
    SetFlag 0x162
    ScrCmd_061
    End

    .balign 4, 0
_0104:
    MoveAction_00F 3
    MoveAction_00D 6
    MoveAction_00E 3
    MoveAction_020
    EndMovement

    .balign 4, 0
_0118:
    MoveAction_00D
    MoveAction_00F 3
    MoveAction_00D 5
    MoveAction_00E 3
    MoveAction_020
    EndMovement

    .balign 4, 0
_0130:
    MoveAction_00C
    MoveAction_045
    EndMovement

    .balign 4, 0
_013C:
    MoveAction_03F
    MoveAction_023
    EndMovement

    .balign 4, 0
_0148:
    MoveAction_03F
    MoveAction_021
    MoveAction_03F
    MoveAction_023
    EndMovement
