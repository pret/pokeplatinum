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
    ScrCmd_01D 0, _0024
    End

_0024:
    ScrCmd_011 0x40F8, 2
    ScrCmd_01C 5, _0035
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
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _005D
    GoTo _009D

_005D:
    ScrCmd_02C 1
    ScrCmd_034
    Call _00A8
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _00C2
    ScrCmd_011 0x8004, 2
    ScrCmd_01D 1, _00DC
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _00F6
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
    ScrCmd_05E 0, _0110
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_05E 0, _011C
    ScrCmd_05F
    Return

_00C2:
    ScrCmd_05E 0xFF, _0124
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_05E 0xFF, _011C
    ScrCmd_05F
    Return

_00DC:
    ScrCmd_05E 0xFF, _0134
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_05E 0xFF, _011C
    ScrCmd_05F
    Return

_00F6:
    ScrCmd_05E 0xFF, _0140
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_05E 0xFF, _011C
    ScrCmd_05F
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
