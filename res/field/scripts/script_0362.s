    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _0037-.-4
    .short 0xFD13

_000A:
    SetFlag 0x9E4
    ScrCmd_270 1, 1
    ClearFlag 0x279
    CheckFlag 0x158
    CallIf 0, _0024
    End

_0024:
    CompareVar 0x40F8, 2
    GoToIf 5, _0035
    SetFlag 0x279
_0035:
    Return

_0037:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_1BD 0x8004
    ScrCmd_02C 0
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _005D
    GoTo _009D

_005D:
    ScrCmd_02C 1
    ScrCmd_034
    Call _00A8
    CompareVar 0x8004, 1
    CallIf 1, _00C2
    CompareVar 0x8004, 2
    CallIf 1, _00DC
    CompareVar 0x8004, 0
    CallIf 1, _00F6
    ScrCmd_23D 0, 2, 33, 44, 0x2EE
    ScrCmd_061
    End

_009D:
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00A8:
    ApplyMovement 0, _0110
    WaitMovement
    ScrCmd_049 0x603
    ApplyMovement 0, _011C
    WaitMovement
    Return

_00C2:
    ApplyMovement 0xFF, _0124
    WaitMovement
    ScrCmd_049 0x603
    ApplyMovement 0xFF, _011C
    WaitMovement
    Return

_00DC:
    ApplyMovement 0xFF, _0134
    WaitMovement
    ScrCmd_049 0x603
    ApplyMovement 0xFF, _011C
    WaitMovement
    Return

_00F6:
    ApplyMovement 0xFF, _0140
    WaitMovement
    ScrCmd_049 0x603
    ApplyMovement 0xFF, _011C
    WaitMovement
    Return

    .balign 4, 0
_0110:
    MoveAction_00E
    MoveAction_040
    EndMovement

    .balign 4, 0
_011C:
    MoveAction_045
    EndMovement

    .balign 4, 0
_0124:
    MoveAction_00D
    MoveAction_00E 2
    MoveAction_040
    EndMovement

    .balign 4, 0
_0134:
    MoveAction_00E 2
    MoveAction_040
    EndMovement

    .balign 4, 0
_0140:
    MoveAction_00C
    MoveAction_00E 2
    MoveAction_040
    EndMovement
